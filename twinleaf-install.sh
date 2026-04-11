#!/bin/bash、
# TwinLeaf OS 一鍵安裝腳本
# 版本: 1.0 (Sailor Beta)
# 用途: 安裝後自動配置系統、輸入法、藍牙、常用軟體
#
# Copyright (C) 2025-2026 博藝工作室 (Benmak Workshop)
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.
#
# 使用方法:
#   wget -O twinleaf-install.sh https://raw.githubusercontent.com/gurastudiohk/twinleaf-os/main/twinleaf-install.sh
#   chmod +x twinleaf-install.sh
#   ./twinleaf-install.sh

set -e
set -u

# ============================================
# 顏色定義
# ============================================
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

# ============================================
# 日誌函數
# ============================================
log_info() { echo -e "${BLUE}[INFO]${NC} $1"; }
log_success() { echo -e "${GREEN}[SUCCESS]${NC} $1"; }
log_warning() { echo -e "${YELLOW}[WARNING]${NC} $1"; }
log_error() { echo -e "${RED}[ERROR]${NC} $1"; }

# ============================================
# 檢查函數
# ============================================
check_root() {
    if [ "$EUID" -eq 0 ]; then
        log_warning "正在以 root 身份執行，請注意部分操作會影響系統"
    fi
}

# ============================================
# 系統更新函數
# ============================================
system_update() {
    log_info "更新套件列表..."
    sudo apt update

    log_info "升級系統套件..."
    sudo apt upgrade -y

    log_success "系統更新完成"
}

# ============================================
# Fcitx 5 輸入法安裝函數
# ============================================
install_fcitx5() {
    log_info "安裝 Fcitx 5 輸入法..."

    # 安裝核心套件
    sudo apt install -y fcitx5 fcitx5-chinese-addons fcitx5-table-extra
    sudo apt install -y fcitx5-frontend-gtk3 fcitx5-frontend-qt5 fcitx5-configtool

    # 設定環境變數
    cat >> ~/.bashrc << 'EOF'

# Fcitx 5 輸入法環境變數
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
EOF

    # 設定自動啟動
    mkdir -p ~/.config/autostart
    cat > ~/.config/autostart/fcitx5.desktop << 'EOF'
[Desktop Entry]
Type=Application
Name=Fcitx 5
Exec=fcitx5
Hidden=false
NoDisplay=false
X-GNOME-Autostart-enabled=true
EOF

    log_success "Fcitx 5 安裝完成"
    log_info "請重新登入後，按 Ctrl+Space 切換輸入法"
}

# ============================================
# 藍牙設定函數
# ============================================
setup_bluetooth() {
    log_info "設定藍牙檔案傳輸..."

    # 安裝必要套件
    sudo apt install -y bluez bluez-obexd bluedevil

    # 啟用藍牙服務
    sudo systemctl enable bluetooth
    sudo systemctl start bluetooth

    # 啟用 OBEX 服務（用戶層級）
    systemctl --user enable obex
    systemctl --user start obex

    # 確保用戶 linger（登出後服務仍運行）
    sudo loginctl enable-linger $USER

    log_success "藍牙設定完成"
    log_warning "注意：手機傳檔到電腦需先信任設備"
    log_info "執行 'bluetoothctl' → 'trust [手機MAC]' 來信任手機。閣下也可以在你的手機安裝 KDE Connect 手機應用程序，享用更多功能。"
}

# ============================================
# 中文字型安裝函數
# ============================================
install_fonts() {
    log_info "安裝中文字型..."

    sudo apt install -y fonts-noto-cjk fonts-noto-cjk-extra
    sudo apt install -y fonts-wqy-microhei fonts-wqy-zenhei

    log_success "中文字型安裝完成"
}

# ============================================
# KDE 微調函數
# ============================================
setup_kde_tweaks() {
    log_info "套用 KDE 最佳化設定..."

    # 設定香港中文顯示（KDE 無 zh_HK，導向 zh_TW）
    cat | sudo tee /etc/profile.d/kde-locale-hk.sh << 'EOF'
export LC_MESSAGES=zh_TW.UTF-8
export LANGUAGE=zh_HK:zh_TW:zh:en
EOF

    # 啟用 NumLock
    sudo apt install -y numlockx
    mkdir -p ~/.config/autostart
    cat > ~/.config/autostart/numlockx.desktop << 'EOF'
[Desktop Entry]
Type=Application
Name=NumLockX
Exec=numlockx on
Hidden=false
NoDisplay=false
EOF

    log_success "KDE 設定完成"
}

# ============================================
# 軟體安裝函數
# ============================================
install_browsers() {
    log_info "安裝瀏覽器與通訊軟體..."
    sudo apt install -y firefox-esr
    # Flatpak 安裝 Flathub
    sudo apt install -y flatpak
    flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
    log_success "瀏覽器安裝完成"
}

install_office() {
    log_info "安裝辦公軟體..."
    sudo apt install -y libreoffice
    log_success "辦公軟體安裝完成"
}

install_multimedia() {
    log_info "安裝多媒體工具..."
    sudo apt install -y vlc audacity
    log_success "多媒體工具安裝完成"
}

install_devtools() {
    log_info "安裝開發工具..."
    sudo apt install -y git curl wget build-essential
    log_success "開發工具安裝完成"
}

install_software() {
    echo ""
    log_info "選擇要安裝的軟體類別："
    echo "  a) 瀏覽器與通訊"
    echo "  b) 辦公軟體"
    echo "  c) 多媒體工具"
    echo "  d) 開發工具"
    echo "  e) 全部安裝"
    echo "  s) 跳過"
    read -p "請選擇 [a/b/c/d/e/s]: " sw_choice

    case $sw_choice in
        a) install_browsers ;;
        b) install_office ;;
        c) install_multimedia ;;
        d) install_devtools ;;
        e) install_browsers; install_office; install_multimedia; install_devtools ;;
        s) log_info "跳過軟體安裝" ;;
        *) log_warning "無效選擇，跳過安裝" ;;
    esac
}

# ============================================
# 動態桌布安裝函數
# ============================================
setup_dynamic_wallpaper() {
    echo ""
    read -p "是否安裝動態桌布外掛？(y/n): " install_wp
    if [ "$install_wp" = "y" ] || [ "$install_wp" = "Y" ]; then
        log_info "安裝動態桌布外掛..."

        # 透過 Plasma 附加元件安裝
        sudo apt install -y kdeplasma-addons

        log_info "請手動操作："
        echo "  1. 右鍵桌面 → 進入編輯模式 → 新增面板 → 取得新元件 → 下載新 Plasma 元件"
        echo "  2. 搜尋 'Smart Video Wallpaper' 或 'Video Wallpaper'"
        echo "  3. 安裝後，在桌面設定中選擇影片桌布"

        log_success "動態桌布外掛安裝完成"
    else
        log_info "跳過動態桌布安裝"
    fi
}

# ============================================
# 完成訊息函數
# ============================================
show_complete() {
    echo ""
    echo "=========================================="
    log_success "TwinLeaf OS 設定完成！"
    echo "=========================================="
    echo ""
    echo "請重新登入以使所有設定生效。"
    echo ""
    echo "後續步驟："
    echo "  1. 重新登入後，在設定中設定虛擬鍵盤（鍵盤>虛擬鍵盤>選"Fcitx5 Wayland"），然後按 Ctrl+Space 測試輸入法（你或許需要再重新登入）"
    echo "  2. 測試藍牙傳檔（需先信任手機），如有KDE Connect 則配對即可。"
    echo "  3. 探索 KDE 系統設定，調整個人偏好"
    echo ""
    echo "遇到問題？"
    echo "  📖 Wiki: https://github.com/gurastudiohk/TwinLeaf-OS-/wiki "
    echo "  💬 社群: https://stt.gg/G1BdwyVv"
    echo "  🐛 問題回報: https://github.com/gurastudiohk/TwinLeaf-OS-/issues"
    echo ""
    echo "🌱 以尊重為本，讓自由與美感同行。"
    echo ""

    # 提示重新登入
    read -p "是否立即重新登入？(y/n): " reboot_choice
    if [ "$reboot_choice" = "y" ] || [ "$reboot_choice" = "Y" ]; then
        log_info "正在重新登入..."
        pkill -KILL -u $USER
    else
        log_info "請稍後手動重新登入。"
    fi
}

# ============================================
# 安裝模式函數
# ============================================
basic_setup() {
    log_info "開始基礎設定..."
    system_update
    install_fcitx5
    setup_bluetooth
    install_fonts
    setup_kde_tweaks
    show_complete
}

full_install() {
    log_info "開始完整安裝..."
    system_update
    install_fcitx5
    setup_bluetooth
    install_fonts
    setup_kde_tweaks
    install_software
    setup_dynamic_wallpaper
    show_complete
}

# ============================================
# 歡迎與選單函數
# ============================================
show_welcome() {
    echo ""
    echo "=========================================="
    echo "   TwinLeaf OS 一鍵安裝腳本"
    echo "   版本: Sailor Beta 2026"
    echo "=========================================="
    echo ""
    echo "本腳本將為你設定："
    echo "  📦 系統更新"
    echo "  ⌨️  中文輸入法 (Fcitx 5 + 倉頡/速成)"
    echo "  📱 藍牙檔案傳輸 (OBEX)"
    echo "  🔧 常用軟體 (可選)"
    echo "  🎨 KDE 動態桌布 (可選)"
    echo ""
}

show_menu() {
    echo "請選擇安裝模式："
    echo "  1) 完整安裝（推薦）"
    echo "  2) 僅系統設定（輸入法 + 藍牙）"
    echo "  3) 僅安裝常用軟體"
    echo "  4) 退出"
    echo ""
    read -p "請輸入選擇 [1-4]: " choice
    case $choice in
        1) full_install ;;
        2) basic_setup ;;
        3) install_software ;;
        4) exit 0 ;;
        *) log_error "無效選擇"; show_menu ;;
    esac
}

# ============================================
# 主程式入口
# ============================================
main() {
    check_root
    show_welcome
    show_menu
}

# 執行主程式
main "$@"
