---
name: 問題與漏洞報告 Bug report
about: 報告漏洞或問題可幫助你和其他用戶 Reporting bugs or issues can help you and other users.
title: ''
labels: 系統漏洞bug
assignees: ''

---

---
name: Bug Report
about: 回報系統中的錯誤或異常行為
title: '[Bug] '
labels: bug, triage
---

**感謝您花時間回報問題！**  
請盡量填寫以下資訊，這能幫助我們更快定位並修復問題。  
ふーちゃん也在這裡靜靜等待您的描述喔♪

**Thank you for taking the time to report an issue!**  
Please fill in as much information as possible to help us resolve it faster.

### 問題主旨（Problem Summary）
請用簡短句子描述問題（這會成為 Issue 標題）  
例如：Waybar 在切換工作區時崩潰

### 環境資訊（Environment）

**系統版本（必填 / Required）**  
例如：TwinLeaf OS Next – Fedora Remix 43 (Hyprland Edition)

**硬件（可選 / Optional）**  
如果您認為與硬體相關，請說明（如 CPU、GPU、RAM）。  
若無必要可留空，我們有需要時會再聯絡您。  
例如：Intel i5-12400H + RTX 3050 + 16GB RAM

**網絡環境（可選 / Optional）**  
若問題與網路相關，請描述；否則可留空。  
例如：家用 Wi-Fi，速度 500Mbps

### 重現步驟（Steps to Reproduce）
請一步一步說明如何觸發問題（越詳細越好）  
例如：  
1. 開機進入桌面  
2. 按 Super + 數字切換工作區  
3. Waybar 消失並顯示錯誤訊息

### 預期行為（Expected Behavior）
您預期會發生什麼？  
例如：Waybar 應該正常顯示所有工作區圖標，並順利切換

### 實際行為（Actual Behavior）
實際發生了什麼？（可附上錯誤訊息、截圖連結）  
例如：Waybar 直接消失，終端顯示 "segmentation fault"

### 額外資訊（Additional Information）
任何其他有幫助的資訊（日誌、截圖、相關配置等）  
例如：  
- `journalctl -b -p err` 輸出：（貼上內容）  
- 截圖連結：https://imgur.com/xxxx

感謝您的回報！我們會盡快處理。  
Thank you — we’ll look into this as soon as possible ♪
