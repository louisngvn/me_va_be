#!/bin/bash

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${BLUE}"
echo "🚀 ========================================"
echo "   VI CHẤT CHO MẸ VÀ BÉ - QUICK UPDATE"
echo "========================================"
echo -e "${NC}"

# Check if we're in a git repository
if ! git status &>/dev/null; then
    echo -e "${RED}❌ Lỗi: Không phải thư mục Git repository${NC}"
    echo -e "${YELLOW}💡 Hãy chạy: git clone https://github.com/louisngvn/me_va_be.git${NC}"
    exit 1
fi

echo -e "${BLUE}📁 Checking changes...${NC}"
if ! git status --porcelain &>/dev/null; then
    echo -e "${RED}❌ Lỗi khi kiểm tra thay đổi${NC}"
    exit 1
fi

echo -e "${YELLOW}📝 Các file đã thay đổi:${NC}"
git status --short

echo
read -p "📝 Mô tả thay đổi (Enter = 'Update website'): " message
message=${message:-"Update website"}

echo -e "${BLUE}⬆️  Đang upload lên GitHub...${NC}"
git add .
if git commit -m "$message"; then
    if git push origin main; then
        echo -e "${GREEN}"
        echo "✅ ========================================"
        echo "   CẬP NHẬT THÀNH CÔNG!"
        echo "========================================"
        echo -e "${NC}"
        echo -e "${BLUE}🌐 GitHub Pages:${NC} https://louisngvn.github.io/me_va_be/"
        echo -e "${YELLOW}⏱️  Website sẽ cập nhật trong 1-2 phút${NC}"
        echo -e "${BLUE}📊 Actions:${NC} https://github.com/louisngvn/me_va_be/actions"
    else
        echo -e "${RED}❌ Lỗi khi push lên GitHub${NC}"
        exit 1
    fi
else
    echo -e "${YELLOW}⚠️  Không có thay đổi gì để commit${NC}"
fi

echo