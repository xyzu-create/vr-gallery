@echo off
echo ========================================
echo    VR Gallery - GitHub 快速發佈腳本
echo ========================================
echo.

REM 檢查 Git 是否已安裝
where git >nul 2>nul
if %errorlevel% neq 0 (
    echo [錯誤] 找不到 Git！
    echo 請先安裝 Git: https://git-scm.com/download/win
    pause
    exit /b 1
)

echo [1/6] 檢查 Git 設定...
git config user.name >nul 2>nul
if %errorlevel% neq 0 (
    echo.
    echo 請設定您的 Git 用戶資訊：
    set /p username="輸入您的名字: "
    set /p email="輸入您的 Email: "
    git config --global user.name "%username%"
    git config --global user.email "%email%"
    echo Git 設定完成！
)

echo [2/6] 初始化 Git repository...
if not exist .git (
    git init
    echo Git repository 已初始化
) else (
    echo Git repository 已存在
)

echo [3/6] 添加所有文件...
git add .
echo 文件已添加

echo [4/6] 提交變更...
git commit -m "Initial commit: VR Gallery with 126 student artworks"
echo 變更已提交

echo.
echo [5/6] 請提供您的 GitHub repository URL
echo 格式: https://github.com/your-username/vr-gallery.git
echo.
set /p repo_url="輸入 repository URL: "

echo.
echo [6/6] 推送到 GitHub...
git remote remove origin >nul 2>nul
git remote add origin %repo_url%
git branch -M main
git push -u origin main

if %errorlevel% equ 0 (
    echo.
    echo ========================================
    echo        發佈成功！ 🎉
    echo ========================================
    echo.
    echo 下一步：
    echo 1. 前往您的 GitHub repository
    echo 2. 點擊 Settings ^> Pages
    echo 3. Source 選擇 "main" branch
    echo 4. 點擊 Save
    echo 5. 等待 1-3 分鐘
    echo 6. 您的網站將會上線！
    echo.
) else (
    echo.
    echo [錯誤] 推送失敗
    echo.
    echo 可能的原因：
    echo 1. Repository URL 錯誤
    echo 2. 沒有權限（需要先在 GitHub 建立 repository）
    echo 3. 網路連線問題
    echo 4. 文件太大（超過 GitHub 限制）
    echo.
    echo 請檢查錯誤訊息後重試
)

echo.
pause
