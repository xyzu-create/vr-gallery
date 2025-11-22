#!/bin/bash

echo "========================================"
echo "   VR Gallery - GitHub 快速發佈腳本"
echo "========================================"
echo ""

# 檢查 Git 是否已安裝
if ! command -v git &> /dev/null; then
    echo "[錯誤] 找不到 Git！"
    echo "請先安裝 Git:"
    echo "  Mac: brew install git"
    echo "  Ubuntu/Debian: sudo apt-get install git"
    exit 1
fi

echo "[1/6] 檢查 Git 設定..."
if ! git config user.name &> /dev/null; then
    echo ""
    echo "請設定您的 Git 用戶資訊："
    read -p "輸入您的名字: " username
    read -p "輸入您的 Email: " email
    git config --global user.name "$username"
    git config --global user.email "$email"
    echo "Git 設定完成！"
fi

echo "[2/6] 初始化 Git repository..."
if [ ! -d .git ]; then
    git init
    echo "Git repository 已初始化"
else
    echo "Git repository 已存在"
fi

echo "[3/6] 添加所有文件..."
git add .
echo "文件已添加"

echo "[4/6] 提交變更..."
git commit -m "Initial commit: VR Gallery with 126 student artworks"
echo "變更已提交"

echo ""
echo "[5/6] 請提供您的 GitHub repository URL"
echo "格式: https://github.com/your-username/vr-gallery.git"
echo ""
read -p "輸入 repository URL: " repo_url

echo ""
echo "[6/6] 推送到 GitHub..."
git remote remove origin 2>/dev/null
git remote add origin "$repo_url"
git branch -M main
git push -u origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "========================================"
    echo "       發佈成功！ 🎉"
    echo "========================================"
    echo ""
    echo "下一步："
    echo "1. 前往您的 GitHub repository"
    echo "2. 點擊 Settings > Pages"
    echo "3. Source 選擇 'main' branch"
    echo "4. 點擊 Save"
    echo "5. 等待 1-3 分鐘"
    echo "6. 您的網站將會上線！"
    echo ""
else
    echo ""
    echo "[錯誤] 推送失敗"
    echo ""
    echo "可能的原因："
    echo "1. Repository URL 錯誤"
    echo "2. 沒有權限（需要先在 GitHub 建立 repository）"
    echo "3. 網路連線問題"
    echo "4. 文件太大（超過 GitHub 限制）"
    echo ""
    echo "請檢查錯誤訊息後重試"
fi

echo ""
read -p "按 Enter 鍵關閉..."
