# TwinLeaf-OS-Fedora Remix 

**一款開箱即用的桌面環境，探索未來可能的Fedora Remix**

[![License: GPLv3](https://img.shields.io/badge/License-GPLv3-blue.svg?style=flat-square)](https://www.gnu.org/licenses/gpl-3.0)

[![Fedora Remix](https://img.shields.io/badge/Remix%20with-Fedora-294172.svg?style=flat-square&logo=fedora)](https://fedoraproject.org/wiki/Remix)

[![Hyprland](https://img.shields.io/badge/Powered%20by-Hyprland-78a3d4.svg?style=flat-square&logo=hyprland)](https://hypr.land)

**TwinLeaf OS Next- Fedora Remix** 是一套著重**用戶主權**、**私隱保護**、**面向未來**的 “Fedora Remix” 衍生發行版。  

它最初只是博藝工作室為創辦人自己，以及心目中的偶像——守崎二花（nicamoq / にかもきゅ）而手搓的私人系統，靈感源於她從偶像時期到成熟表演者的轉變，象徵「勇於嘗試」與「溫柔平衡」的韌性精神。項目最早以 **Arch Linux** 作為技術探索的起點，追求極致的自訂與最新體驗。

然而，經過 2025 年 12 月的實際開發檢討，我們冷靜地選擇轉向 Fedora Linux 作為基底。

這並非放棄，而是對穩定、健康發展與用戶體驗的負責決定——Fedora 帶來更可靠的更新、更成熟的 ARM 生態，以及更適合家用與遊戲娛樂的平衡，讓有限的時間用在真正有意義的地方。

在這過程中，我們逐漸意識到，或許能以這微薄的一絲力量，推動**計算環保化**、**ARM 普及**、**私隱意識提升**，以及讓更多人（尤其是香港用戶）輕鬆接觸 **Linux** 的小小願景。

TwinLeaf OS Next 不再只是私人系統，而是邀請每個人一起探索的平和家園。

**TwinLeaf OS Next – Fedora Remix** 採用 Hyprland（基於 Wayland 的合成器）深度定制的 TwinLeaf UI，同時完整支援 GNOME 生態應用程式，是 TwinLeaf OS 家族的旗艦版本。它在輕盈與穩定之間尋求平衡，提供熟悉的 Windows 操作邏輯、Kawaii 的溫柔陪伴，以及對未來的開放想像。

# 特色
博藝工作室**TwinLeaf OS-Fedora Remix**特色是：

**用戶主權至上**：TwinLeaf OS 允許用戶自行修改、禁用、審計、剷除系統上的代碼，特別是該系統的Ai功能（人工智能（適用於有NPU功能）/自動化（無NPU配置））

**開箱即用及與時並進**：TwinLeaf OS（僅限Next版）的**TwinLeaf UI**採用Hyprland 合成器，提供流暢、沉浸及現代化的體驗，無需繁瑣命令配置。

**架構動用，面向未來**：同時為x86_64及ARM（AArch64）架構構建，致力成為今天與未來的橋樑。

**靜默私隱防護**：TwinLeaf OS Next 從設計之初就將私隱視為不可妥協的底線。

我們的 AI 助理採用「靜默私隱保護」理念：  
- 沒有喚醒詞，不主動監聽或守候  
- 所有運算優先在本機（本地）進行思考或執行預設操作方法，無需聯網即可回應  
- 用戶可隨時完全移除或停用，無任何隱藏行為  

在系統介面上，我們嚴格把關，確保無隱藏行為記錄收集或強制聯網；

同時借力Fedora 成熟的安全架構（**SELinux**（強制存取控制，防止應用程式越權）、**Firewalld**（動態防火牆，精細管理網路流量）、**Wayland 隔離**（應用程式相互隔離，防止閒置程式偷聽或截圖）等），從系統底層到應用層共同守護您的私隱

**類原子化**：我們的世界必然受到不同類型、原因及程度的風浪，這些風浪帶來的影響，在現在的技術可以減少損失。

我們採用類似原子化的概念，但同時允許用戶根據需要自行改裝部件，也可進行回滾，返回穩定版本或狀態。

# 核心組件

**TwinLeaf UI**：TwinLeaf OS的靈魂介面，採用Hyprland（Wayland系）深度定制，融合熟悉操作邏輯及Fluent Design 現代化設計語言，用戶可根據此設計再改造，甚至完全更改。

# 快速開始

TwinLeaf OS-Fedora Remix現在位於最初發展階段，敬請各位朋友期待；討論區將發表開發狀況供參考之用。

# 社群 

-[百科與詞條-Wiki](https://github.com/gurastudiohk/TwinLeaf-OS-/wiki) – 我們的獨有知識和詞語 Our unique knowledge and vocabulary
- [問題解決-Issues](https://github.com/gurastudiohk/TwinLeaf-OS-/issues) – 在此報告任何漏洞或問題 Report the bug Or Any Issues 
- [討論區-Discussions](https://github.com/gurastudiohk/TwinLeaf-OS-/discussions) – 提出問題並分享想法 Ask questions and share ideas
- [行為準則-Code of Conduct](https://github.com/gurastudiohk/TwinLeaf-OS-/blob/main/CODE_OF_CONDUCT.md) – 與我們一起創建和諧家園的藍圖 A blueprint for building a harmonious home together.

# 貢獻

我們堅信，一個面向未來的項目應由社區共同塑造。歡迎任何方式的奉獻：

**代碼**：利用Pull Request 來修復Bug或添加功能

**文檔**：翻譯、改良TwinLeaf OS 的文檔及其他功能。

**測試與反饋**：將TwinLeaf OS安裝於其他配置的設備（例如原Wintel（Windows+Intel）、ARM、配備Nvidia GPU的設備），並報告運作情況。

**創意及設計**：為UI、圖標或整體體驗提供思路。

# 設計初心和項目起源
這個系統最初是這給作者本人的，也是寫給用行動顯出**勇於嘗試**精神的日本藝人守崎二花（nicamoq）。

從一個為Roblox和相關配套而設的私人的數字家園構想出發，我們逐漸意識到，或許可以用一絲力量去推動一些更廣泛的改變：促進**ARM**計算的**平民化**普及、提升**數碼隱私權**的關注度、探索**更環保**的計算未來。

這，最終塑造了 TwinLeaf OS 的終極定位——**一個為用户而生，與未來同行的操作系統**。

# 挑戰與求助

我們誠坦地面對當前技術挑戰，並歡迎社區共同解決：

**Nvdia顯示卡問題**：TwinLeaf OS 誕生於聯想Lenovo IdeaPad Slim 3 的AMD環境之中，加上沒有獨立顯示卡 （獨顯），我們對獨立顯示卡驅動的經驗不足，極需社群貢獻。

**ARM與外置顯示卡支援**：這是探索前沿，需要更多測試及驅動開發。

**舊款硬件的支援**：我們無法保證2020年代之前電腦能順暢運作。

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
