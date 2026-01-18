# TwinLeaf OS Next – Fedora Remix

**可能是更適合你的 Fedora Remix**

[![License: GPLv3](https://img.shields.io/badge/License-GPLv3-blue.svg?style=flat-square)](https://www.gnu.org/licenses/gpl-3.0)
[![Fedora Remix](https://img.shields.io/badge/Remix%20with-Fedora-294172.svg?style=flat-square&logo=fedora)](https://fedoraproject.org/wiki/Remix)

**TwinLeaf OS Next** 是一套著重**用戶主權**、**靜默私隱**、**面向未來**與**類原子化**的 Fedora Remix 衍生發行版。

它最初只是博藝工作室為創辦人自己，以及心目中的偶像——守崎二花（nicamoq / にかもきゅ）而手搓的私人系統，靈感源於她從可愛偶像時期到成熟表演者的轉變，象徵「勇於嘗試」與「溫柔平衡」的韌性精神。

最初以 Arch Linux + Hyprland 探索極致自訂，後來經實際開發檢討，我們於 2025 年 12 月轉向 Fedora 作為基底，並以 Fedora Remix 身份延續至今。這不是放棄，而是對穩定、健康發展與用戶體驗的負責選擇。

我們的目標很簡單：  
希望為有意更換 Windows 的用戶，提供**多一種選擇**——一個溫柔、穩定、真正屬於自己的數字家園。

## 特色

- **用戶主權至上**  
  一切功能皆可自由安裝、修改、禁用或移除。系統助理（適用於有 NPU 的 AI，或無 NPU 的自動化）完全可移除，無任何隱藏行為。

- **靜默私隱防護**  
  AI 助理採用「靜默私隱保護」理念：無喚醒詞、不主動監聽、優先本地運算，用戶可隨時移除。  
  同時借力 Fedora 成熟安全架構（SELinux 強制存取控制、Firewalld 動態防火牆、Wayland 應用隔離等），從底層守護您的私隱。

- **類原子化**（我們的創新嘗試）  
  我們借鑒原子化系統的穩定與回滾能力，但不強制不可變根系統。  
  用戶可自由修改內核、驅動或核心組件，同時透過 btrfs snapshots + Timeshift 實現一鍵回滾——這是坊間「不可能成立」的平衡：穩定如原子化，自由如傳統系統。

- **開箱即用與面向未來**  
  桌面環境基於 COSMIC（Rust 語言、Wayland 原生）深度改造，提供流暢、現代化的體驗。同時支援 x86_64 與 ARM（AArch64），成為今天與未來的橋樑。

## 核心組件

**TwinLeaf UI**：TwinLeaf OS 的靈魂介面，以 COSMIC 為基礎再改造，融合熟悉的操作邏輯與現代 Fluent Design 語言。  
用戶可根據此設計再改造，甚至完全更換桌面環境。

## 快速開始

TwinLeaf OS Next 目前仍處於早期開發階段，敬請期待。  
我們會在討論區（Discussions）持續分享開發進度與測試版本。

## 社群

- [百科與詞條 - Wiki](https://github.com/gurastudiohk/TwinLeaf-OS-/wiki) – 我們的獨有知識與詞語
- [問題回報 - Issues](https://github.com/gurastudiohk/TwinLeaf-OS-/issues) – 回報 bug 或提出建議
- [討論區 - Discussions](https://github.com/gurastudiohk/TwinLeaf-OS-/discussions) – 提問、分享想法
- [行為準則 - Code of Conduct](https://github.com/gurastudiohk/TwinLeaf-OS-/blob/main/CODE_OF_CONDUCT.md) – 一起創建和諧家園的藍圖

## 貢獻

我們深信，一個面向未來的項目應由社區共同塑造。  
歡迎任何形式的奉獻：

- **代碼**：透過 Pull Request 修復 bug 或添加功能
- **文檔**：翻譯、改良說明文件
- **測試與反饋**：在不同設備（Wintel、ARM、NVIDIA GPU）安裝並回報體驗
- **創意與設計**：為 UI、圖標或整體體驗提供想法

## 設計初心與項目起源

這個系統最初是寫給作者本人的，也是寫給用行動顯出「勇於嘗試」精神的日本藝人守崎二花（nicamoq）。

從一個為 Roblox 創作而設的私人數字家園出發，我們逐漸意識到，或許可以用一絲力量推動更廣泛的改變：促進 ARM 計算的平民化、提升數碼隱私意識、探索更環保的計算未來。

這最終塑造了 TwinLeaf OS 的定位——**一個為用戶而生，與未來同行的操作系統**。

# 許可證

TwinLeaf OS是一個採用**混合開源許可證**的項目。

除非組件目錄另有明確聲明，否則本項目默認採用**GNU General Public License V3.0**（GPLv3）進行許可。

部份工具、倉庫等組件可能使用**MIT**等寬鬆的許可證，詳情請參閱該組件目錄下的LICENSE以了解詳情。

# 多謝支持TwinLeaf OS 🌱

我們堅信，系統是屬於用戶，並不是屬於系統，這就是我們其中的出發點。

我們標誌及品牌正在慢慢地構建，歡迎您與我們一起創造出來。

**博藝工作室**的社交網站：

Instagram: benmakworkshop 

YouTube: 博藝工作室 Benmak Workshop

對外電郵： benmakworkshop@gmail.com
