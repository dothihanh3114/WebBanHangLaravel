-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 19, 2024 lúc 07:24 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `panel2`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment_username` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_content` longtext NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_phone` varchar(255) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `customer_name`, `customer_phone`, `customer_address`, `customer_email`, `user_id`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Vy', '234554677', '123 Nguyễn Lương Bằng', 'vy@gmail.com', NULL, 1, '2024-06-18 18:29:02', '2024-06-18 18:29:02'),
(2, 'Hàng', '245678900', '123 Nguyễn Lương Bằng', 'hang@gmail.com', NULL, 1, '2024-06-18 18:29:27', '2024-06-18 18:29:27'),
(3, 'hoang', '24567898', '123 Nguyễn Lương Bằng', 'hoang@gmail.com', NULL, 1, '2024-06-18 18:29:54', '2024-06-18 22:22:35'),
(4, 'hoang', '12345632', '123 Nguyễn Lương Bằng', 'hoang@gmail.com', NULL, 1, '2024-06-18 22:53:14', '2024-06-18 22:53:14'),
(5, 'Lan', '24852344', '123 Lê Duẫn', 'lan@gmail.com', NULL, 1, '2024-06-18 22:57:22', '2024-06-18 22:57:22'),
(6, 'Ngọc', '3065456', 'Âu Cơ', 'ngoc@gmail.com', NULL, 1, '2024-06-18 22:59:26', '2024-06-18 22:59:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `employee_name` varchar(255) NOT NULL,
  `employee_identity` varchar(15) NOT NULL,
  `employee_phone` varchar(12) NOT NULL,
  `employee_address` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `employees`
--

INSERT INTO `employees` (`id`, `employee_name`, `employee_identity`, `employee_phone`, `employee_address`, `active`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Văn Linh', '12345666', '248552144', '123 Nguyễn Lương Bằng', 0, 2, '2024-06-18 18:23:13', '2024-06-19 02:31:18'),
(2, 'Phạm Khánh', '133456', '1344567678', 'Phạm Như Xương', 1, 3, '2024-06-18 18:26:45', '2024-06-18 18:26:45'),
(3, 'Phạm Thị Quí', '2345678', '23452346', 'Hòa Nhơn', 1, 4, '2024-06-18 18:27:54', '2024-06-18 18:27:54'),
(4, 'Hạnh', '11815444', '1257841484', 'Âu cơ', 1, 5, '2024-06-18 23:04:29', '2024-06-18 23:04:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `group_goods`
--

CREATE TABLE `group_goods` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `group_image` varchar(255) NOT NULL,
  `group_description` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `group_goods`
--

INSERT INTO `group_goods` (`id`, `group_name`, `group_image`, `group_description`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Thức ăn nhanh', '1718733683.jpg', 'Thức ăn nhanh, hay còn gọi là fast food, là các loại thực phẩm được chế biến và phục vụ nhanh chóng, đáp ứng nhu cầu tiện lợi và thời gian của người tiêu dùng. Các món ăn nhanh phổ biến bao gồm hamburger, pizza, gà rán, khoai tây chiên, sandwich', 1, '2024-06-18 17:58:39', '2024-06-18 18:01:23'),
(2, 'Bánh ngọt', '1718749873.jpg', 'Bánh ngọt là một loại thực phẩm phổ biến và đa dạng, thường được dùng trong các dịp đặc biệt như sinh nhật, lễ cưới, hoặc các buổi tiệc. Bánh ngọt có rất nhiều loại khác nhau, từ những chiếc bánh nhỏ như cupcake, muffin', 1, '2024-06-18 22:31:13', '2024-06-18 22:31:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_10_11_024145_create_create_employee_tables_table', 1),
(6, '2021_10_13_210756_create_customers_table', 1),
(7, '2021_10_15_225423_create_group_goods_table', 1),
(8, '2021_10_16_094850_create_product_types_table', 1),
(9, '2021_10_16_132240_create_products_table', 1),
(10, '2021_10_16_162309_create_suppliers_table', 1),
(11, '2021_10_16_162415_create_warehouses_table', 1),
(12, '2021_10_16_195401_create_orders_table', 1),
(13, '2021_10_16_195514_create_orderdetails_table', 1),
(14, '2021_10_19_201154_create_comments_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderdetails`
--

CREATE TABLE `orderdetails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `orders_id` bigint(20) UNSIGNED NOT NULL,
  `order_detail_quantity` int(11) NOT NULL,
  `order_detail_price` decimal(10,2) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orderdetails`
--

INSERT INTO `orderdetails` (`id`, `product_id`, `orders_id`, `order_detail_quantity`, `order_detail_price`, `active`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 1, 100000.00, 1, '2024-06-18 22:53:14', '2024-06-18 22:53:14'),
(2, 2, 2, 1, 100000.00, 1, '2024-06-18 22:57:22', '2024-06-18 22:57:22'),
(3, 2, 3, 1, 100000.00, 1, '2024-06-18 22:59:26', '2024-06-18 22:59:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_customer_name` varchar(255) NOT NULL,
  `order_customer_phone` varchar(255) NOT NULL,
  `order_customer_email` varchar(255) NOT NULL,
  `order_customer_address` varchar(255) NOT NULL,
  `order_total_price` varchar(255) NOT NULL,
  `order_status` varchar(255) NOT NULL,
  `order_note` varchar(255) DEFAULT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `order_customer_name`, `order_customer_phone`, `order_customer_email`, `order_customer_address`, `order_total_price`, `order_status`, `order_note`, `customer_id`, `active`, `created_at`, `updated_at`) VALUES
(1, 'hoang', '12345632', 'hoang@gmail.com', '123 Nguyễn Lương Bằng', '220000', 'Đang giao', NULL, 4, 1, '2024-06-18 22:53:14', '2024-06-18 22:53:14'),
(2, 'Lan', '24852344', 'lan@gmail.com', '123 Lê Duẫn', '340000', 'Đã giao', NULL, 5, 1, '2024-06-18 22:57:22', '2024-06-18 22:57:22'),
(3, 'Ngọc', '3065456', 'ngoc@gmail.com', 'Âu Cơ', '370000', 'Đã giao', NULL, 6, 1, '2024-06-18 22:59:26', '2024-06-18 22:59:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_symbol` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_image1` varchar(255) NOT NULL,
  `product_image2` varchar(255) NOT NULL,
  `product_image3` varchar(255) NOT NULL,
  `product_description` longtext NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `product_type_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `product_symbol`, `product_name`, `product_image1`, `product_image2`, `product_image3`, `product_description`, `product_price`, `active`, `product_type_id`, `created_at`, `updated_at`) VALUES
(1, '01', 'Burger Whopper phô mai thịt xông khói', '6-burger-ca.jpg', 'a.jpg', 'b.jpg', 'Burger Whopper phô mai thịt xông khói là một sự kết hợp hoàn hảo giữa hương vị đậm đà và béo ngậy. Với phần bánh mì mềm mịn, thịt bò nướng lửa than thơm lừng, kèm theo những lát phô mai tan chảy và thịt xông khói giòn rụm, mỗi miếng cắn đều mang lại cảm giác thỏa mãn tuyệt đối.', '150000', 1, 1, '2024-06-18 18:05:49', '2024-06-18 18:05:49'),
(2, '02', 'Burger cá', 'a.jpg', 'b.jpg', 'c.jpg', 'Burger cá là một món ăn nhanh phổ biến và hấp dẫn, được yêu thích bởi nhiều người trên khắp thế giới. Khác với burger truyền thống làm từ thịt bò, burger cá mang đến một hương vị độc đáo và mới lạ', '100000', 1, 1, '2024-06-18 22:35:11', '2024-06-18 22:35:11'),
(3, '03', 'Sandwich trứng', 'v.jpg', 'ư.jpg', 'q.jpg', 'Sandwich trứng là một món ăn nhanh phổ biến, đơn giản nhưng đầy đủ dinh dưỡng, được yêu thích bởi nhiều người trên khắp thế giới. Đây là sự kết hợp hoàn hảo giữa bánh mì mềm và trứng, tạo nên một bữa ăn tiện lợi và ngon miệng cho bữa sáng, bữa trưa hoặc bữa ăn nhẹ.', '30000', 1, 2, '2024-06-18 22:36:51', '2024-06-18 22:36:51'),
(4, '04', 'Pizza Margherita', 'ư.jpg', 'ư.jpg', 'ư.jpg', 'Đây là loại pizza truyền thống của Ý, với lớp nền sốt cà chua, phô mai mozzarella tươi, và lá húng quế. Màu sắc của Margherita tượng trưng cho quốc kỳ Ý với màu đỏ của cà chua, màu trắng của phô mai và màu xanh của húng quế.', '150000', 1, 3, '2024-06-18 22:38:41', '2024-06-18 22:38:41'),
(5, '05', 'Pizza Pepperoni', 'uu.jpg', 'uu.jpg', 'uu.jpg', 'Loại pizza này rất phổ biến tại Mỹ, với lớp nền sốt cà chua, phô mai mozzarella và nhiều lát pepperoni (xúc xích cay). Đây là một trong những loại pizza được yêu thích nhất.', '70000', 1, 3, '2024-06-18 22:41:00', '2024-06-18 22:41:00'),
(6, '06', 'Mì Cay Hàn Quốc', 'm.jpg', 'm.jpg', 'm.jpg', 'Đây là loại mì cay nổi tiếng từ Hàn Quốc, thường được gọi là \"mì gà cay\". Mì này có nước sốt rất cay và ngọt, làm từ ớt Gochujang và thường được trang trí bằng mè rang và rong biển.', '50000', 1, 4, '2024-06-18 22:42:35', '2024-06-18 22:42:35'),
(7, '07', 'Mì Cay Thái', 'n.jpg', 'n.jpg', 'n.jpg', 'Loại mì này đặc trưng bởi hương vị cay, chua và thơm từ chanh, sả, và ớt. Tom Yum thường được nấu với tôm, gà hoặc hải sản, và có thể kèm theo nấm, cà chua và rau thơm.', '50000', 1, 4, '2024-06-18 22:46:00', '2024-06-18 22:46:00'),
(8, '07', 'Burger', 'm.jpg', 'sp_1718526269_sp_1718526105_r.jpg', 'sp_1718526269_sp_1718526105_r.jpg', 'Loại mì này đặc trưng bởi hương vị cay, chua và thơm từ chanh, sả, và ớt. Tom Yum thường được nấu với tôm, gà hoặc hải sản, và có thể kèm theo nấm, cà chua và rau thơm.', '50000', 0, 1, '2024-06-19 02:32:23', '2024-06-19 02:32:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_types`
--

CREATE TABLE `product_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_type_name` varchar(255) NOT NULL,
  `product_type_description` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `group_goods_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_types`
--

INSERT INTO `product_types` (`id`, `product_type_name`, `product_type_description`, `active`, `group_goods_id`, `created_at`, `updated_at`) VALUES
(1, 'Hambuger', 'Hamburger là một món ăn nhanh nổi tiếng trên toàn thế giới, đặc biệt phổ biến ở Mỹ', 1, 1, '2024-06-18 18:02:50', '2024-06-18 18:02:50'),
(2, 'Sandwich', 'sandwich là một loại thức ăn nhanh phổ biến, bao gồm hai hoặc nhiều lát bánh mì kẹp giữa các loại nguyên liệu khác nhau. Các nguyên liệu phổ biến có thể bao gồm thịt, phô mai, rau sống', 1, 1, '2024-06-18 22:27:36', '2024-06-18 22:27:36'),
(3, 'Pizza', 'Pizza là một món ăn nổi tiếng có nguồn gốc từ Ý, được yêu thích trên toàn thế giới. Món ăn này thường bao gồm một lớp vỏ bánh mì mỏng, được phủ lên bằng sốt cà chua, phô mai và các loại topping', 1, 1, '2024-06-18 22:29:05', '2024-06-18 22:29:05'),
(4, 'Mì cay', 'Mì cay là một món ăn đặc trưng trong ẩm thực Hàn Quốc và đã trở nên phổ biến trên toàn thế giới, bao gồm cả Việt Nam. Mì cay được biết đến với hương vị đậm đà, cay nồng và hấp dẫn, tạo nên một trải nghiệm ẩm thực độc đáo cho những ai yêu thích vị cay.', 0, 1, '2024-06-18 22:29:05', '2024-06-18 22:32:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_name` varchar(255) NOT NULL,
  `supplier_address` varchar(255) NOT NULL,
  `supplier_phone` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `suppliers`
--

INSERT INTO `suppliers` (`id`, `supplier_name`, `supplier_address`, `supplier_phone`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Công ty Fasst Food', '123 Nguyễn Lương Bằng', '123456543', 1, '2024-06-18 18:32:07', '2024-06-18 18:32:07'),
(2, 'Công ty Shoppy Food', '123 Nguyễn Tất Thành', '12354678', 1, '2024-06-18 18:32:41', '2024-06-18 18:32:41'),
(3, 'Công ty Ba Vì', 'Hoàng Văn Thái', '25578889', 1, '2024-06-18 18:33:32', '2024-06-18 18:33:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `rolename` varchar(255) NOT NULL DEFAULT '',
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `address`, `email`, `email_verified_at`, `password`, `remember_token`, `avatar`, `rolename`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '+84123456789', '396 Kshlerin Tunnel\nSouth Lester, AZ 13221', 'admin@gmail.com', '2024-06-18 15:47:52', '$2y$10$JHK.2MTc9ORMmmlqoF.gg.SwDLnevVSj1oreHParu5PvcPEDOWqe6', '98hyzTFhmF', 'undraw_profile.svg', 'admin', 1, '2024-06-18 15:47:52', '2024-06-18 15:47:52'),
(2, 'Nguyễn Văn Linh', '248552144', '123 Nguyễn Lương Bằng', 'linh@gmail.com', NULL, '$2y$10$Hkt5y/OWxACr62BGXOGwkuLdUa5NYtuztJJZ2FfTqnSXDYfbZ13HS', NULL, '1718734993.jpg', 'Nhân viên', 1, '2024-06-18 18:23:13', '2024-06-18 18:23:13'),
(3, 'Phạm Khánh', '1344567678', 'Phạm Như Xương', 'khanh@gmail.com', NULL, '$2y$10$lN8gOKgtWjplJlY.T.8O9OpiG24v9YThnUEueZEqHJAxoTNxfIlpm', NULL, '1718735205.jpg', 'Nhân viên', 1, '2024-06-18 18:26:45', '2024-06-18 18:26:45'),
(4, 'Phạm Thị Quí', '23452346', 'Hòa Nhơn', 'qui@gmail.com', NULL, '$2y$10$cVRB94gE.7l0A0o80c9WwOF9sw.LYYIae1zXoWXkl.CiBLkpigwcW', NULL, '1718735274.jpg', 'admin', 1, '2024-06-18 18:27:54', '2024-06-18 18:27:54'),
(5, 'Hạnh', '1257841484', 'Âu cơ', 'hanh@gmail.com', NULL, '$2y$10$TTqH8n6jNh.Dzj2uswPTi.8mZcKqXaWi7jcbPwP3u/WqGdPseyFB2', NULL, '1718751869.jpg', 'admin', 1, '2024-06-18 23:04:29', '2024-06-18 23:04:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `warehouses`
--

CREATE TABLE `warehouses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `consignment_symbol` varchar(255) NOT NULL,
  `consignment_name` varchar(255) NOT NULL,
  `consignment_expiry` date NOT NULL,
  `consignment_purchase_price` decimal(10,2) NOT NULL,
  `consignment_sale_price` decimal(10,2) NOT NULL,
  `consignment_quantity` int(11) NOT NULL,
  `consignment_saled` int(11) NOT NULL DEFAULT 0,
  `consignment_return` int(11) NOT NULL DEFAULT 0,
  `consignment_currently` int(11) NOT NULL,
  `consignment_status` varchar(255) NOT NULL DEFAULT 'Còn hàng',
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` bigint(20) UNSIGNED NOT NULL,
  `active` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `warehouses`
--

INSERT INTO `warehouses` (`id`, `consignment_symbol`, `consignment_name`, `consignment_expiry`, `consignment_purchase_price`, `consignment_sale_price`, `consignment_quantity`, `consignment_saled`, `consignment_return`, `consignment_currently`, `consignment_status`, `product_id`, `supplier_id`, `active`, `created_at`, `updated_at`) VALUES
(1, '001', 'Buger', '2024-06-16', 250000.00, 230000.00, 5, 0, 0, 5, 'Còn hàng', 1, 1, '1', '2024-06-18 18:55:21', '2024-06-18 18:55:21'),
(2, '002', 'sandwich', '2024-06-06', 200000.00, 180000.00, 4, 0, 0, 4, 'Còn hàng', 3, 2, '1', '2024-06-18 22:47:52', '2024-06-18 22:47:52'),
(3, '004', 'pizza', '2024-06-05', 150000.00, 100000.00, 7, 0, 0, 7, 'Còn hàng', 4, 3, '1', '2024-06-18 22:49:27', '2024-06-18 22:49:27');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customers_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employees_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `group_goods`
--
ALTER TABLE `group_goods`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orderdetails_product_id_foreign` (`product_id`),
  ADD KEY `orderdetails_orders_id_foreign` (`orders_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_product_type_id_foreign` (`product_type_id`);

--
-- Chỉ mục cho bảng `product_types`
--
ALTER TABLE `product_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_types_group_goods_id_foreign` (`group_goods_id`);

--
-- Chỉ mục cho bảng `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `warehouses_product_id_foreign` (`product_id`),
  ADD KEY `warehouses_supplier_id_foreign` (`supplier_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `group_goods`
--
ALTER TABLE `group_goods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `product_types`
--
ALTER TABLE `product_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `orderdetails_orders_id_foreign` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orderdetails_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_product_type_id_foreign` FOREIGN KEY (`product_type_id`) REFERENCES `product_types` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_types`
--
ALTER TABLE `product_types`
  ADD CONSTRAINT `product_types_group_goods_id_foreign` FOREIGN KEY (`group_goods_id`) REFERENCES `group_goods` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `warehouses`
--
ALTER TABLE `warehouses`
  ADD CONSTRAINT `warehouses_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `warehouses_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
