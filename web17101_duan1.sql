-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 15, 2022 lúc 07:55 AM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web17101_duan1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brand`
--

CREATE TABLE `brand` (
  `id_brand` int(11) NOT NULL,
  `brand_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brand`
--

INSERT INTO `brand` (`id_brand`, `brand_name`) VALUES
(1, 'NIKE'),
(2, 'ADIDAS'),
(3, 'VANS'),
(4, 'BALENCIAGA'),
(5, 'CONVERSE'),
(6, 'GIÀY THỂ THAO'),
(7, 'GIÀY DA'),
(9, 'FILA');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id_comment` int(11) NOT NULL,
  `date` date NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id_comment`, `date`, `id_user`, `id_product`, `content`) VALUES
(20, '2022-04-06', 0, 2, 'Hàng 5s'),
(21, '2022-04-14', 0, 1, 'tuyệt vời!'),
(22, '2022-04-14', 0, 7, '5s'),
(23, '2022-04-14', 0, 4, 'Hàng mới về hoài vậy em phải sống sao! Huhu'),
(24, '2022-04-14', 0, 4, 'Hàng mới về hoài vậy em phải sống sao! Huhu'),
(25, '2022-04-14', 0, 4, 'Tình chỉ đẹp khi tình dang dở\r\nMình chỉ đẹp khi mình đi giày shop SHOES thôi'),
(26, '2022-04-14', 0, 4, 'Đôi này còn màu khác không shop ơi'),
(27, '2022-04-14', 0, 10, 'Sản phẩm giống mô tả\r\n'),
(28, '2022-04-14', 0, 6, 'Chưa bao giờ mua đồ online mà chim ưng như vậy!');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `id_contact` int(11) NOT NULL,
  `name_contact` varchar(255) NOT NULL,
  `phone_contact` int(10) NOT NULL,
  `email_contact` varchar(255) NOT NULL,
  `date_contact` date DEFAULT NULL,
  `content_contact` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id_news` int(11) NOT NULL,
  `name_news` varchar(255) NOT NULL,
  `image_news` text NOT NULL,
  `details_news` text NOT NULL,
  `especially_news` text NOT NULL,
  `date_news` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id_news`, `name_news`, `image_news`, `details_news`, `especially_news`, `date_news`) VALUES
(7, 'Converse giới thiệu giày có thể thay đổi màu như tắc kè khi gặp ánh nắng', 'uploads/blog/624d27dd09a2a-624d24e2199d9-aaaa.jpg', 'Gần đây, thế giới smartphone đón chào một trào lưu mới với các thiết bị có mặt lưng thay đổi màu sắc theo góc nhìn và bây giờ nó còn lan rộng sang những đôi giày thể thao.\r\n\r\nConverse giới thiệu giày có thể thay đổi màu như tắc kè khi gặp ánh nắng - Ảnh 1.\r\nGiày thể thao có thể thay đổi màu sắc như tắc kè của Converse\r\n\r\n\r\nHợp tác với Chinatown Market, thương hiệu giày nổi tiếng Converse vừa giới thiệu một đôi sneaker (một loại giày được thiết kế chủ yếu dành cho các hoạt động thể dục, thể thao. Tuy nhiên, ngày nay, loại giày này cũng có thể được hiểu là giày dùng để đi thường ngày) có khả năng thay đổi màu sắc khi tiếp xúc với tia UV.\r\n\r\nTùy thuộc vào lượng ánh sáng UV (tia cực tím) nhận được mà đôi giày sẽ thay đổi từ màu pastel (tông màu nhạt) sang những màu sắc sống động khác. Việc thay đổi màu sắc diễn ra khá nhanh và được Chinatown Market minh họa bằng một đoạn teaser trên Instagram.\r\n\r\nVideo minh họa khả năng thay đổi màu sắc của đôi giày\r\n\r\nMỗi chiếc giày sẽ được chia làm 4 khu vực màu sắc khác nhau (bao gồm xanh, da cam, hồng và tím) giúp tạo ra một hiệu ứng giống như cầu vồng. Phần đế cũng như mũi giày được giữ nguyên màu trắng sáng giúp tăng thêm vẻ trẻ trung và năng động.', 'Những đôi giày Converse trắng này sẽ đổi màu khi bạn đi ra nắng.', '2022-04-04'),
(8, 'adidas Stan Smith “Made To Be Remade” – Giày mang cũ gửi trả, adidas sẽ gửi lại đôi mới', 'uploads/blog/624a8051b0709-tintuc2.jpg', 'adidas Stan Smith “Made To Be Remade” là đôi sneakers được phát hành trong dự án nhằm giúp adidas đẩy mạnh việc bảo vệ môi trường. adidas ra mắt chiến dịch này bằng một mã QR Code gắn trên lưỡi giày, sau đó bạn đăng ký member thành viên thông qua apps (ứng dụng) của adidas. Bạn mang giày một thời gian nếu không xài được nữa thì hãy gửi trả lại theo địa chỉ trong apps đã được thông báo trước đó, adidas sẽ gửi lại cho bạn một đôi sneakers hoàn toàn mới.\r\nĐể ý thấy rằng đôi adidas Stan Smith lần này có mức giá lên đến 180 USD, có thể về tay khoảng 4 triệu VNĐ. Cùng với đó, những vật liệu trên đôi Stan Smith lần này được sử dụng đều là nhựa tái chế. Khá đẹp mắt & thiết kế tinh gọn vẫn là tinh thần của Stan Smith. Upper được dệt knit. phần gót giày bằng nhựa trong tái chế. Bên cạnh đó, chỉ khâu phần thân giày &  đế giày theo hình xương cá, khác hẳn với vậy may chìm dọc thân như những sản phẩm trước đây.\r\nĐánh giá tổng quan đôi giày trông rất đẹp & đây cũng được xem là dự án khá thú vị. Tuy nhiên, dự án này không biết đã triển khai ở thị trường lớn hay toàn cầu vì hạn chế về việc logistics không phải là dễ dàng trên khắp thế giới. Nhưng nếu thành công & xử lý được những hạn chế, chắc chắn rằng dự án này sẽ mang lại một lượng khách hàng trung thành cho adidas nói chung & đôi sneaker Stan Smith nói riêng.', 'Bạn sẵn sàng bỏ ra 180 USD và sau khi mang giày gửi trả cho adidas & nhận về một đôi sneakers hoàn toàn mới chứ? Comment ngay ý kiến của bạn cùng Shose Store nhé. Cũng đừng quên theo dõi Shose Store để cập nhật những tin tức mới nhất nhé.', '2022-04-04'),
(9, 'Lacoste L001 trở thành đôi sneakers được yêu thích nhất sau 1 tuần mang trên chân.', 'uploads/blog/624a80c8e2876-tintuc3.jpg', '\r\nTính đa dạng về sản phẩm của Lacoste trải dài từ quần áo dành cho Nam và Nữ mang phong cách thể thao nhưng cũng không kém phần thanh lịch. Bên cạnh đó là việc xây dựng sản phẩm giày thể thao (sneakers) lấy cảm hứng từ bộ môn quần vợt cũng là một trong những chiến lược quan trọng của Lacoste trong xuyên suốt quá trình phát triển.Cảm nhận đầu tiên khi cầm trên tay chiếc hộp là một màu xanh rất đặc trưng để chúng ta liên tưởng ngay về nguồn gốc xuất phát của thương hiệu là bộ môn Quần Vợt. Với logo cá xấu màu trắng được in dập dù đơn giản nhưng rất đẹp mắt.\r\nUnbox đôi Lacoste L001 thì ấn tượng đầu tiên cực kỳ thú vị lớp da và những đường vân họa tiết da rất tinh tế và cao cấp. Một điểm thú vị về Lacoste L001 đó chính là nó được lấy cảm hứng chính từ đôi giày đầu tiên được nhà sáng lập Réne Lacoste thiết kế, và  cảm hứng từ chiếc vợt tennis những năm 80s.\r\nL001 phối màu chủ đạo là trắng/xanh. Phần upper như SNKRVN đã đề cập với chất liệu da trắng ngọc trai, kèm theo đó là những chi tiết màu xanh lá cây vô cùng đặc trưng của thương hiệu Cá sấu. \r\nĐi sâu hơn vào chi tiết của đôi giày, những đường nét hình học tinh gọn cùng hoa văn xương cá, logo croc dập nổi khéo léo, tinh tế phía gót giày – các chấm phá được sắp xếp cẩn thận trên lớp đế đủ độ dày, mang đến sự hấp dẫn của phong cách cổ điển hiện đại (modern classic), cùng với lớp upper da lộn mịn màng, nâng tầm cao cấp cho L001. \r\nPhần gót là điểm nổi bật với một miếng da lộn màu xanh, kéo xuống ½ gót giày là 2 lớp bao gồm phần Da upper, da lót giữa và khung nhựa màu xám được in logo CROCS màu trắng. Ở phần gót, SNKRVN đánh giá cao việc trải nghiệm người dùng. Bởi đôi sneakers này mình mang true size (8UK – 42 EURO) và hoàn toàn không có cảm giác gót bị trượt khi đi lại nguyên ngày. \r\nThân ngang của đôi giày có phần quai với họa tiết chữ V ngược, đây chính là chi tiết ở phần giữa nối liền cán & khung mặt của cây vợt tennis vào những năm 80s. \r\nVài lưu ý nhỏ, phần insole không tháo rời được và logo được in phía bên trong đi một thời gian theo kinh nghiệm của SNKRVN thì các bạn nhớ dán cover lại bằng một miếng băng keo nhé. Ngoài ra, mình thấy rằng nếu chân ai dạng bẹt có thể mang lớn hơn 0.5 size, còn nếu chân thon thì nên giảm đi ½ size. ', 'Đặc biệt:\r\nĐầu tiên, phải nói về thương hiệu Lacoste với logo cá sấu rất thú vị bởi nó mang trong mình một bề dày lịch sử & những câu chuyện thú vị. Thương hiệu được thành lập bởi VĐV bộ môn q', '2022-04-04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id_orders` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `status` tinyint(4) NOT NULL,
  `custom_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_phone` int(11) NOT NULL,
  `custom_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `money` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id_orders`, `order_date`, `status`, `custom_name`, `custom_phone`, `custom_email`, `custom_address`, `money`) VALUES
(71, '2022-06-04', 1, 'Phạm Văn Mẫn', 376701485, 'manpvph13976@fpt.edu.vn', 'Hà Nội', 420000),
(72, '2022-06-04', 3, 'Phạm Văn Mẫn', 376701485, 'manpvph13976@fpt.edu.vn', '23 hà nội', 420000),
(74, '2022-04-07', 2, 'Đỗ quốc Đạt', 1278658766, 'datphere@fpt.edu.vn', 'Hà Nội', 635000),
(75, '2022-04-02', 3, 'Vương Khắc Toàn', 1527945545, 'toanvkpg253@fpt.edu.vn', 'Hà Nội', 1175000),
(76, '2022-04-08', 4, 'Trần Thanh Hùng', 1278658766, 'huntttph15256@fpt.edu.vn', 'Hà Nội', 395000),
(77, '2022-04-14', 0, 'Trần Thanh Hùng', 1278658766, 'huntttph15256@fpt.edu.vn', 'Hà Nội', 395000),
(78, '2022-04-12', 3, 'Trần Thanh Hùng', 1278658766, 'huntttph15256@fpt.edu.vn', 'Hà Nội', 395000),
(79, '2022-04-08', 3, 'Phạm Văn Mẫn', 0, 'manpvph13976@fpt.edu.vn', '', 565000),
(80, '2022-04-15', 0, 'Phạm Văn Mẫn', 0, 'manpvph13976@fpt.edu.vn', '', 565000),
(81, '0000-00-00', 0, 'Phạm Văn Mẫn', 376701485, 'manpvph13976@fpt.edu.vn', 'Hà Nội', 865000),
(82, '0000-00-00', 0, 'Phạm Văn Mẫn', 1278658766, 'manpvph13976@fpt.edu.vn', 'Hà Nội', 865000),
(83, '2022-04-15', 0, 'Phạm Văn Mẫn', 376701485, 'manpvph13976@fpt.edu.vn', 'Hà Nội', 625000),
(84, '2022-04-15', 0, 'Phạm Văn Mẫn', 376701485, 'manpvph13976@fpt.edu.vn', 'Hà Nội', 755000),
(85, '2022-04-15', 0, 'Phạm Văn Mẫn', 0, 'manpvph13976@fpt.edu.vn', '', 625000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `id_product` int(11) NOT NULL,
  `id_orders` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` double NOT NULL,
  `size` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`id_product`, `id_orders`, `quantity`, `unit_price`, `size`) VALUES
(2, 71, 1, 890000, 41),
(2, 72, 1, 890000, 41),
(6, 74, 1, 660000, 41),
(12, 75, 1, 1200000, 41),
(7, 76, 1, 420000, 41),
(3, 79, 1, 590000, 41),
(2, 81, 1, 890000, 41),
(2, 82, 1, 890000, 41),
(1, 83, 1, 650000, 41),
(5, 84, 1, 780000, 41),
(1, 85, 1, 650000, 41);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id_product` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `discount` int(11) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_quantity` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL,
  `new_product` tinyint(4) NOT NULL,
  `view` int(11) NOT NULL,
  `date_add` date NOT NULL DEFAULT current_timestamp(),
  `date_fix` date NOT NULL,
  `id_brand` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id_product`, `product_name`, `product_image`, `price`, `discount`, `details`, `product_quantity`, `status`, `new_product`, `view`, `date_add`, `date_fix`, `id_brand`) VALUES
(1, 'Giày sneaker Nike Air Jordan 1 Mid Gold', 'uploads/product/624a639ac2d60-92c71a4b8785cda4d1e508f4eec65264.jfif', 650000, 0, '', 999, 0, 1, 0, '2022-04-04', '0000-00-00', 1),
(2, 'Nike Air Max INTRLK', 'uploads/product/624a63c6b85a3-dd682b9b-c58c-4bd2-985f-c715116d4a0b.webp', 890000, 0, '', 999, 1, 1, 0, '2022-04-04', '0000-00-00', 1),
(3, 'Giày Nam Nike Air Force 1 Trắng Bạc', 'uploads/product/624a64a8cfb48-b5da1b3cab7f91892bdc55cf68a8aa95.jfif', 590000, 0, '', 999, 1, 1, 0, '2022-04-04', '0000-00-00', 1),
(4, 'Giày Nike Air Force 1 AF1 Chính Hãng', 'uploads/product/624a65fe424de-cbdfec92b3b4416e19f2f9175f09fb42.jfif', 420000, 0, '', 999, 1, 1, 0, '2022-04-04', '0000-00-00', 1),
(5, 'Giày Nam Nike Air Force 1 Trắng Đỏ', 'uploads/product/624a65404ae68-172e8baf5c81832176ea8587f3e48e99.jfif', 780000, 0, '', 999, 1, 1, 0, '2022-04-04', '0000-00-00', 1),
(6, 'Giày Nike Air Max Guile màu đỏ', 'uploads/product/624a6565a151c-123b2f303c157c1c589412effc849428.jfif', 660000, 0, '', 999, 1, 1, 0, '2022-04-04', '0000-00-00', 1),
(7, 'Giày Nike Air Max 97 Auth', 'uploads/product/624a65c901783-0804f5ece3e9eab8807878230ff81e71.jfif', 420000, 0, '', 99, 1, 1, 0, '2022-04-04', '0000-00-00', 1),
(8, 'Giày Sneaker Adidas Ultra4d 5.0 ', 'uploads/product/624a66e41eaf4-16f77c071d7b4b33a57f07f68c5e06.webp', 830000, 0, '', 999, 1, 1, 0, '2022-04-04', '0000-00-00', 2),
(9, 'Giày Sneaker Adidas Grand Court Base ', 'uploads/product/624a67098da70-f0bd89034c9047b49b87b00bfdf92c.webp', 660000, 0, '', 999, 1, 1, 0, '2022-04-04', '0000-00-00', 2),
(10, 'Giày Sneaker Adidas Runfalcon ', 'uploads/product/624a67242ea74-d8bee397fdea4ca091b5e0ebb3bb78.webp', 450000, 0, '', 999, 1, 1, 0, '2022-04-04', '0000-00-00', 2),
(11, 'Giày Sneaker Adidas Supernova ', 'uploads/product/624a676904851-6daf2860-7b00-420e-b438-826ed089e3a1.webp', 790000, 0, '', 99, 1, 1, 10, '2022-04-04', '0000-00-00', 2),
(12, 'Giày Sneaker Adidas Ultra4d X Nasa ', 'uploads/product/624a67ad4d567-e704157b-bb29-4917-ae81-8f288cc80af1.webp', 1200000, 0, '', 99, 1, 1, 0, '2022-04-04', '0000-00-00', 2),
(13, 'Giày Sneaker Nike Court Royale ', 'uploads/product/624a67ff7f766-12e8807f-95b3-4a10-b6d4-d4f81db690ad.webp', 590000, 0, '', 999, 1, 1, 0, '2022-04-04', '0000-00-00', 2),
(14, 'Giày Thể Thao Vans Ward Black', 'uploads/product/624a6880ec9ae-giay-the-thao-vans-ward-black-white-mau-den-size-40-5-61c181164c98e-21122021142406.jpg', 590000, 0, '', 99, 1, 1, 0, '2022-04-04', '0000-00-00', 3),
(15, ' Giày Sneakers Vans Old Skool ', 'uploads/product/624a68c614483-giay-sneakers-vans-old-skool-36-dx-spray-phoi-mau-6225c90fcd172-07032022155751.jpg', 880000, 0, '', 999, 1, 1, 0, '2022-04-04', '0000-00-00', 3),
(16, 'Giày Thể Thao Vans Classic SK8-HI', 'uploads/product/624a68e070c8f-5fc748481b514-02122020145448.jpg', 590000, 0, '', 999, 1, 1, 0, '2022-04-04', '0000-00-00', 3),
(17, 'Giày Vans Slip-On Label Mix ', 'uploads/product/624a68f4aaba6-giay-vans-slip-on-label-mix-mau-den-61e783ec435d9-19012022102220.jpg', 550000, 0, '', 999, 1, 1, 0, '2022-04-04', '0000-00-00', 3),
(18, 'Giày Sneakers Vans DIY ', 'uploads/product/624a6912be845-giay-sneakers-vans-diy-hc-black-vn0a4uucu7b-mau-den-61e7b96e01046-19012022141038.jpg', 770000, 0, '', 999, 1, 1, 0, '2022-04-04', '0000-00-00', 3),
(19, 'Giày Sneakers Vans X MOCA Frances', 'uploads/product/624a6930ccc81-giay-sneakers-vans-x-moca-frances-stark-old-skool-vn0a5krf94h-mau-den-trang-6225cf6ad0115-07032022162458.jpg', 990000, 0, '', 999, 1, 1, 0, '2022-04-04', '0000-00-00', 3),
(20, ' Giày Balenciaga Speed Sneaker ', 'uploads/product/624a6a56c8c4a-giay-balenciaga-speed-sneaker-mau-den-5e67072327e93-10032020101859.jpg', 999000, 0, '', 999, 1, 1, 0, '2022-04-04', '0000-00-00', 4),
(21, 'Giày Balenciaga Track', 'uploads/product/624a6a99a202a-uploaded_35e208adfe7510b985a65d4fe4a4219f.jpg', 880000, 0, '', 99, 1, 1, 0, '2022-04-04', '0000-00-00', 4),
(22, 'Balenciaga Triple S Trainer Black', 'uploads/product/624a6ad866e96-Triple-S-Trainer-Black-Red-2018.jpg.webp', 530000, 0, '', 999, 1, 1, 0, '2022-04-04', '0000-00-00', 4),
(23, 'Balenciaga Triple S Trainer Blue', 'uploads/product/624a6aef55770-Triple-S-Trainer-Blue-Red-2018.jpg.webp', 620000, 0, '', 999, 1, 1, 0, '2022-04-04', '0000-00-00', 4),
(24, 'Balenciaga Triple S Trainer Yellow ', 'uploads/product/624a6b058f3fe-IMG_1030-1.jpg.webp', 880000, 0, '', 999, 1, 1, 0, '2022-04-04', '0000-00-00', 4),
(25, 'Balenciaga Triple S Trainer Grey', 'uploads/product/624a6b1a45658-huong-dan-phoi-do-nam.jpg.webp', 590000, 0, '', 999, 1, 1, 0, '2022-04-04', '0000-00-00', 4),
(26, 'Balenciaga Triple S Trainer', 'uploads/product/624a6b4fb5ae2-2-1-1024x1024-1-scaled.jpg', 880000, 0, '', 999, 1, 1, 0, '2022-04-04', '0000-00-00', 4),
(27, 'Giày Balenciaga Triple S Plus Y ', 'uploads/product/624a6be2626a2-balenciaga-triple-s-full-black.jpg', 1200000, 0, '', 99, 1, 1, 0, '2022-04-04', '0000-00-00', 4),
(28, 'Giày Converse  Pk God Factory', 'uploads/product/624a6c630caa8-converse-off-white.jpg', 530000, 0, '', 999, 1, 1, 0, '2022-04-04', '0000-00-00', 5),
(29, 'Giày Thể Thao Converse All-Court ', 'uploads/product/624a6c858888b-giay-the-thao-converse-all-court-168785c-mau-den-5fc85bc06c95b-03122020103008.jpg', 770000, 0, '', 999, 1, 1, 0, '2022-04-04', '0000-00-00', 5),
(30, 'Giày Converse Chuck Taylor All Star', 'uploads/product/624a6c99ed0a4-giay-converse-chuck-taylor-all-star-1970s-colors-vintage-canvas-168504v-mau-nau-nhat-5fc89800a3300-03122020144712.jpg', 530000, 0, '', 999, 1, 1, 0, '2022-04-04', '0000-00-00', 5),
(31, 'Giày Thể Thao Converse 1970s High  ', 'uploads/product/624a6cb09abc7-giay-the-thao-converse-1970s-high-black-fire-mau-den-do-5faf6c22624d9-14112020123322.jpg', 999000, 0, '', 999, 1, 1, 0, '2022-04-04', '0000-00-00', 5),
(32, 'Giày Converse Chuck 1970s High ', 'uploads/product/624a6ccda6ff8-giay-converse-chuck-1970s-high-all-white-mau-trang-5f913531c14a4-22102020143057.jpg', 990000, 0, '', 9999, 1, 1, 0, '2022-04-04', '0000-00-00', 5),
(33, 'Giày Converse Chuck Taylor All Star', 'uploads/product/624a6cf47c251-giay-converse-chuck-taylor-all-star-renew-168593v-mau-xanh-green-5fc857de3e9f4-03122020101334.jpg', 1200000, 0, '', 999, 1, 1, 0, '2022-04-04', '0000-00-00', 5),
(34, 'Giày Fila Unisex Scanline Mule', 'uploads/product/624a6def36712-giay-fila-unisex-scanline-mule-mau-den-6243d6e34095b-30032022110451.jpg', 450000, 0, '', 99, 1, 1, 0, '2022-04-04', '0000-00-00', 9),
(35, 'Giày Fila Disruptor II Script ', 'uploads/product/624a6e0b6391e-giay-fila-disruptor-ii-script-white-fs1htb1191x-wnr-1-mau-trang-61976f3f2769f-19112021163247.jpg', 780000, 0, '', 999, 1, 1, 0, '2022-04-04', '0000-00-00', 9),
(36, 'Giày Fila Ray Tracer Triple ', 'uploads/product/624a6e25cfcce-giay-fila-ray-tracer-triple-black-mau-den-619876506cd2f-20112021111512.jpg', 830000, 0, '', 499, 1, 1, 0, '2022-04-04', '0000-00-00', 9),
(37, 'Giày Fila Disruptor White ', 'uploads/product/624a6e58369ff-giay-fila-disruptor-white-and-flamingo-pink-5dd353414e413-19112019092817.jpg', 790000, 0, '', 999, 1, 1, 0, '2022-04-04', '0000-00-00', 9),
(38, 'Giày Thể Thao Domba High Point ', 'uploads/product/624a6e8719c6c-giay-the-thao-domba-high-point-white-black-h-9111-size-42-5e5338044471c-24022020094212.jpg', 880000, 0, '', 999, 1, 1, 0, '2022-04-04', '0000-00-00', 6),
(39, 'Giày Thể Thao Senseboost Go White', 'uploads/product/624a6ea5e9999-giay-the-thao-adidas-senseboost-go-white-g26945-mau-trang-606abb4cd668c-05042021142500.jpg', 690000, 0, '', 999, 1, 1, 0, '2022-04-04', '0000-00-00', 6),
(40, 'Giày Thể Thao Nike Epic React Infinity ', 'uploads/product/624a6ed1e1337-giay-the-thao-nike-epic-react-infinity-fk-phoi-mau-5ffbb32845dd3-11012021090840.jpg', 530000, 0, '', 999, 1, 1, 0, '2022-04-04', '0000-00-00', 6),
(41, 'Giày Thể Thao Falcon Run Grey EE5115', 'uploads/product/624a6f10dae1a-giay-the-thao-adidas-falcon-run-grey-ee5115-mau-xam-size-40-6124b9bc1db83-24082021161956.jpeg', 1200000, 0, '', 999, 1, 1, 0, '2022-04-04', '0000-00-00', 6),
(42, 'Giày nam GNLAJD6537-157-D', 'uploads/product/624a6f5c78649-giay-oxford-nam-mui-nhon-gnlajd6537-157-d-2.jpg', 590000, 0, '', 999, 1, 1, 0, '2022-04-04', '0000-00-00', 7),
(43, 'Giầy nam da GNLABC001-D', 'uploads/product/624a6f75c5992-giay-tay-nam-hoa-tiet-van-da-ca-sau-gnlabc001-d.jpg', 830000, 0, '', 499, 1, 1, 0, '2022-04-04', '0000-00-00', 7),
(44, 'Giày Oxford nam GNLA486', 'uploads/product/624a6f8d55896-giay-tay-nam-thoi-trang-da-tron-cao-cap-gnla486-1-ndo-5.jpg', 950000, 0, '', 999, 1, 1, 0, '2022-04-04', '0000-00-00', 7),
(45, 'Giày lười nam da bò GNTA190905', 'uploads/product/624a6fb81401b-giay-luoi-nam-da-bo-tam-anh-gnta190905-x-5.jpg', 920000, 0, '– Chất liệu: Da bò thật 100%\r\n\r\n– Kiểu dáng: Moccasin\r\n\r\n– Thiết kế: Đế cao su chống trơn trượt, hoạ tiết tương tự Penny Loafer trẻ trung, dễ dàng phối đồ\r\n\r\n– Thương hiệu: Đồ da Tâm Anh\r\n\r\n– Màu sắc: Xanh', 1000, 1, 1, 0, '2022-04-04', '0000-00-00', 7),
(93, 'Vans Old', 'uploads/product/624fc6ce2d9ed-624a6c99ed0a4-giay-converse-chuck-taylor-all-star-1970s-colors-vintage-canvas-168504v-mau-nau-nhat-5fc89800a3300-03122020144712.jpg', 500000, 0, '', 20, 1, 1, 0, '2022-08-04', '0000-00-00', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `promo_code`
--

CREATE TABLE `promo_code` (
  `id_code` int(11) NOT NULL,
  `code_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` int(11) NOT NULL,
  `number_use` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `promo_code`
--

INSERT INTO `promo_code` (`id_code`, `code_name`, `code`, `number_use`) VALUES
(1, 'Phạm Văn Mẫn', 50, 98),
(2, 'thanh hùng', 20, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `full_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` tinyint(4) NOT NULL,
  `phone` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id_user`, `full_name`, `avatar`, `email`, `role`, `phone`, `password`, `address`) VALUES
(0, 'Phạm Văn Mẫn', 'uploads/avatars/6239315f29b18-258850686_580764716533260_4619964585680795196_n.jpg', 'manpvph13976@fpt.edu.vn', 1, '', '$2y$10$jEGSdx83lwIAqB.otxEi.edyUJsebWBGDxZGdQAo.9bubbcvGDboe', ''),
(1, 'Thanh Bình', '', 'binhvtph18459@fpt.edu.vn', 1, '', '$2y$10$6C2Qr1UfqxSrYVjVKAX86O2.MMI9HSX2rCY8m997AWrr0F.ta37b6', ''),
(2, 'Đức Nhâm', '', 'nhamndph15835@fpt.edu.vn', 1, '', '$2y$10$BXT/eO/UbiURCNAarMAfz./bgnTAvcxkx2NWcOWM7D0WvncqPg4rq', ''),
(3, 'Trần Thanh Hùng', '', 'hungttph13998@fpt.edu.vn', 1, '', '$2y$10$V7qEiGem.V5eRv7N3wEGL.SFN2nKrdqyDZB3S5JDLKv5OSx.Kb1ne', '');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id_brand`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id_comment`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_user` (`id_user`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id_contact`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id_news`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_orders`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id_orders`,`id_product`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_product`);

--
-- Chỉ mục cho bảng `promo_code`
--
ALTER TABLE `promo_code`
  ADD PRIMARY KEY (`id_code`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `brand`
--
ALTER TABLE `brand`
  MODIFY `id_brand` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id_comment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `id_contact` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id_news` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id_orders` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT cho bảng `promo_code`
--
ALTER TABLE `promo_code`
  MODIFY `id_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
