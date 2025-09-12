@echo off
chcp 65001 > nul
echo.
echo 🚀 ========================================
echo    VI CHẤT CHO MẸ VÀ BÉ - QUICK UPDATE
echo ========================================
echo.

REM Check if we're in a git repository
git status > nul 2>&1
if errorlevel 1 (
    echo ❌ Lỗi: Không phải thư mục Git repository
    echo 💡 Hãy chạy: git clone https://github.com/louisngvn/me_va_be.git
    pause
    exit /b 1
)

echo 📁 Checking changes...
git status --porcelain
if errorlevel 1 (
    echo ❌ Lỗi khi kiểm tra thay đổi
    pause
    exit /b 1
)

echo.
echo 📝 Các file đã thay đổi:
git status --short

echo.
set /p message="📝 Mô tả thay đổi (Enter = 'Update website'): "
if "%message%"=="" set message=Update website

echo.
echo ⬆️  Đang upload lên GitHub...
git add .
git commit -m "%message%"
if errorlevel 1 (
    echo ⚠️  Không có thay đổi gì để commit
) else (
    git push origin main
    if errorlevel 1 (
        echo ❌ Lỗi khi push lên GitHub
        pause
        exit /b 1
    )
)

echo.
echo ✅ ========================================
echo    CẬP NHẬT THÀNH CÔNG!
echo ========================================
echo.
echo 🌐 GitHub Pages: https://louisngvn.github.io/me_va_be/
echo ⏱️  Website sẽ cập nhật trong 1-2 phút
echo 📊 Actions: https://github.com/louisngvn/me_va_be/actions
echo.
pause