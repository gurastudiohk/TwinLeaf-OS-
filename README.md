<div align="center">

# 🌱 TwinLeaf OS

*A Linux Desktop Project for nicamoq, Hong Kong, and all — We Are AI PC Ready.*

[![基底](https://img.shields.io/badge/基底-Ubuntu%20LTS-E95420?style=flat-square&logo=ubuntu)](https://ubuntu.com)
[![桌面](https://img.shields.io/badge/桌面-GNOME-4A86CF?style=flat-square&logo=gnome)](https://gnome.org)
[![許可證](https://img.shields.io/badge/許可證-GPLv3-blue?style=flat-square)](LICENSE)
[![港行 AI PC Ready](https://img.shields.io/badge/港行-AI%20PC%20Ready-1E3A8A?style=flat-square)](https://github.com/twinleaf-os)
[![私隱保護](https://img.shields.io/badge/私隱-根源切除-success?style=flat-square)](PRIVACY.md)
[![社群](https://img.shields.io/badge/社群-Stoat.chat-8A2BE2?style=flat-square)](https://stoat.chat/twinleaf)

</div>

---

## 🍃 關於 TwinLeaf OS

TwinLeaf OS 是一個源於香港的 Linux 發行版，它最初只是博藝工作室為創辦人自己，以及心目中的偶像——守崎二花（nicamoq / にかもきゅ）而手搓的私人系統。經過多次技術路線調整，最終選擇以 **標準 Ubuntu Desktop + GNOME** 為基礎，務求在穩定性與日常可用性之間取得平衡。

**我們的定位**：基於 Ubuntu LTS，預設 GNOME 桌面，為香港用戶提供穩定、熟悉的開發與日常使用環境。

---

## 🎯 核心理念

| 理念 | 說明 |
|------|------|
| **尊重** | 根源切除私隱監控，不收集年齡資料，不強制身份認證 |
| **美感** | GNOME 簡約優雅，配合 WACK Shell 等擴展實現 macOS 風格美化 |
| **易用** | 繁體中文開箱即用，Fcitx5 輸入法支援倉頡/速成/拼音 |
| **自由** | 開源透明，用戶可自由修改、學習、分享 |

---

## 💻 硬體定位

| 類型 | 代表機型 | 狀態 |
|------|----------|------|
| **AI PC (2024+)** | Lenovo IdeaPad Slim 3 (R7 8840HS) | ✅ 主力開發平台 |
| **舊筆記本 (2019+)** | Lenovo Yoga (i5-8250U) | ✅ 相容性測試 |
| **極舊設備** | Acer Aspire Z1-622 (N3700) | ✅ Lubuntu 成功運行 |

---

## 🛡️ 實際使用保證

TwinLeaf OS 不僅是測試專案，更是開發團隊的 **日常主力系統**：

- ✅ 在 AMD 主力機上全職運行，用於開發、文書、上網與遊戲
- ✅ 家人已適應，無重大使用障礙
- ✅ 成功在舊硬體上運行（Acer 一體機、Lenovo Yoga）
- ✅ 遊戲娛樂（War Thunder、Roblox）流暢運行

**我們自己先用，才推薦給你。**

---

## 🚀 版本路線

| 版本 | 預設桌面 | 基底 | 狀態 |
|------|----------|------|------|
| **Workstation 26.01 (Sailor Alpha)** | **GNOME** | Ubuntu LTS | 🚧 開發中 |
| **Workstation 27.01** | GNOME | Ubuntu LTS | 📋 規劃中 |
| **Future 版** | KDE / COSMIC | Ubuntu LTS | 📋 可選安裝 |

---

## 📦 主要功能

| 功能 | 說明 |
|------|------|
| **中文輸入** | Fcitx5 開箱即用，支援倉頡、速成、拼音 |
| **容器化應用** | Flatpak 原生支援，確保應用隔離與安全 |
| **電源管理** | 修復 AMD 平台休眠問題（Smart Trace Buffer） |
| **桌面美化** | GNOME + WACK Shell，macOS 風格面板 |
| **安全機制** | 無感保護、強制存取控制（MAC）、開源審查 |

---

## 📥 下載與安裝

> 🚧 **Sailor Alpha 開發中** — 預計 2026 年底發布

### 快速安裝（現有 Ubuntu 用戶）

```bash
# 下載並執行 TwinLeaf 設定腳本
wget -O twinleaf-setup.sh https://raw.githubusercontent.com/twinleaf-os/twinleaf-os/main/twinleaf-setup.sh
chmod +x twinleaf-setup.sh
./twinleaf-setup.sh
```

---
