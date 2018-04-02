-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 31, 2018 lúc 02:12 PM
-- Phiên bản máy phục vụ: 10.1.30-MariaDB
-- Phiên bản PHP: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `tintuc_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `idCmt` int(11) NOT NULL,
  `idUser` int(11) DEFAULT NULL,
  `idTinTuc` int(11) DEFAULT NULL,
  `noidung` longtext,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `idSlide` int(11) NOT NULL,
  `ten` varchar(255) DEFAULT NULL,
  `hinh` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `slide`
--

INSERT INTO `slide` (`idSlide`, `ten`, `hinh`, `link`, `create_at`, `update_at`) VALUES
(1, 'Phát hiện loài ếch mới ở biên giới Venezuela và Colombia', '000-12C7WY-9060-1522392409.jpg', NULL, '2018-03-31 09:18:55', '0000-00-00 00:00:00'),
(2, 'Acer ra mắt hệ sinh thái máy tính chơi game Predator, khẳng định vị thế tiên phong công nghệ', 'photo1522474127733-15224741277341721816031.jpg', NULL, '2018-03-31 09:18:55', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theloai`
--

CREATE TABLE `theloai` (
  `idTheLoai` int(11) NOT NULL,
  `ten` varchar(255) DEFAULT NULL,
  `tenKhongDau` varchar(255) DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `theloai`
--

INSERT INTO `theloai` (`idTheLoai`, `ten`, `tenKhongDau`, `create_at`, `update_at`) VALUES
(1, 'Xã hội', 'Xa-Hoi', '2018-03-31 08:49:08', '0000-00-00 00:00:00'),
(2, 'Thế giới', 'The-Gioi', '2018-03-31 08:49:08', '0000-00-00 00:00:00'),
(3, 'Kinh doanh', 'Kinh-Doanh', '2018-03-31 08:50:09', '0000-00-00 00:00:00'),
(4, 'Văn hoá', 'Van-Hoa', '2018-03-31 08:50:09', '0000-00-00 00:00:00'),
(5, 'Thể thao', 'The-Thao', '2018-03-31 08:50:50', '0000-00-00 00:00:00'),
(6, 'Pháp Luật', 'Phap-Luat', '2018-03-31 08:50:50', '0000-00-00 00:00:00'),
(7, 'Đời Sống', 'Doi-Song', '2018-03-31 08:51:34', '0000-00-00 00:00:00'),
(8, 'Khoa Học', 'Khoa-Hoc', '2018-03-31 08:51:34', '0000-00-00 00:00:00'),
(9, 'Vi Tính', 'Vi-Tinh', '2018-03-31 08:51:52', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tintuc`
--

CREATE TABLE `tintuc` (
  `idTinTuc` int(11) NOT NULL,
  `idTheLoai` int(11) DEFAULT NULL,
  `tieude` varchar(255) DEFAULT NULL,
  `tieudekhongdau` varchar(255) DEFAULT NULL,
  `tomtat` text,
  `noidung` longtext,
  `hinh` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tintuc`
--

INSERT INTO `tintuc` (`idTinTuc`, `idTheLoai`, `tieude`, `tieudekhongdau`, `tomtat`, `noidung`, `hinh`) VALUES
(1, 1, 'Nguyên nhân ban đầu vụ cháy chung cư ở TP.HCM 13 người thiệt mạng', 'nguyen-nhan-ban-dau-vu-chay-chung-cu-o-tphcm-13-nguoi-thiet-mang', 'Xác minh ban đầu, hỏa hoạn khởi phát ở tầng hầm, từ một xe có thể do nổ. Nguyên nhân gây hậu quả lớn do cửa ngăn cháy ra lối thoát hiểm bị hở...', 'Gần trưa 23/3, ông Nguyễn Thiện Nhân, Uỷ viên Bộ Chính trị, Bí thư Thành ủy và lãnh đạo UBND TP.HCM đã có cuộc họp khẩn về công tác khắc phục hậu quả vụ cháy làm 13 người chết, hàng chục người bị thương xảy ra tại chung cư Carina (quận 8) đêm 22/3.\r\n\r\nThượng tá Nguyễn Thanh Hưởng, PGĐ phụ trách Cảnh sát PCCC TP thông tin: 3 hầm giữ xe của 3 Block chung cư thông nhau. Tòa nhà này đã được thẩm duyệt, nghiệm thu về PCCC. Diện tích cháy tại tầng hầm. Quá trình chữa cháy xuất hiện rất nhiều tiếng nổ. Đến 2h đám cháy được khống chế. Cảnh sát cứu trực tiếp được 200 người thông qua nhiều biện pháp. Đồng thời, hướng dẫn thoát nạn an toàn hơn 1.000 người. Có 28 người bị thương đang điều trị tại các bệnh viện: Triều An, Chợ Rẫy, Nguyễn Tri Phương, quận 6. \r\n\r\nHiện nay, lực lượng PCCC chia làm 3 tổ kiểm tra tất cả các phòng của 3 tòa nhà. Lực lượng chức năng khẩn trương khám nghiệm hiện trường.\r\n\r\nPhát biểu tại buổi làm việc Bí thư Thành ủy Nguyễn Thiện Nhân ghi nhận, biểu dương sự nỗ lực ứng phó dập lửa, cứu nạn của lực lượng Cảnh sát PCCC. Ông Nhân yêu cầu công an cần sớm làm rõ trách nhiệm từng tổ chức, cá nhân. Trách nhiệm của chủ đầu tư, ban quản lý tòa nhà, cảnh sát PCCC.\r\n\r\n\"Làm rõ chuông báo cháy không hoạt động hay người có trách nhiệm báo chuông không làm việc, thông báo? Quy trình xử lý sự cố phải được rà kỹ để rút kinh nghiệm cho toàn bộ chung cư ở thành phố. Người dân ở các tầng trên cao thoát nạn như thế nào khi có cháy? Cần làm rõ việc chấp hành các quy định về an toàn cháy nổ tại chung cư này. Không có người quản lý chung cư nào có mặt tại đó cả. Khi cháy như vậy, không có ai hướng dẫn. Trách nhiệm của ban quản lý chung cư này không có\", ông Nhân nói.\r\n\r\nThiếu tướng Phan Anh Minh, Phó giám đốc Công an TP.HCM cho biết cơ quan điều tra đã thu thập trích xuất hệ thống camera của chung cư. Nguyên nhân phát cháy từ tầng hầm, từ một xe (có thể do hệ thống điện của xe), cũng có thể do nổ. Nguyên nhân gây hậu quả lớn do cửa ngăn cháy ra lối thoát hiểm bị hở. Khi đến hiện trường, một số tầng đèn hướng dẫn thoát hiểm không hoạt động.\r\n\r\n\"Rút kinh nghiệm vụ ITC, tôi phân công 3 tổ, các thi thể đang ở trung tâm pháp y, phối hợp khám nghiệm nhanh để giao gia đình, chậm nhất trong 2 tiếng. Không loại trừ những trường hợp tử vong trong phòng do hoảng, nhồi máu cơ tim, pháp y sẽ làm việc, giám định kỹ trong 4 giờ để giao gia đình. Cố gắng không để phải giám định ADN. Các tổ còn lại tập trung khám nghiệm hiện trường, điều tra. Công an quận 8 chịu trách nhiệm đảm bảo an ninh trật tự, lập danh sách số người mất tích. Giải quyết tài sản cho các hộ ở chung cư\", thiếu tướng Phan Anh Minh cho hay.\r\n\r\nLãnh đạo TP cho biết, hiện các nạn nhân vụ cháy vẫn đang tiếp tục được điều trị tại các bệnh viện trên địa bàn TP, bước đầu hỗ trợ 15 triệu/người tử vong, 5 triệu đồng/người bị thương.', 'chay1.jpg'),
(2, 2, 'Dùng thiết bị bay không người lái chuyển lậu điện thoại vào Trung Quốc', 'dung-thiet-bi-bay-khong-nguoi-lai-chuyen-lau-dien-thoai-vao-trung-quoc', 'Nhóm tội phạm dùng máy bay không người lái để buôn lậu điện thoại thông minh trị giá gần 80 triệu USD từ Hong Kong vào Trung Quốc.', 'Các cơ quan chức năng Trung Quốc vừa triệt phá một đường dây tội phạm bị cáo buộc dùng máy bay không người lái để chuyển lậu điện thoại iPhone và các loại điện thoại thông minh khác trị giá gần 80 triệu USD, theo CNN.\r\n\r\n\"Đây là lần đầu tiên chúng tôi gặp trường hợp tội phạm sử dụng máy bay không người lái để buôn lậu hàng hóa vào Trung Quốc đại lục\", truyền thông địa phương trích lời một cán bộ hải quan thành phố Thẩm Quyến trong cuộc họp báo được tổ chức ngày 29/3.\r\n\r\nHải quan Trung Quốc cho biết các nghi phạm vận chuyển trái phép đến 15.000 chiếc điện thoại mỗi đêm từ Hong Kong sang thành phố đông nam Thâm Quyến. Theo đó, nhóm tội phạm này đã sử dụng máy bay không người lái để treo hai sợi dây cáp dài 200 mét giữa hai tòa nhà ở hai thành phố. Sau đó những chiếc túi, bên trong có chứa điện thoại buôn lậu trái phép, được thả theo sợi cáp từ Hong Kong sang Thâm Quyến.\r\n\r\nViệc quản lý máy bay không người lái đang trở thành một thách thức với chính quyền Trung Quốc, quốc gia hiện là nhà sản xuất máy bay không người lái lớn nhất thế giới. Năm ngoái, Trung Quốc ban hành luật, yêu cầu tất cả những người sở hữu máy bay không người lái đều phải đăng ký bằng tên thật và ghi rõ trọng lượng của máy bay.', 'smuggle-8095-1522464919.jpg'),
(3, 3, 'Bỏ gần 5 tỷ USD, vì sao ThaiBev chưa được điều hành Sabeco?', 'bo-gan-5-ty-usd-vi-sao-thaibev-chua-duoc-dieu-hanh-sabeco', 'Đại diện Bộ Công Thương cho biết, nhân sự chủ chốt điều hành Sabeco sẽ được quyết định tại Đại hội cổ đông bất thường dự kiến ngày 23/4 tới.', 'Cách đây 2 ngày Phó thủ tướng Vương Đình Huệ chỉ đạo, yêu cầu Bộ Công Thương nhanh chóng xem xét, xử lý kiến nghị của ThaiBev việc tập đoàn này chưa được tham gia Hội đồng quản trị và điều hành Tổng công ty Bia, rượu, nước giải khát Sài Gòn (Sabeco) dù đã bỏ gần 5 tỷ USD mua 53,59% cổ phần doanh nghiệp này.\r\n\r\nMấu chốt vấn đề theo ông Trương Thanh Hoài - Cục trưởng Cục Công nghiệp (Bộ Công Thương) nằm ở quy định tại Luật Doanh nghiệp. Theo điều 114 Luật Doanh nghiệp, cổ đông sở hữu 10% với điều kiện 6 tháng giữ cổ phiếu liên tục tại doanh nghiệp mua cổ phần mới có quyền tham gia Hội đồng quản trị. Từ khi công ty con của ThaiBev là Vietnam Beverage mua cổ phần Sabeco đến nay mới được 4 tháng. \"Theo luật thì phải đến tháng 6/2018 đơn vị này mới có quyền tham gia vào Hội đồng quản trị Sabeco\", ông Hoài nói.\r\n\r\nTuy nhiên Bộ này đã yêu cầu bộ phận quản lý vốn Nhà nước tại Sabeco tiến hành Đại hội đồng cổ đông bất thường, dự kiến ngày 23/4/2018, để quyết định các vấn đề về nhân sự. \r\n\r\nLiên quan tới đề xuất đưa thêm 3 nhân sự của Vietnam Beverage tham gia Hội đồng quản trị Sabeco, đại diện Bộ Công Thương cho hay, theo Luật doanh nghiệp cổ đông và nhóm cổ đông có quyền đề cử người vào Hội đồng quản trị và ban kiểm soát nhưng phải được thông qua tại Đại hội cổ đông. Việc bầu bổ sung thành viên Hội đồng quản trị được xem là hợp lệ nếu nhận được quyền biểu quyết của ít nhất 65% số cổ đông có quyền biểu quyết đại diện cho hơn 51% tổng số cổ đông tham dự.\r\n\r\nNgoài ra theo điều lệ Sabeco, trong 7 thành viên Hội đồng quản trị phải có 2 thành viên độc lập. Cơ cấu thành viên Hội đồng quản trị của Sabeco hiện mới có 4 người, gồm 3 thành viên đại diện quản lý vốn nhà nước và một đại diện của Heniken (10% cổ phần tại Sabeco), như vậy còn trống 3 ghế. Vietnam Beverage cũng đề xuất ba nhân sự tham gia HĐQT, trong đó bắt buộc có 2 thành viên độc lập. \"Hiện Sabeco và Ủy ban Chứng khoán đang tiến hành kiểm tra tư cách của hai thành viên độc lập này\", Cục trưởng Cục Công nghiệp thông tin.\r\n\r\nVề lo ngại mất đi thương hiệu sau khi đối tác Thái vào nắm giữ Sabeco, đại diện Bộ Công Thương cho hay, hiện Nhà nước vẫn đang nắm giữ 36% nên có quyền phủ quyết việc thay đổi thương hiệu, thay đổi điều lệ, định hướng sản xuất kinh doanh, cơ cấu tổ chức doanh nghiệp… theo Luật Doanh nghiệp.\r\n\r\nGiữa tháng 12/2017 Công ty TNHH Vietnam Beverage - doanh nghiệp có liên quan tới tỷ phú Thái Lan đã mua 343,642 triệu cổ phần với mức giá 320.000 đồng. Thương vụ này Nhà nước thu về 110.000 tỷ đồng, tương đương 4,8 tỷ USD.\r\n\r\nVietnam Beverage thành lập tháng 10/2017, có vốn điều lệ gần 682 tỷ đồng, hoạt động trong lĩnh vực tư vấn quản lý, lập trình máy tính, tư vấn máy tính và quản trị hệ thống máy vi tính. Công ty được nắm giữ gián tiếp 49% bởi BeerCo Ltd, công ty bia do ThaiBev sở hữu 100% có trụ sở tại HongKong.\r\n\r\nNgười đại diện công ty là ông Michael Hin Fal, cũng là thành viên Hội đồng quản trị của Công ty cổ phần Sữa Việt Nam (Vinamilk). Ông Michael cũng đồng thời là Giám đốc của Fraser and Neaver Ltd - công ty thuộc quyền kiểm soát của F&N Dairy Investments Pte. Ltd (tập đoàn đồ uống do tỷ phú Thái Lan Charoen Sirivadhanabhakdi nắm quyền kiểm soát). Tại Việt Nam, F&N Dairy Investments của tỷ phú Thái là cái tên không lạ khi đang là nhà đầu tư ngoại \"miệt mài\" mua lại cổ phần Vinamilk. Hiện F&N sở hữu hơn 19% tại doanh nghiệp chiếm thị phần sữa lớn nhất Việt Nam và vẫn tích cực mua thêm để gia tăng sở hữu.', 'Sabeco3-7729-1522472033.jpg'),
(4, 4, 'Tại sao các nhân vật hoạt hình kinh điển đều… mồ côi mẹ', 'tai-sao-cac-nhan-vat-hoat-hinh-kinh-dien-deu-mo-coi-me', 'Rất nhiều nhân vật hoạt hình đồng hành cùng tuổi thơ đều có một điểm chung bi kịch, đó là mồ côi mẹ.', 'Bạch Tuyết, Lọ Lem, nàng Belle, sư tử Simba, nai Bambi… - rất nhiều nhân vật hoạt hình đồng hành cùng tuổi thơ đều có một điểm chung bi kịch, đó là mồ côi mẹ. Lý giải nằm ở câu chuyện buồn ít biết, từng xảy ra trong cuộc đời nhà làm phim huyền thoại Walt Disney.\r\n\r\nNgười xem hoạt hình Disney đã từng đau lòng khi chứng kiến cái chết của sư tử Mufasa trong phim hoạt hình \"Vua sư tử\", hay cái chết đau lòng của mẹ chú nai Bambi trong bộ phim hoạt hình cùng tên, ngoài ra, những nàng công chúa Disney như Bạch Tuyết, Lọ Lem, nàng Belle, nàng tiên cá Ariel… cũng đều mồ côi mẹ.\r\n\r\nĐiểm lại nhiều nhân vật hoạt hình nổi tiếng của Disney, có thể thấy một điểm chung bi kịch, đó là các nhân vật này đều mồ côi cả cha lẫn mẹ, hoặc mồ côi mẹ. Lý do đằng sau điểm chung này nằm ở một câu chuyện bi kịch riêng tư khác trong cuộc đời nhà làm phim huyền thoại Walt Disney…\r\n\r\nLý do khiến nhiều nhân vật hoạt hình của Disney chịu cảnh mồ côi bắt đầu từ một câu chuyện buồn có thật trong cuộc đời nhà làm phim Walt Disney.\r\n\r\nTrong cuộc phỏng vấn mới đây với tờ tạp chí Glamour, nhà làm phim của hãng Disney - ông Don Hahn - đã tiết lộ một câu chuyện buồn bã ít biết trong cuộc đời của Walt Disney. Đó là hồi cuối thập niên 1930, lúc này sự nghiệp của Walt Disney đã thành công, ông muốn mua cho cha mẹ mình một ngôi nhà mới.\r\n\r\nNhưng rồi bi kịch đã xảy ra: \"Walt Disney đã yêu cầu những nhân viên kỹ thuật của hãng phim tới sửa lò sưởi đốt bằng khí gas trong ngôi nhà mới của cha mẹ mình. Nhưng hỏng hóc vẫn chưa được sửa chữa triệt để, khí gas bị rò rỉ, khiến mẹ của Walt Disney qua đời\".\r\n\r\n\"Người giúp việc của gia đình đến làm vào sáng hôm sau đã kéo cha mẹ Walt Disney từ trong nhà ra ngoài sân. Sau vụ việc đó, chỉ có cha của Walt Disney là còn sống sót, mẹ của ông qua đời vì bị ngạt khí quá nặng. Trong suốt cuộc đời mình về sau, Walt Disney không bao giờ nói lại về sự việc này, nhưng câu chuyện đó đã âm thầm ám ảnh ông suốt phần đời còn lại.\r\n\r\nTừ tận sâu trong lòng mình, Walt Disney luôn cảm thấy trách nhiệm thuộc về mình, bởi chính ông đã mua cho cha mẹ căn nhà đó, đã yêu cầu những nhân viên kỹ thuật không thực sự hiểu về cơ chế hoạt động của lò sưởi đốt bằng khí gas, tới sửa chữa hỏng hóc giúp cha mẹ mình\".\r\n\r\nNhững nhân viên làm việc thường xuyên với Walt Disney đều hiểu rằng ông rất yêu thương mẹ và cái chết của bà khiến ông bị dằn vặt.\r\n\r\nBà Flora Call Disney - mẹ của Walt Disney - qua đời năm 1938. Sau thành công của phim hoạt hình \"Nàng Bạch Tuyết và bảy chú lùn\" ra mắt hồi năm 1938, Walt Disney muốn dành tặng cho cha mẹ một căn nhà mới nằm ở khu North Hollywood, gần trụ sở của hãng phim Disney, ở thành phố Burbank, bang California, Mỹ.\r\n\r\nGần 1 tháng sau khi chuyển vào sống trong nhà mới, bà Flora phàn nàn với con trai rằng dường như có vấn đề với lò sưởi đốt bằng khí gas. Nhân viên kỹ thuật của hãng phim đã được cử tới nhà để giúp sửa chữa lò sưởi, nhưng vấn đề đã không được xử lý triệt để.\r\n\r\nTrong một lá thư viết cho con gái (tức em gái của Walt Disney), bà Flora đã rất khen ngợi ngôi nhà nhưng có phàn nàn về việc lò sưởi tỏa ra mùi gây khó chịu. Vài ngày sau đó, trong một đợt rò rỉ khí mạnh hơn, bà Flora đã qua đời vì bị ngạt khí ở tuổi 70.\r\n\r\nThực tế, bên cạnh lý giải về bi kịch gia đình của Walt Disney, còn có một cách giải thích thứ hai về việc nhiều nhân vật hoạt hình của Disney có tuổi thơ côi cút, là bởi chi tiết này giúp đẩy nhanh chuyện phim, để các nhân vật chính phải chịu áp lực của sự trưởng thành. Phim hoạt hình Disney ban đầu thường chỉ dài 80 - 90 phút, họ không thể để chuyện phim diễn tiến chậm.', '16-1522334841368745063082-1522441316878962726335.jpg'),
(5, 5, 'V-League còn kém Thai League, có 1 cầu thủ VN đủ trình sang Thái', 'v-league-con-kem-thai-league-co-1-cau-thu-vn-du-trinh-sang-thai', 'Truyền thông Thái Lan nhận định, trình độ của giải V-League của Việt Nam còn kém Thai League, đồng thời họ cũng chỉ ra một cầu thủ của VN đủ sức đá ở xứ sở Chùa vàng.', 'Tờ Goal phiên bản Thái Lan mới đây có bài viết nhận định tổng quan về giải VĐQG Việt Nam so với Thái Lan. Theo Goal, giải V-League của Việt Nam còn kém hơn Thai League. \"Giải VĐQG Việt Nam xét về trình độ chuyên môn còn kém với Thai League, tuy nhiên họ cũng có nhiều cầu thủ đáp ứng được chuyên môn chơi ở giải của Thái Lan\" - tờ này nhận định.\r\n\r\nTrước đây, báo chí Thái Lan cũng đã chỉ ra nhiều cái tên của Việt Nam có thể thi đấu ở Thai League như Văn Quyết, Công Phượng, Xuân Trường... Và lần này, Goal Thái đã chỉ ra một cái tên khác, đó là tiền đạo Nguyễn Văn Toàn.', 'vantoan.jpg'),
(6, 6, 'Sáng kiến công khai chữ viết giúp cảnh sát Mỹ nhanh chóng tìm ra sát thủ', 'sang-kien-cong-khai-chu-viet-giup-canh-sat-my-nhanh-chong-tim-ra-sat-thu', 'Chữ viết của kẻ đã giết ba mẹ con cảnh sát đăng trên 5 tấm biển quảng cáo lớn, treo thưởng 25.000 USD cho người cung cấp thông tin.', 'Vào một sáng tháng 6/1989 tại Tampa, Floria, Mỹ, thi thể ba phụ nữ nổi gần vịnh Tampa trong tình trạng đều bị bịt miệng, bán khỏa thân, bị trói.\r\n\r\nMặc dù thủ phạm gắn thêm những khối bê tông rất nặng sau đầu mỗi nạn nhân, nhưng khi xác phân hủy, lượng khí tạo ra đã làm cả ba xác nổi lên. Theo các nhà điều tra, nếu nhiệt độ nước ở đây lạnh hơn, có thể các thi thể sẽ không bao giờ được tìm thấy.', '3-nan-nhan-xau-so-2303-1522373543.png'),
(7, 7, 'WeChoice Awards: Chương trình \"Hành trình truyền cảm hứng\" đã chính thức phát sóng!', 'wechoice-awards-chuong-trinh-hanh-trinh-truyen-cam-hung-da-chinh-thuc-phat-song', 'Bước sang mùa thứ 5 của giải thưởng WeChoice Awards, Công ty cổ phần VCCorp đã hợp tác cùng Trung tâm Tin tức VTV24 (Đài Truyền hình Việt Nam) sản xuất hệ thống chương trình truyền hình Hành trình truyền cảm hứng - WeChoice Awards mang quy mô toàn quốc.', 'Tại Việt Nam, những giải thưởng dành cho cá nhân, tổ chức có thành tích xuất sắc trong một lĩnh vực nào đó hoặc có những đóng góp lớn cho xã hội rất nhiều. Tuy nhiên, chưa từng có một giải thưởng nào vinh danh cả những con người bình dị, chưa có những đóng góp lớn lao cho xã hội. Điều họ đem tới là câu chuyện của niềm hy vọng, cảm hứng tích cực truyền tới rất nhiều người. WeChoice Awards - giải thưởng thường niên do Công ty cổ phần VCCorp khởi xướng và tổ chức đem đến sự khác biệt đó. \r\n\r\nBắt đầu từ năm 2015, WeChoice Awards là giải thưởng uy tín, có ý nghĩa xã hội, được tổ chức nhằm tôn vinh những con người, những sự kiện, sản phẩm và công trình có ảnh hưởng tích cực tới cộng đồng cũng như chia sẻ những câu chuyện truyền cảm hứng nhất trong đời sống hằng ngày. Qua 4 mùa WeChoice Awards, hàng trăm câu chuyện truyền cảm hứng đã được lan tỏa đến hàng chục triệu người Việt Nam, mang lại khát vọng, đam mê cống hiến đến với giới trẻ.', NULL),
(8, 8, 'Phát hiện loài ếch mới ở biên giới Venezuela và Colombia', 'phat-hien-loai-ech-moi-o-bien-gioi-venezuela-va-colombia', 'Ếch Hyloscirtus japreria dài khoảng 2,8-3,9 cm, được phát hiện ở độ cao hơn 1.000 m, có màu sắc và tiếng kêu rất đặc trưng. ', 'Các nhà nghiên cứu vừa phát hiện một loài ếch mới ở vùng núi Perija, nằm trên biên giới giữa hai quốc gia Venezuela và Colombia. Nó được đặt tên là Hyloscirtus japreria, là loài ếch thứ 37 được phát hiện thuộc chi Hyloscirtus, họ Nhái bén, AFP hôm qua đưa tin.', '000-12C7WY-9060-1522392409.jpg'),
(9, 9, 'Acer ra mắt hệ sinh thái máy tính chơi game Predator, khẳng định vị thế tiên phong công nghệ', 'acer-ra-mat-he-sinh-thai-may-tinh-choi-game-predator-khang-dinh-vi-the-tien-phong-cong-nghe', 'Với rất nhiều desktop, màn hình và phụ kiện cũng như laptop trải dài từ cao cấp đến tầm trung, hệ sinh thái máy tính chơi game Predator của Acer là lựa chọn hoàn hảo cho các game thủ.', 'Những máy tính chơi game và phụ kiện với thương hiệu Predator đã được Acer chính thức giới thiệu đến cộng đồng game thủ Việt Nam vào ngày 31 tháng 3 năm 2018. Nằm trong chuỗi sự kiện triển lãm hệ sinh thái máy tính chơi game lớn nhất Việt Nam với tên gọi Predator – Đế Chế Trỗi Dậy, Acer một lẫn nữa khẳng định vị thế dẫn đầu về công nghệ của mình.', 'photo1522474127733-15224741277341721816031.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `idUser` int(11) NOT NULL,
  `ten` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `matKhau` varchar(255) DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`idUser`, `ten`, `email`, `matKhau`, `create_at`, `update_at`) VALUES
(1, 'Nguyễn Việt Hùng', 'hungnv@wru.vn', '123456', '2018-03-31 08:45:44', '0000-00-00 00:00:00'),
(2, 'Lý Tuấn Linh', 'linhlt52@wru.vn', '654321', '2018-03-31 08:45:44', '0000-00-00 00:00:00'),
(3, 'Nguyễn Tuấn Chinh', 'chinh97nd@gmail.com', '321654', '2018-03-31 08:46:32', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc đóng vai cho view `v_tintuc`
-- (See below for the actual view)
--
CREATE TABLE `v_tintuc` (
`ten` varchar(255)
,`idTinTuc` int(11)
,`idTheLoai` int(11)
,`tieude` varchar(255)
,`tieudekhongdau` varchar(255)
,`tomtat` text
,`noidung` longtext
,`hinh` varchar(255)
);

-- --------------------------------------------------------

--
-- Cấu trúc cho view `v_tintuc`
--
DROP TABLE IF EXISTS `v_tintuc`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_tintuc`  AS  select `theloai`.`ten` AS `ten`,`tintuc`.`idTinTuc` AS `idTinTuc`,`tintuc`.`idTheLoai` AS `idTheLoai`,`tintuc`.`tieude` AS `tieude`,`tintuc`.`tieudekhongdau` AS `tieudekhongdau`,`tintuc`.`tomtat` AS `tomtat`,`tintuc`.`noidung` AS `noidung`,`tintuc`.`hinh` AS `hinh` from (`theloai` join `tintuc`) where (`theloai`.`idTheLoai` = `tintuc`.`idTheLoai`) ;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`idCmt`),
  ADD KEY `idUser` (`idUser`),
  ADD KEY `idTinTuc` (`idTinTuc`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`idSlide`);

--
-- Chỉ mục cho bảng `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`idTheLoai`);

--
-- Chỉ mục cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`idTinTuc`),
  ADD KEY `idTheLoai` (`idTheLoai`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idUser`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `users` (`idUser`),
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`idTinTuc`) REFERENCES `tintuc` (`idTinTuc`);

--
-- Các ràng buộc cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  ADD CONSTRAINT `tintuc_ibfk_1` FOREIGN KEY (`idTheLoai`) REFERENCES `theloai` (`idTheLoai`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
