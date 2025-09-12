# Vi Chất Cho Mẹ và Bé - Website So Sánh Vitamin & Dinh Dưỡng

## 🎯 Tổng Quan Dự Án

Website so sánh vitamin và dinh dưỡng chuyên sâu cho mẹ và bé tại Việt Nam với giao diện hiện đại, tính năng tìm kiếm thông minh và công cụ so sánh trực quan.

## ✨ Tính Năng Đã Hoàn Thành

### 🏠 **Trang Chủ (index.html)**
- **Danh mục**: Hỗ trợ Xương, Răng & Chiều cao
- **Sản phẩm**: 5+ sản phẩm Vitamin D3K2 từ các thương hiệu uy tín
- **Bộ lọc thông minh**: Nguồn gốc D3, hàm lượng K2, xuất xứ, hàm lượng D3
- **So sánh**: Liều dùng, chi phí/ngày, hàm lượng K2

### 🧠 **Não bộ & Thị lực (nao-bo.html)**
- **Danh mục**: Hỗ trợ Phát triển Não bộ & Thị lực
- **Sản phẩm**: 6+ sản phẩm DHA, Omega-3 cho trẻ em và mẹ bầu
- **Bộ lọc**: Hàm lượng DHA, nguồn gốc Omega-3, nhóm tuổi
- **So sánh**: Liều dùng, chi phí/ngày, hàm lượng DHA

### ❤️ **Đề kháng & Tiêu hóa (de-khang.html)**
- **Danh mục**: Tăng cường Sức đề kháng & Tiêu hóa
- **Sản phẩm**: 8+ sản phẩm Vitamin C, Kẽm, Probiotics
- **Bộ lọc**: Hàm lượng Vitamin C, Kẽm, có/không Probiotics
- **So sánh**: Liều dùng, chi phí/ngày, Vitamin C, Kẽm

### 👩‍👶 **Phụ nữ & Thai kỳ (me-va-be.html)**
- **Danh mục**: Hỗ trợ Phụ nữ & Thai kỳ
- **Sản phẩm**: 7+ sản phẩm Sắt, Axit Folic cho mẹ bầu
- **Bộ lọc**: Đối tượng sử dụng, hàm lượng Sắt/Folic, loại sản phẩm
- **So sánh**: Liều dùng, chi phí/ngày, Sắt, Axit Folic

### 👨‍⚕️ **Chuyên gia (expert.html)**
- **Đội ngũ chuyên gia**: 3 chuyên gia dinh dưỡng với hồ sơ chi tiết
- **Hướng dẫn theo tuổi**: 0-12 tháng, 1-3 tuổi, 3-12 tuổi, mẹ bầu & cho con bú
- **Lưu ý an toàn**: 6 nguyên tắc quan trọng khi sử dụng vitamin
- **Form tư vấn miễn phí**: Thu thập thông tin và phản hồi trong 24h

## 🛠️ Công Nghệ Sử Dụng

- **Frontend**: HTML5, CSS3, JavaScript ES6+
- **Framework CSS**: Tailwind CSS (qua CDN)
- **Font**: Inter từ Google Fonts
- **Responsive**: Mobile-first design
- **Animation**: CSS animations, glass morphism effects
- **Icons**: SVG icons inline

## 🎨 Thiết Kế & UX/UI

### **Màu Sắc Chủ Đạo**
- **Xương & Răng**: Gradient vàng amber (#d4a574 → #f4a460)
- **Não bộ**: Gradient xanh dương (#6366f1 → #3730a3)  
- **Đề kháng**: Gradient đỏ hồng (#ec4899 → #b91c1c)
- **Phụ nữ & Thai kỳ**: Gradient tím hồng (#a855f7 → #fb7185)
- **Chuyên gia**: Gradient xanh lá (#10b981 → #064e3b)

### **Tính Năng UX**
- Glass morphism effects với backdrop blur
- **Flip cards chuẩn hóa** cho tất cả danh mục sản phẩm
- **Hệ thống Affiliate Link** tích hợp cho kiếm tiền
- Smooth scrolling và animations
- Responsive design cho mobile/tablet/desktop
- Loading states và transitions mượt mà

### **Hệ Thống Affiliate & Monetization** 💰
- **"💰 Mua ngay"**: Link affiliate cho kiếm tiền (commission)
- **"Tới trang SP"**: Link website chính thức của sản phẩm
- **Quản lý tập trung**: Affiliate URLs được quản lý riêng cho từng danh mục
- **Tool quản lý**: `tools/affiliate-manager.html` để dễ dàng thêm/sửa link affiliate
- **Fallback system**: Tự động dùng product_url nếu chưa có affiliate link

## 📊 Cấu Trúc Dữ Liệu

### **Sản phẩm (Products)**
```javascript
{
  id: number,
  category: string,
  name: string,
  brand: string,
  image: string,
  price: number,
  volume_ml: number,
  total_doses_per_bottle: number,
  origin: { country: string, continent: string },
  form: string,
  declared_dose: { /* thành phần dinh dưỡng */ },
  dosage_recommendation: { /* theo nhóm tuổi */ },
  ingredients_details: { /* chi tiết thành phần */ },
  rating: number,
  reviews: number,
  product_url: string,
  summary: {
    benefits: string[],
    ingredients: string[],
    users: string
  }
}
```

## 🔧 Tính Năng Kỹ Thuật

### **Flip Cards Chuẩn Hóa** 🔄
- **Thiết kế thống nhất** cho tất cả 4 danh mục
- **Mặt trước**: Thông tin cơ bản, giá, hình ảnh, nút hành động
- **Mặt sau**: Chi tiết công dụng, thành phần, đối tượng sử dụng
- **Animation mượt mà**: CSS transform 3D với perspective
- **Responsive**: Hoạt động tốt trên mobile và desktop

### **Bộ Lọc Thông Minh**
- Lọc theo hàm lượng dinh dưỡng (ranges)
- Lọc theo nguồn gốc và xuất xứ
- Lọc theo dạng sử dụng
- Lọc theo nhóm tuổi/đối tượng
- Radio buttons và checkboxes

### **Chức Năng So Sánh**
- So sánh tối đa 4 sản phẩm cùng lúc
- Biểu đồ thanh ngang (horizontal bar charts)
- So sánh liều dùng theo nhóm tuổi
- So sánh chi phí sử dụng hàng ngày
- So sánh hàm lượng dinh dưỡng chính

### **Tìm Kiếm & Sắp Xếp**
- Tìm kiếm theo tên, thương hiệu, xuất xứ
- Sắp xếp theo tên, giá, đánh giá
- Sắp xếp theo hàm lượng dinh dưỡng
- Real-time filtering và sorting

## 📱 Responsive Design

- **Mobile (< 768px)**: Single column layout, collapsible filters
- **Tablet (768px - 1024px)**: 2-column product grid
- **Desktop (> 1024px)**: 3-column product grid với sidebar

## 🛠️ Công Cụ Quản Lý

### **tools/affiliate-manager.html** 🔗
Tool quản lý link affiliate với giao diện thân thiện:
- **Thêm/xóa affiliate URLs** cho từng sản phẩm
- **Phân chia theo danh mục** (ID ranges: 1-100, 101-200, 201-300, 301-400)
- **Generate code tự động** để copy-paste vào file
- **Preview và validation** URL format

### **tools/csv-to-json.html** 📊
Chuyển đổi dữ liệu sản phẩm từ CSV/Excel:
- Upload file CSV với cấu trúc có sẵn
- Validation và mapping fields theo schema
- Generate JSON code sẵn sàng sử dụng

### **admin-smart.html** ⚙️
Panel quản trị thông minh:
- **Dynamic form generation** dựa trên schema danh mục
- **Real-time validation** với visual feedback
- **Schema-aware** cho từng loại sản phẩm
- Export/import dữ liệu JSON

## 🚀 Hướng Dẫn Sử Dụng

### **Cài Đặt Local**
```bash
# Clone repository
git clone https://github.com/louisngvn/me_va_be.git

# Mở thư mục
cd me_va_be

# Chạy web server local (ví dụ với Python)
python -m http.server 8000

# Hoặc với Node.js
npx serve .

# Truy cập: http://localhost:8000
```

### **Triển Khai**
Website là static site có thể deploy trên:
- GitHub Pages
- Netlify
- Vercel
- Cloudflare Pages

## 🎯 Roadmap Phát Triển

### **Giai Đoạn Hiện Tại** ✅
- [x] 4 danh mục sản phẩm chính hoàn chỉnh
- [x] **Flip cards chuẩn hóa** cho tất cả danh mục
- [x] **Hệ thống affiliate link** tích hợp hoàn chỉnh
- [x] **Tool quản lý affiliate** (`tools/affiliate-manager.html`)
- [x] Trang chuyên gia với tư vấn
- [x] Hệ thống so sánh thông minh
- [x] Responsive design toàn diện
- [x] 25+ sản phẩm với dữ liệu chi tiết
- [x] Đổi tên danh mục "Mẹ & Bé" thành "Phụ nữ & Thai kỳ"

### **Giai Đoạn Tiếp Theo** 🔄
- [ ] Tính năng lưu sản phẩm yêu thích (localStorage)
- [ ] Chia sẻ kết quả so sánh (social sharing)
- [ ] Tích hợp API giá thực tế từ e-commerce
- [ ] Chức năng đánh giá và review từ người dùng
- [ ] Blog/tin tức về dinh dưỡng trẻ em

### **Tương Lai** 🚀
- [ ] PWA (Progressive Web App)
- [ ] Dark/Light theme toggle
- [ ] Multi-language (English)
- [ ] AI chatbot tư vấn
- [ ] Tích hợp payment gateway
- [ ] Mobile app (React Native/Flutter)

## 🌟 Điểm Nổi Bật

1. **Dữ liệu chi tiết**: 25+ sản phẩm với thông tin đầy đủ từ liều dùng đến xuất xứ
2. **So sánh trực quan**: Biểu đồ interactive giúp người dùng dễ dàng so sánh
3. **Tư vấn chuyên gia**: Hướng dẫn chi tiết theo từng giai đoạn phát triển
4. **UX tối ưu**: Glass morphism, smooth animations, responsive hoàn hảo
5. **SEO-friendly**: Meta tags, semantic HTML, performance tốt

## 📞 Liên Hệ & Hỗ Trợ

- **Website**: [https://me-va-be.github.io](https://louisngvn.github.io/me_va_be/)
- **GitHub**: [https://github.com/louisngvn/me_va_be](https://github.com/louisngvn/me_va_be)
- **Email**: Thông qua form tư vấn trên website

---

*Cập nhật lần cuối: December 2024*

**© 2024 Vi Chất Cho Mẹ và Bé - Website So Sánh Vitamin Tốt Nhất Việt Nam**