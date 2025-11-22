# 🎨 學生作品線上 VR 藝廊

> 使用 WebVR 技術打造的沉浸式線上藝廊，展示 126 件學生得獎作品

[![GitHub Pages](https://img.shields.io/badge/GitHub-Pages-blue)](https://your-username.github.io/vr-gallery/)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

## 🌟 特色功能

- 🥽 **VR 模式**：支援 VR 頭戴裝置的沉浸式體驗
- 🖼️ **3D 藝廊**：圓形畫廊設計，360度環景展示
- 💬 **留言互動**：觀眾可針對每件作品留言回饋
- 🎮 **流暢操作**：滑鼠、鍵盤、觸控螢幕全支援
- 📱 **跨平台**：桌面、手機、平板、VR 裝置皆可使用
- ⚡ **無需安裝**：直接在瀏覽器開啟即可體驗

## 🚀 線上體驗

立即體驗：**[https://your-username.github.io/vr-gallery/](https://your-username.github.io/vr-gallery/)**

### 快速開始

1. 點擊上方連結開啟藝廊
2. 使用滑鼠拖曳環視四周
3. 使用 WASD 或方向鍵移動
4. 點擊作品進行聚焦查看
5. 點擊右側「留言板」分享您的想法

### VR 模式

如果您有 VR 頭戴裝置：
1. 點擊畫面下方的「🥽 進入VR模式」按鈕
2. 戴上 VR 裝置
3. 享受完整的沉浸式體驗

## 📸 預覽

### 藝廊空間
![VR Gallery Preview](https://via.placeholder.com/800x400/1a1a2e/4CAF50?text=VR+Gallery+Space)

### 作品展示
![Artwork Display](https://via.placeholder.com/800x400/16213e/4CAF50?text=Artwork+Display)

### 留言互動
![Comment System](https://via.placeholder.com/800x400/0f3460/4CAF50?text=Comment+System)

## 🎨 展示作品

本藝廊收錄了 126 件學生得獎作品：

| 主題 | 組別 | 作品數 |
|------|------|--------|
| 主題一 | 中年級 | 21 件 |
| 主題一 | 高年級 | 21 件 |
| 主題一 | 國中組 | 21 件 |
| 主題二 | 中年級 | 21 件 |
| 主題二 | 高年級 | 21 件 |
| 主題二 | 國中組 | 21 件 |

## 🛠️ 技術架構

- **WebVR 框架**：[A-Frame 1.4.2](https://aframe.io/)
- **3D 引擎**：Three.js (內建於 A-Frame)
- **前端技術**：HTML5, CSS3, JavaScript (ES6+)
- **儲存方案**：LocalStorage API
- **託管平台**：GitHub Pages
- **標準支援**：WebXR, WebGL

## 💻 本地開發

如果您想在本地運行或開發：

### 需求
- Python 3.x 或 Node.js
- 現代瀏覽器（Chrome, Firefox, Safari, Edge）

### 安裝步驟

```bash
# 1. Clone repository
git clone https://github.com/your-username/vr-gallery.git
cd vr-gallery

# 2. 啟動本地伺服器
# 方法 A: 使用 Python
python -m http.server 8000

# 方法 B: 使用 Node.js
npx http-server -p 8000

# 3. 開啟瀏覽器
# 訪問 http://localhost:8000
```

### 專案結構

```
vr-gallery/
├── index.html              # 主程式文件
├── test-diagnosis.html     # 診斷工具
├── README.md              # 本文件
└── gallery_images/        # 作品圖片資料夾
    ├── artwork_*.png      # 126 張作品圖片
    └── image_info.json    # 作品資訊
```

## 🎮 操作指南

### 桌面操作
- **環視**：按住滑鼠左鍵拖曳
- **移動**：W（前）S（後）A（左）D（右）或方向鍵
- **聚焦作品**：點擊任一作品
- **快速導航**：使用底部的「上一件」「下一件」按鈕
- **VR 模式**：點擊「進入VR模式」按鈕

### 手機/平板操作
- **環視**：手指滑動螢幕
- **移動**：使用虛擬搖桿（自動顯示）
- **聚焦作品**：點擊作品
- **陀螺儀模式**：轉動裝置來環視

### 留言功能
1. 點擊右側「留言板」按鈕
2. 輸入您的名字和留言內容
3. 點擊「送出留言」
4. 留言會關聯到當前查看的作品

## 📱 瀏覽器支援

### 完整支援
- ✅ Chrome 90+
- ✅ Firefox 88+
- ✅ Safari 14+
- ✅ Edge 90+

### VR 模式支援
- ✅ Chrome (with WebXR enabled)
- ✅ Firefox Reality
- ✅ Oculus Browser
- ⚠️ Safari (limited WebXR support)

## 🤝 貢獻

歡迎貢獻！如果您想改進這個專案：

1. Fork 這個 repository
2. 創建您的功能分支 (`git checkout -b feature/AmazingFeature`)
3. 提交您的變更 (`git commit -m 'Add some AmazingFeature'`)
4. Push 到分支 (`git push origin feature/AmazingFeature`)
5. 開啟一個 Pull Request

## 📋 待辦事項

- [ ] 新增搜尋功能
- [ ] 支援多語言介面
- [ ] 整合後端資料庫
- [ ] 新增音效和背景音樂
- [ ] 作品投票系統
- [ ] 社群分享功能
- [ ] 優化手機體驗
- [ ] AR 擴增實境模式

## 🐛 問題回報

如果您發現任何問題，請：
1. 檢查 [Issues](https://github.com/your-username/vr-gallery/issues) 是否已有相同問題
2. 如果沒有，請[建立新的 Issue](https://github.com/your-username/vr-gallery/issues/new)

## 📄 授權

本專案採用 MIT 授權 - 詳見 [LICENSE](LICENSE) 文件

## 👏 致謝

- [A-Frame](https://aframe.io/) - 優秀的 WebVR 框架
- [Three.js](https://threejs.org/) - 強大的 3D 圖形庫
- GitHub Pages - 免費的網站託管服務
- 所有創作這些精彩作品的學生們

## 📞 聯絡方式

- **專案網址**：https://your-username.github.io/vr-gallery/
- **GitHub**：https://github.com/your-username/vr-gallery
- **Issues**：https://github.com/your-username/vr-gallery/issues

## 🌟 Star History

如果這個專案對您有幫助，請給個 ⭐️ Star！

---

**製作日期**：2025 年 11 月  
**作品數量**：126 件學生得獎作品  
**技術支援**：A-Frame WebVR Framework  

---

Made with ❤️ for education and art appreciation
