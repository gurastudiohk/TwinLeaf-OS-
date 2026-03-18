<div align="center">

# 🌱TwinLeaf OS


**給你的溫柔 Linux 選擇——尊重 · 美感 · 易用 · 自由**

[![最新版本](https://img.shields.io/badge/版本-Sailor%20Beta%202026-blue?style=flat-square)](https://github.com/twinleaf-os)
[![基底](https://img.shields.io/badge/基底-Debian%20Testing-CC0033?style=flat-square&logo=debian)](https://www.debian.org)
[![桌面環境](https://img.shields.io/badge/桌面-KDE%20Plasma%206-1ABC9C?style=flat-square&logo=kde)](https://kde.org)
[![許可證](https://img.shields.io/badge/許可證-GPLv3%20|%20MIT%20|%20CC--BY--SA%204.0-blue?style=flat-square)](LICENSE)
[![私隱保護](https://img.shields.io/badge/私隱-根源切除%20|%20默認安全-success?style=flat-square)](PRIVACY.md)
[![硬體支援](https://img.shields.io/badge/硬體-AMD%20|%20Intel%20全系列-orange?style=flat-square)](#-硬體支援)
[![社群](https://img.shields.io/badge/社群-Stoat.chat-8A2BE2?style=flat-square)](https://stoat.chat/twinleaf)

</div>

---

## 🌱 關於 TwinLeaf OS

TwinLeaf OS 是一個正在發展中的 Linux 發行版項目，由香港 **博藝工作室（Benmak Workshop）** 一人獨立開發。

靈感來自日本藝人 **守崎二花（nicamoq）**——她從普通網民出發，穿著水手服勇敢嘗試，最終成為 BPM15Q 的一員，走向成熟表演者。這一路徑，正是 TwinLeaf OS 想傳遞的精神：

> **勇於嘗試，溫柔平衡，在尊重中成長。**

---

## 🍃 核心理念

<div align="center">

| 尊重 | 美感 | 易用 | 自由 |
|:----:|:----:|:----:|:----:|
| 🤝 | 🎨 | ✨ | 🕊️ |

</div>

| 理念 | 體現 |
|------|------|
| **尊重** | 尊重你的私隱、你的選擇、你的電腦——不收集任何個人資料，不強制年齡認證，不干涉你的使用方式。你的身份證，只屬於你自己。 |
| **美感** | 從 nicamoq 的「自拍美少女時期」汲取靈感，系統介面追求簡約、清爽、溫柔的視覺體驗。KDE Plasma 6 的優雅，搭配精心挑選的主題，讓每一次使用都是愉悅。 |
| **易用** | Linux 不應是少數人的玩具。繁體中文開箱即用，藍牙檔案傳輸不再「只會當音響」，一鍵安裝腳本讓軟體設定不再是障礙。 |
| **自由** | 真正的自由，是選擇的自由——選擇何時更新、選擇用什麼軟體、選擇是否參與社群。我們不綁架你的系統，也不綁架你的時間。 |

---

## 🛡️ 隱私政策——根源切除，默認安全

**我們深信，隱私是數碼年代的基本人權。**  
因此，TwinLeaf OS 從設計源頭就**徹底切除一切侵犯用戶隱私的功能**。

這不是透過開關選項來「關閉」監控，而是**在架構層面讓監控根本不存在**：

| 層面 | 傳統做法 | TwinLeaf OS 做法 |
|------|----------|------------------|
| **遙測功能** | 預設開啟，可關閉 | **從程式碼移除**，不存在 |
| **行為數據收集** | 預設收集，可停用 | **無任何收集程式碼** |
| **個人化廣告** | 需手動拒絕 | **系統根本無此設計** |
| **雲端強制整合** | 預設聯網，可斷開 | **可選、可控、可完全隔離** |

**您的使用痕跡，如風過無痕——因為系統從未被設計來記錄風的方向。**

我們不偷看，我們直接問。  
有任何問題，歡迎在社群告訴我們。

---

## 💻 硬體支援

**TwinLeaf OS 完整支援所有 Intel 與 AMD 產品**——無論是內顯還是獨顯，無論是舊機還是新機：

| 品牌 | 類型 | 支援狀況 |
|------|------|----------|
| **Intel** | 內顯（UHD、Iris Xe） | ✅ 完整支援（Mesa 驅動） |
| **Intel** | 獨顯（Arc A 系列、Arc B 系列） | ✅ 完整支援 |
| **AMD** | 內顯（Vega、RDNA 系列） | ✅ 完整支援 |
| **AMD** | 獨顯（Radeon RX 系列） | ✅ 完整支援 |
| **NVIDIA** | 獨顯 | ⚠️ 有限支援（建議 AMD/Intel） |

我們的工程機（2019 聯想 Yoga，i5-8250U + 8GB RAM）持續測試，確保系統能在你的常用電腦上順暢運行，尤其是較舊款式的電腦。

---

## 🚧 生產線架構

```

TwinLeaf OS
├── Workstation 版 (半滾動更新)
│    ├── 基底：Debian Testing
│    ├── 桌面：KDE Plasma 6
│    ├── 目標：日常使用、文書處理、遊戲等
│    └── 適合：想擺脫 Windows 綁架的一般用戶
│
└── Future 版 (技術探索，全滾動更新)
├── 基底：Arch Linux
├── 桌面：Hyprland / Niri
├── 目標：最新 Wayland 技術、Rust 生態探索
└── 適合：開發者、技術愛好者、願意偶爾除錯者

```

---

## 🌊 Workstation "Sailor" 版

**水手服，是起點，是純真，也是勇氣的象徵。**

2013 年，一位穿著水手服的普通網民開始在網上活動。她不是虛擬偶像，而是真實存在的人——後來成為 nicamoq，成為 BPM15Q 的一員，從可愛偶像走向成熟表演者。

Sailor 版 TwinLeaf OS，就是這樣的起點：

- 像水手服一樣，**輕盈、純真、敢於嘗試**
- 從 Debian Testing 出發，**走向未來的穩定**
- 邀請你一起測試、反饋，**共同成長**

### 核心特色

| 特色 | 說明 |
|------|------|
| **基於 Debian Testing** | 穩定與新套件的平衡 |
| **完整 AMD/Intel 支援** | Mesa 驅動開箱即用 |
| **藍牙檔案傳輸修復** | 手機 ↔ 電腦傳檔無障礙 |
| **KDE Plasma 6 桌面** | 美觀、流暢、可自訂 |
| **繁體中文（香港）** | 倉頡/速成/拼音開箱即用 |

---

## 🔮 Future 版

**擁抱未來，探索可能。**

Future 版是 TwinLeaf OS 的技術試驗場，永遠走在前面，但不保證穩定：

- 基底：**Arch Linux**（滾動更新）
- 內核：**linux-zen / CachyOS**
- 桌面：**Hyprland / Niri**（Wayland 原生）
- 適合：開發者、技術愛好者、願意偶爾除錯者

Future 版的經驗，將反哺到 Sailor 版，讓穩定與創新並行。

---
貢獻方法

歡迎任何形式的參與：
- Pull Request：代碼、主題、美化、文檔
- Issues：回報 bug、提建議
- 測試：不同硬體安裝並分享體驗（例如：Intel+Nvdia/SteamDeck系（或掌機電腦）/單版電腦（如樹莓派、香橙派、nvidia jetson）等）

---

🌱 關於我們

TwinLeaf OS 由香港 博藝工作室（Benmak Workshop） 一人獨立開發。靈感來自日本藝人 守崎二花（nicamoq）——她的真實軌跡告訴我們：

偶像不應被經紀脅迫，私生活不應被跟蹤。
真正的偶像，是在尊重中成長，在自由中綻放。

TwinLeaf OS 想傳遞的，正是這種精神：

· 尊重你的私隱與選擇
· 美感來自真實而非包裝
· 易用讓科技回歸人性
· 自由讓每個人保有獨立思考的權利

你的電腦，只屬於你。
願每一次啟航，都帶著溫柔的勇氣。

---

<div align="center">

🌱 以溫柔之心，種下自由的種子。

</div>
