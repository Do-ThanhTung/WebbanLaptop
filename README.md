# 💻 Dự Án Website Mua Bán LapTop

## 👤 Thông Tin Sinh Viên

-   **Họ và tên:** Đỗ Thanh Tùng
-   **Mã sinh viên:** 23010811
-   **Lớp:** K17_CNTT-8
-   **Môn học:** Web nâng cao (TH3)

---

## 📋 Giới Thiệu Dự Án

Dự án **LaptopStore** nhằm cung cấp một nền tảng trực tuyến thuận tiện cho việc mua sắm laptop. Chúng tôi muốn mang đến cho khách hàng một trải nghiệm mua sắm dễ dàng và hiệu quả với nhiều lựa chọn sản phẩm đa dạng.

| **Nội dung**              | **Chi tiết**                                                                                                                                    |
| ------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------- |
| **Tên dự án**             | **LaptopStore**                                                                                                                                 |
| **Mục tiêu**              | Cung cấp nền tảng thương mại điện tử chuyên bán laptop                                                                                          |
| **Tầm nhìn**              | Trở thành kênh mua sắm laptop trực tuyến uy tín và tiện lợi hàng đầu                                                                            |
| **Đối tượng sử dụng**     | - Khách hàng có nhu cầu mua laptop<br>- Quản trị viên hệ thống                                                                                  |
| **Tính năng chính**       | - Hiển thị danh sách sản phẩm<br>- Giỏ hàng, đặt hàng, thanh toán<br>- Quản lý sản phẩm, đơn hàng, người dùng<br>                               |
| **Công nghệ sử dụng**     | - Backend: Laravel 10 (API RESTful)<br>- Frontend: Blade / Bootstrap<br>- DB: MySQL 8.x<br>- Queue: Redis<br>- Xác thực: Laravel Sanctum        |
| **Điểm nổi bật**          | - Giao diện đơn giản, dễ sử dụng<br>- Hệ thống phân quyền rõ ràng<br>- Dữ liệu bảo mật, xác thực mạnh<br>- Có thể mở rộng thành SPA hoặc mobile |
| **Định hướng phát triển** | - Tích hợp thanh toán online (VNPay, Momo)<br>- Tích hợp gợi ý sản phẩm<br>- Phát triển ứng dụng di động hoặc SPA frontend                      |

---

## 📌 Mục Tiêu

Xây dựng hệ thống **bán máy tính online** với các tính năng chính:

| **Chức năng**           | **Mô tả**                                                              | **Vai trò sử dụng**       |
| ----------------------- | ---------------------------------------------------------------------- | ------------------------- |
| **Trang chủ**           | Hiển thị danh sách sản phẩm, thông tin cơ bản như giá, ảnh, khuyến mãi | Tất cả người dùng         |
| **Chi tiết sản phẩm**   | Xem chi tiết từng sản phẩm, thông số kỹ thuật, hình ảnh, đánh giá      | Tất cả người dùng         |
| **Giỏ hàng**            | Cho phép thêm, sửa, xoá sản phẩm trong giỏ                             | Khách hàng                |
| **Đặt hàng**            | Giao diện xác nhận đơn hàng, nhập thông tin giao hàng, mã giảm giá     | Khách hàng                |
| **Thanh toán online**   | Tích hợp thanh toán qua ví điện tử hoặc ngân hàng (tùy cấu hình)       | Khách hàng                |
| **Quản lý đơn hàng**    | Xem lịch sử đơn, trạng thái đơn, chi tiết từng đơn                     | Khách hàng, Quản trị viên |
| **Đăng nhập / Đăng ký** | Xác thực người dùng qua email và mật khẩu                              | Tất cả người dùng         |
| **Quản lý người dùng**  | Phân quyền `admin` / `customer`, quản lý thông tin, đổi mật khẩu       | Quản trị viên             |
| **Quản lý sản phẩm**    | Tạo, sửa, xoá sản phẩm, upload ảnh, gán danh mục                       | Quản trị viên             |
| **Quản lý danh mục**    | Tạo, sửa, xoá danh mục sản phẩm                                        | Quản trị viên             |
| **Thống kê doanh thu**  | Biểu đồ doanh thu theo ngày, tháng, sản phẩm bán chạy                  | Quản trị viên             |
| **Hệ thống phân quyền** | Middleware kiểm tra vai trò khi gọi các route API                      | Tất cả người dùng         |

---

## 🧱 Công Nghệ Sử Dụng

| Thành phần          | Công nghệ                           |
| ------------------- | ----------------------------------- |
| Backend API         | Laravel 10 (RESTful API)            |
| Frontend            | Blade Template / Bootstrap / jQuery |
| Database            | MySQL 8.x                           |
| Queue xử lý nền     | Redis + Laravel Queue               |
| Xác thực người dùng | Laravel Sanctum                     |
| Triển khai          | Docker, Nginx                       |

---

## 🛠️ Kiến Trúc Thư Mục Laravel (rút gọn)

```bash
app/
├── Http/
│   ├── Controllers/
│   │   ├── ProductController.php
│   │   ├── CartController.php
│   │   └── OrderController.php
│   ├── Middleware/
│   └── Requests/
├── Models/
│   ├── User.php
│   ├── VpProduct.php
│   ├── VpOrder.php
│   └── VpCategory.php
config/
database/
├── migrations/
├── seeders/
public/
├── index.php
├── storage/
├── layout/
resources/
├── views/
│   ├── home.blade.php
│   ├── product.blade.php
│   └── cart.blade.php
├── css/
├── js/
routes/
├── web.php
├── api.php
storage/
tests/
vendor/
.env
artisan
composer.json
package.json
```

---

## 🗺️ Sơ Đồ Chức Năng Hệ Thống

![Sơ đồ chức năng](public/img/so-do-chuc-nang.jpg)

---

# 💻 Một Số Code Minh Họa

## 👤 User Model

```php
namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use App\Models\VpProduct;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    protected $table= 'vp_users';

    protected $fillable = [
        'email',
        'password',
    ];

    protected $hidden = [
        'password',
        'remember_token',
    ];

    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function favoriteProducts()
    {
        return $this->belongsToMany(VpProduct::class, 'vp_favourite_products', 'user_id', 'favou_product');
    }
}
```

---

## 📝 Order Model

```php
namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class VpOrder extends Model
{
    use HasFactory;

    protected $table = 'vp_orders';

    protected $fillable = [
        'name',
        'phone',
        'address',
        'total_price',
        'total_products',
        'placed_order_date',
    ];
}
```

---

## 🛒 Product Model

```php
namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\VpFavouriteProduct;

class VpProduct extends Model
{
    use HasFactory;
    protected $primaryKey = 'prod_id';
    protected $guarded = [];

    public function favorite()
    {
        return $this->hasMany(VpFavouriteProduct::class, 'favou_product', 'prod_id');
    }
}
```

---

## 🏷️ Category Model

```php
namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class VpCategory extends Model
{
    use HasFactory;

    protected $primaryKey = 'cate_id';
    protected $guarded = [];
}
```

---

## 💬 Comment Model

```php
namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class VpComment extends Model
{
    use HasFactory;

    protected $primaryKey = 'com_id';
}
```

---

## 🛒 Cart Model

```php
namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class VpCart extends Model
{
    use HasFactory;

    protected $primaryKey = 'id';
    protected $guarded = [];
}
```

---

## 🧠 Controller

### ProductController

```php
namespace App\Http\Controllers;

use App\Models\VpProduct;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function index()
    {
        return VpProduct::all();
    }

    public function show($id)
    {
        return VpProduct::findOrFail($id);
    }
}
```

### CartController

```php
namespace App\Http\Controllers;

use App\Models\VpCart;
use Illuminate\Http\Request;

class CartController extends Controller
{
    public function index(Request $request)
    {
        return VpCart::where('user_id', $request->user()->id)->get();
    }

    public function store(Request $request)
    {
        $cart = VpCart::create($request->all());
        return response()->json($cart, 201);
    }
}
```

### OrderController

```php
namespace App\Http\Controllers;

use App\Models\VpOrder;
use Illuminate\Http\Request;

class OrderController extends Controller
{
    public function index(Request $request)
    {
        return VpOrder::where('user_id', $request->user()->id)->get();
    }

    public function store(Request $request)
    {
        $order = VpOrder::create($request->all());
        return response()->json($order, 201);
    }
}
```

---

# 🖼️ Một Số Ảnh Minh Họa

## Đăng ký

![Đăng ký](public/img/Đăng%20ký.jpg)

## Đăng Nhập

![Đăng Nhập](public/img/Đăng%20Nhập.jpg)

## Đổi mật khẩu

![Đổi mật khẩu](public/img/Đổi%20mật%20khẩu.jpg)

## Trang chủ

![Trang chủ](public/img/Trang%20chủ.jpg)

## Các Sản Phẩm

![Các Sản Phẩm](public/img/Các%20Sản%20Phẩm.jpg)

## Trang admin

![Trang admin](public/img/Trang%20admin.jpg)

## Quản lý người dùng

![Quản lý người dùng](public/img/quản%20lý%20người%20dùng.jpg)

## Quản lý sản phẩm

![Quản lý sản phẩm](public/img/quản%20lý%20sản%20phẩm.jpg)

## Quản lý danh mục

![Quản lý danh mục](public/img/quản%20lý%20danh%20mục.jpg)

## Quản lý đơn hàng

![Quản lý đơn hàng](public/img/quản%20lý%20đơn%20hàng.jpg)

## Quản lý bình luận

![Quản lý bình luận](public/img/quản%20lý%20bình%20luận.jpg)

---

## 📷 GIAO DIỆN NGƯỜI DÙNG CHI TIẾT

### Trang Chủ

| Thành phần        | Mô tả                                                                    | Hành vi & Tương tác                                                              |
| ----------------- | ------------------------------------------------------------------------ | -------------------------------------------------------------------------------- |
| Header            | Logo, menu chính, ô tìm kiếm, nút đăng nhập/đăng ký, biểu tượng giỏ hàng | - Click logo quay về trang chủ<br>- Click giỏ hàng chuyển tới trang giỏ hàng     |
| Banner quảng cáo  | Hình ảnh lớn quảng bá sản phẩm, khuyến mãi hoặc chương trình giảm giá    | - Tự động chuyển ảnh sau vài giây<br>- Có thể click để chuyển đến trang sản phẩm |
| Danh mục sản phẩm | Hiển thị các danh mục chính: Laptop, PC, Màn hình, Phụ kiện,...          | - Hover để hiển thị sub-menu (nếu có)<br>- Click để vào trang danh sách sản phẩm |
| Sản phẩm nổi bật  | Dạng lưới các sản phẩm hot: ảnh, tên, giá, nút "Mua ngay"                | - Click tên hoặc ảnh để xem chi tiết<br>- Click "Mua ngay" thêm vào giỏ hàng     |
| Tất cả sản phẩm   | Dạng lưới tất cả các sản phẩm : ảnh, tên, giá, nút "Mua ngay"            | - Click tên hoặc ảnh để xem chi tiết<br>- Click "Mua ngay" thêm vào giỏ hàng     |
| Tin tức mới nhất  | Các bài viết blog liên quan đến công nghệ, thủ thuật, tin sản phẩm mới   | - Click tiêu đề để xem toàn bộ bài viết                                          |
| Footer            | Thông tin liên hệ, chính sách bảo mật, điều khoản sử dụng, liên kết MXH  | - Có thể click liên kết để mở trang ngoài                                        |

---

### Danh Sách Sản Phẩm

| Thành phần       | Mô tả                                                              | Hành vi & Tương tác                                                     |
| ---------------- | ------------------------------------------------------------------ | ----------------------------------------------------------------------- |
| Tiêu đề danh mục | Hiển thị tên danh mục đang được xem                                | - Tự động thay đổi theo danh mục khi chuyển trang                       |
| Bộ lọc sản phẩm  | Cho phép lọc theo giá, thương hiệu, loại sản phẩm, đánh giá        | - Lọc theo checkbox, range giá, dropdown…                               |
| Sắp xếp          | Tuỳ chọn sắp xếp theo giá tăng/dảm, tên, sản phẩm mới nhất         | - Chọn từ dropdown để sắp xếp                                           |
| Lưới sản phẩm    | Hiển thị sản phẩm: ảnh, tên, giá, trạng thái kho, nút xem chi tiết | - Click ảnh hoặc tên để xem chi tiết                                    |
| Phân trang       | Hiển thị số trang hiện tại, chuyển qua lại giữa các trang          | - Click số trang để chuyển<br>- Click nút next/prev để điều hướng trang |

---

### Chi Tiết Sản Phẩm

| Thành phần             | Mô tả                                                     | Hành vi & Tương tác                                           |
| ---------------------- | --------------------------------------------------------- | ------------------------------------------------------------- |
| Ảnh sản phẩm chính     | Ảnh to của sản phẩm                                       | - Click để phóng to<br>- Hover để xem chi tiết                |
| Bộ ảnh phụ             | Gallery nhỏ bên dưới sản phẩm chính                       | - Click ảnh nhỏ để thay đổi ảnh lớn                           |
| Thông tin cơ bản       | Tên sản phẩm, giá tiền, trạng thái kho, thương hiệu       | - Tự động hiển thị khi chọn biến thể (nếu có)                 |
| Thông số kỹ thuật      | CPU, RAM, Ổ cứng, VGA, Màn hình,…                         | - Trình bày dạng bảng                                         |
| Mô tả chi tiết         | Đoạn văn mô tả chi tiết về tính năng, hiệu năng, bảo hành | - Hiển thị đầy đủ, có thể collapsible                         |
| Số lượng + nút mua     | Ô nhập số lượng và nút "Thêm vào giỏ"                     | - Chọn số lượng rồi thêm vào giỏ hàng                         |
| Đánh giá từ người dùng | Danh sách các đánh giá + hệ thống đánh giá 5 sao          | - Người dùng đã mua có thể đánh giá, hiển thị điểm trung bình |

---

### Trang Giỏ Hàng

| Thành phần               | Mô tả                                                 | Hành vi & Tương tác                                          |
| ------------------------ | ----------------------------------------------------- | ------------------------------------------------------------ |
| Bảng sản phẩm            | Gồm: ảnh, tên, đơn giá, số lượng, thành tiền, nút xoá | - Cho phép cập nhật số lượng<br>- Xoá sản phẩm khỏi giỏ hàng |
| Tính tổng                | Tính tổng thành tiền của các sản phẩm                 | - Tự động cập nhật khi thay đổi số lượng hoặc xoá            |
| Ghi chú đơn hàng         | Cho phép ghi chú thêm cho đơn                         | - Lưu ghi chú kèm đơn hàng                                   |
| Nút tiến hành thanh toán | Chuyển sang bước xác nhận và thanh toán đơn hàng      | - Phải đăng nhập mới có thể tiếp tục                         |

---

### Trang Thanh Toán

| Thành phần              | Mô tả                                                     | Hành vi & Tương tác                                                                |
| ----------------------- | --------------------------------------------------------- | ---------------------------------------------------------------------------------- |
| Thông tin người nhận    | Họ tên, số điện thoại, email, địa chỉ giao hàng           | - Nhập hoặc chọn từ danh sách địa chỉ đã lưu                                       |
| Phương thức thanh toán  | COD                                                       | - Chọn 1 phương thức, có thể hiển thị nội dung tương ứng                           |
| Tóm tắt giỏ hàng        | Hiển thị lại các sản phẩm trong đơn hàng, số lượng và giá | - Không cho chỉnh sửa, chỉ xem lại                                                 |
| Ghi chú đơn hàng        | Trường nhập ghi chú thêm nếu có                           | - Không bắt buộc                                                                   |
| Nút xác nhận & đặt hàng | Nút gửi yêu cầu tạo đơn hàng                              | - Kiểm tra hợp lệ toàn bộ thông tin<br>- Sau đó chuyển hướng sang trang thành công |

---

### Trang Đơn Hàng Đã Mua

| Thành phần         | Mô tả                                                                   | Hành vi & Tương tác                                                                      |
| ------------------ | ----------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- |
| Danh sách đơn hàng | Hiển thị danh sách các đơn hàng đã đặt                                  | - Có phân trang nếu nhiều<br>- Mỗi dòng hiển thị mã đơn, ngày đặt, trạng thái, tổng tiền |
| Chi tiết đơn hàng  | Khi click vào từng đơn, hiển thị chi tiết sản phẩm, địa chỉ, thanh toán | - Có thể in hóa đơn<br>- Xem lịch sử trạng thái đơn (Pending → Đang giao → Hoàn tất)     |
| Hủy đơn hàng       | Cho phép hủy đơn nếu đơn chưa xử lý/giao                                | - Yêu cầu xác nhận khi hủy                                                               |
| Gửi đánh giá       | Với mỗi sản phẩm đã mua, có thể đánh giá và để lại nhận xét             | - Đánh giá theo hệ thống sao (⭐) và nội dung nhận xét                                   |

---

### Trang Quản Lý Tài Khoản Khách Hàng

| Thành phần        | Mô tả                                                       | Hành vi & Tương tác                                                   |
| ----------------- | ----------------------------------------------------------- | --------------------------------------------------------------------- |
| Thông tin cá nhân | Tên, email, số điện thoại, ngày sinh,…                      | - Có thể chỉnh sửa và lưu lại thông tin                               |
| Đổi mật khẩu      | Nhập mật khẩu hiện tại + mật khẩu mới                       | - Kiểm tra đúng mật khẩu hiện tại mới cho phép đổi                    |
| Danh sách địa chỉ | Quản lý nhiều địa chỉ giao hàng (thêm/sửa/xoá)              | - Có thể đặt 1 địa chỉ mặc định                                       |
| Lịch sử mua hàng  | Liệt kê các đơn đã đặt (rút gọn từ "Trang đơn hàng đã mua") | - Có thể click để xem chi tiết                                        |
| Đăng xuất         | Thoát khỏi phiên đăng nhập hiện tại                         | - Thực hiện logout, xoá token, điều hướng về trang chủ hoặc đăng nhập |

---

## 🔐 Xác Thực & Phân Quyền

-   **Role:** `customer` và `admin`
-   **Middleware:** Phân quyền theo route

```php
Route::middleware('auth:sanctum')->group(function () {
    Route::get('/orders', [OrderController::class, 'index']);
    Route::middleware('admin')->group(function () {
        Route::resource('/products', ProductController::class);
    });
});
```

---

## 🚀 Một Số API Tiêu Biểu

### 🟢 Đăng nhập

```http
POST /api/login
Content-Type: application/json

{
    "email": "user@gmail.com",
    "password": "12345678"
}
```

---

### 🟢 Lấy danh sách sản phẩm

```http
GET /api/products
Authorization: Bearer {token}
```

---

### 🟢 Đặt hàng

```http
POST /api/orders
Authorization: Bearer {token}

{
    "products": [
        {"id": 1, "quantity": 2}
    ]
}
```

---

## ✅ Kết Luận

Dự án **Website Bán Máy Tính** được xây dựng bằng **Laravel** mang lại giải pháp quản lý bán hàng hiệu quả và dễ sử dụng cho cả khách hàng lẫn quản trị viên. Với cấu trúc rõ ràng, hệ thống được chia thành 2 phần chính: **Giao diện người dùng (Frontend)** và **Hệ thống quản trị (Admin Panel)** sử dụng chung một backend API.

---

### 🧩 Tổng Quan Hệ Thống

| **Phân loại**              | **Tính năng / Mô tả**                                                                                                                                                                                 |
| -------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 🎯 **Người dùng**          | - Giao diện trực quan, tối ưu cho desktop & mobile<br>- Giỏ hàng, mã giảm giá, ghi chú đơn hàng<br>- Quản lý thông tin cá nhân, lịch sử mua hàng<br>- Xác thực bảo mật qua Laravel Sanctum            |
| 🧑‍💼 **Quản trị viên**       | - Dashboard thống kê doanh thu<br>- Quản lý linh hoạt sản phẩm, đơn hàng, người dùng<br>- Phân quyền truy cập, middleware kiểm soát<br>- RESTful API dễ tích hợp frontend khác                        |
| 🔐 **Bảo mật & Hiệu năng** | - Laravel Middleware phân quyền chặt chẽ<br>- Hỗ trợ JWT hoặc Sanctum cho bảo mật API<br>- Redis + Laravel Queue xử lý tác vụ nền, đảm bảo hiệu suất<br>- Dữ liệu người dùng được mã hoá, bảo mật cao |
| 📈 **Khả năng mở rộng**    | - Có thể chuyển đổi sang SPA (Vue / React / Nuxt)<br>- Dễ nâng cấp thành microservice khi hệ thống lớn<br>- Hỗ trợ triển khai đa nền tảng: Docker, VPS, Heroku, Render...                             |

### 🏁 Tổng Kết

| **Tiêu chí**               | **Mô tả**                                                                                          |
| -------------------------- | -------------------------------------------------------------------------------------------------- |
| **Quy mô linh hoạt**       | Phù hợp với cá nhân, doanh nghiệp nhỏ và có thể mở rộng cho hệ thống lớn trong tương lai           |
| **Dễ bảo trì**             | Laravel có cấu trúc rõ ràng (MVC), hỗ trợ debug, test, log giúp việc bảo trì dễ dàng               |
| **Mở rộng chức năng**      | Có thể thêm module như đánh giá sản phẩm, voucher, wishlist, live chat… mà không ảnh hưởng code cũ |
| **Tích hợp thanh toán**    | Dễ dàng tích hợp các cổng thanh toán như Momo, VNPay, PayPal thông qua Laravel Package             |
| **Tích hợp email**         | Hỗ trợ gửi email tự động (thông báo đơn hàng, xác thực tài khoản...) bằng Mailgun, SMTP...         |
| **Quản lý nội dung (CMS)** | Có thể tích hợp module CMS như trang blog, tin tức, hoặc quản lý nội dung trang tĩnh               |
| **Hệ sinh thái mạnh mẽ**   | Laravel hỗ trợ đầy đủ: Artisan CLI, Queue, Events, Jobs, Notifications, Broadcasting...            |

## 🔗 Liên Kết

-   **GitHub:** [Do-ThanhTung](https://github.com/Do-ThanhTung)
-   **GitHub Repo:** [WebbanLaptop](https://github.com/Do-ThanhTung/WebbanLaptop)
-   **YouTube Demo:** [Xem video demo](https://www.youtube.com/watch?v=p5VMIVFY6JU)
-   **Drive Demo:** [Xem video demo](https://drive.google.com/file/d/1si4hmIbON4nzUCSyvSCbsNtcmKYJ35_r/view?usp=sharing)
-   **Public Website:** [Xem public](https://webbanlaptop-master-czgpyv.laravel.cloud/)
