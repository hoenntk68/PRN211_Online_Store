﻿USE PRN211_Online_Store
GO
-- INSERT INTO [User]
INSERT INTO [User] (username, password, displayName) VALUES ('antt', '123456', N'Triệu Thạch Ân');
INSERT INTO [User] (username, password, displayName) VALUES ('chauntm', '123465', N'Nguyễn Thị Minh Châu');
INSERT INTO [User] (username, password, displayName) VALUES ('datdc', '123474', N'Đặng Công Đạt');
INSERT INTO [User] (username, password, displayName) VALUES ('datnq', '123483', N'Nguyễn Quốc Đạt');
INSERT INTO [User] (username, password, displayName) VALUES ('duckm', '123492', N'Khiếu Minh Đức');
INSERT INTO [User] (username, password, displayName) VALUES ('dungbt', '123501', N'Bùi Tiến Dũng');
INSERT INTO [User] (username, password, displayName) VALUES ('dungnt', '123510', N'Nguyễn Tuấn Dũng');
INSERT INTO [User] (username, password, displayName) VALUES ('duongcd', '123519', N'Chu Đức Dương');
INSERT INTO [User] (username, password, displayName) VALUES ('giangpt', '123528', N'Phạm Trường Giang');
INSERT INTO [User] (username, password, displayName) VALUES ('haunt', '123537', N'Nguyễn Thanh Hậu');
INSERT INTO [User] (username, password, displayName) VALUES ('hieudt', '123546', N'Đồng Trung Hiếu');
INSERT INTO [User] (username, password, displayName) VALUES ('hoangdn', '123555', N'Đinh Nhật Hoàng');
INSERT INTO [User] (username, password, displayName) VALUES ('hoangnd', '123564', N'Nguyễn Đăng Hoàng');
INSERT INTO [User] (username, password, displayName) VALUES ('huyenntk', '123573', N'Nguyễn Thị Khánh Huyền');
INSERT INTO [User] (username, password, displayName) VALUES ('lamtn', '123582', N'Tống Ngọc Lâm');
INSERT INTO [User] (username, password, displayName) VALUES ('minhnd', '123591', N'Nguyễn Đức Minh');
INSERT INTO [User] (username, password, displayName) VALUES ('namlm', '123600', N'Lê Minh Nam');
INSERT INTO [User] (username, password, displayName) VALUES ('namlx', '123609', N'Lê Xuân Nam');
INSERT INTO [User] (username, password, displayName) VALUES ('namnh', '123618', N'Nguyễn Hoàng Nam');
INSERT INTO [User] (username, password, displayName) VALUES ('namnt', '123627', N'Nguyễn Tiến Nam');
INSERT INTO [User] (username, password, displayName) VALUES ('nhatvn', '123636', N'Vũ Ngọc Nhất');
INSERT INTO [User] (username, password, displayName) VALUES ('phucdl', '123645', N'Doãn Lâm Phúc');
INSERT INTO [User] (username, password, displayName) VALUES ('phuonghm', '123654', N'Hoàng Mai Phương');
INSERT INTO [User] (username, password, displayName) VALUES ('tamvm', '123663', N'Vũ Minh Tâm');
INSERT INTO [User] (username, password, displayName) VALUES ('thanhdq', '123672', N'Đặng Quang Thanh');
INSERT INTO [User] (username, password, displayName) VALUES ('thinhnp', '123681', N'Nguyễn Phùng Thịnh');
UPDATE [User] SET avatarPath = 
(SELECT CASE 
	WHEN CAST(password AS int) % 5 = 1 THEN 'du1.jpg' 
	WHEN CAST(password AS int) % 5 = 2 THEN 'du2.jpg' 
	WHEN CAST(password AS int) % 5 = 3 THEN 'du3.jpg' 
	WHEN CAST(password AS int) % 5 = 4 THEN 'du4.jpg' 
	ELSE 'du5.jpg' END);

-- INSERT INTO [Product]
INSERT INTO [Product] (productName, stockUnit, soldUnit, unitPrice , productDescription) VALUES (N'Chảo Đá Chống Dính KHÔNG TỪ SUNHOUSE', '916', '21400', '0 ', N'Chảo Đá Chống Dính SUNHOUSE Size 24-30cm SBD 24-30

ĐẶC ĐIỂM NỔI BẬT

- Chảo đá chống dinh được làm từ hợp kim nhôm, sử dụng công nghệ đúc Hàn Quốc cho sản phẩm bền chắc

- Được phủ 3 lớp chống dính Whitford (USA) siêu bền

- Tráng lớp vân đá Marble có tính năng kháng khuẩn

- An toàn tuyệt đối với sức khỏe

Chảo đá SUNHOUSE siêu bền được tin dùng bởi công năng tuyệt vời, độ chống dính cao cùng với kết cấu bền chắc. Bề mặt phủ lớp đá Marble khiến cho tổng quan sản phẩm đẹp mắt, ấn tượng và nổi bật trong căn bếp hiện đại.>> 

Thiết kế hiện đại, kết cấu bền chắc

- Kiểu dáng hiện đại: Toàn bộ lòng chảo và bề mặt ngoài được phủ lớp vân đá hoa cương marble bền đẹp, phù hợp với không gian bếp trẻ trung.

');
INSERT INTO [Product] (productName, stockUnit, soldUnit, unitPrice , productDescription) VALUES (N'Khẩu trang 5D Mask FAMAPRO quai thun 3 lớp kháng khuẩn', '690', '29400', '0 ', N'Tên sản phẩm: Khẩu trang 5D Mask  Famapro quai thun 3 lớp
Thương hiệu: FAMAPRO
Xuất xứ: Việt Nam
Mã sản phẩm: 8936195060364
Sản phẩm thuộc Công Ty TNHH SẢN XUẤT-THƯƠNG MẠI Thiết Bị Nam Anh
Địa chỉ: Số 8-8A Đường Lê Lăng, Phường Phú Thọ Hoà, Quận Tân Phú, Hồ Chí Minh

Đối tượng sử dụng : Người lớn
Hạn sử dụng: 36 Tháng
Màu sắc: Trắng, Xanh, Hồng.
Quy cách đóng gói: Hộp 10 cái, Hộp 20 cái.

THÔNG SỐ SẢN PHẨM:
Tiêu chuẩn khẩu trang BFE, VFE, PFE ≥ 99%.
Loại: 3 lớp (2 lớp vải không dệt, 1 lớp meltblown)
Kích thước: 155 x 135 mm

CÔNG DỤNG VÀ ƯU ĐIỂM:
Thun đeo tai mềm, vải không dệt SMS Pluss 3+ và SS kháng nước.
Sản phẩm sử dụng 1 lần, sản phẩm không giặt tái sử dụng.
Chất liệu vải cotton không dệt thoáng khí.
BFE, VFE, PFE ≥ 99% giúp khả năng lọc khuẩn, bụi  tốt nhất.
Ngăn ngừa tia UV tiếp xúc da trẻ em.
Khẩu trang thiết kế 5D thông minh ôm sát, hàn siêu âm dọc thoáng khí không gây cảm giác ngộp cho trẻ, tạo cảm giác thoải mái, dễ chịu khi đeo.');
INSERT INTO [Product] (productName, stockUnit, soldUnit, unitPrice , productDescription) VALUES (N'Chuột không dây Logitech M220 Silent - giảm ồn', '3714', '24800', '259000 ', N'Chuột không dây Logitech M220 là sự kết hợp hoàn hảo giữa thiết kế và công nghệ học tiên tiến. Chuột không chỉ mang lại cảm giác thoải mái nhất khi sử dụng mà còn cho bạn thao tác chính xác, nhanh nhạy với khoảng cách sử dụng xa. Chuột Logitech M220 đặc biệt với khả năng giảm tiếng ồn khi click chuột lên đến 90% hứa hẹn sẽ mang lại không gian yên tĩnh cho bạn khi làm việc, tránh ảnh hưởng đến môi trường xung quanh.

GIẢM TIẾNG ỒN TRÊN 90%

Nếu như bạn luôn cần một không gian yên tĩnh để làm việc thì chuột Logitech M220 là sự lựa chọn tuyệt vời dành cho bạn. Với thiết kế cấu trúc cải tiến nhằm giảm tiếng ồn khi click chuột lên đến 90%, bạn sẽ luôn có một không gian yên tĩnh để tập trung và công việc của mình cũng như không gây tiếng ồn ảnh hưởng đến không gian xung quanh.

ĐƠN GIẢN, ĐỘ TIN CẬY CAO

Hãy tận hưởng một kết nối không dây lên tới 33 feet (10m) nhờ vào công nghệ không dây tiên tiến và đầu thu nano siêu nhỏ. Chuột  không dây Logitech M220 với cảm biến Logitech Advanced Optical Tracking cho thao tác cực kỳ chính xác trên hầu hết mọi bề mặt. Không cần phải cài đặt bất kỳ phần mềm nào, chỉ cần kết nối đầu thu với bất kỳ hệ điều hành Windows, hoặc Linux là chuột đã có thể hoạt động được ngay.

TUỔI THỌ PIN 18 THÁNG

Bằng kỹ thuật tiết kiệm năng lượng thông minh, chuột không dây Logitech M220 sẽ tự động chuyển sang chế độ “ngủ” khi không sử dụng. Nhờ đó, dung lượng pin sẽ được tiết kiệm đáng kể, có thể kéo dài lên đến 18 tháng. Công việc của bạn nhờ đó cũng được thực hiện trơn tru, không gián đoạn.

THIẾT KẾ CHO SỰ THOẢI MÁI.

Chuột Logitech M220 được đặc biệt thiết kế với kiểu dáng thân thiện với lòng bàn tay. Thiết kế thuận cả hai tay cho cảm giác thoải mái và di chuột chính xác hơn gấp nhiều lần so với khi sử dụng Touchpad trên bàn phím. Kích thước không quá cồng kềnh còn cho phép bạn dễ dàng mang theo chuột bên mình và sử dụng ở bất kỳ nơi đâu.');
INSERT INTO [Product] (productName, stockUnit, soldUnit, unitPrice , productDescription) VALUES (N'Bàn phím cơ Không Dây Bluetooth Ziyou K6BT Attack Gaming', '1437', '107', '0 ', N'Thông Tin Sản Phẩm: Bàn phím cơ K6BT Attack kết nối 3 chế độ Bluetooth 5.0 | Wireless 2.4G | Type C

- Tên Sản Phẩm: Bàn phím cơ K6BT Attack

- Phương Thức kết nối: Bluetooth/2.4G/ Type C

- Đèn nền: đèn nền Led Rainbow 10 chế độ ( fn + ins )

- Phím Chức Năng: Đầy đủ không xung đột phím

- Switch: Red

- Số phím: 98 phím

- Keycap Chất Liệu: ABS xuyên led

- Dung Lượng pin: 5000mAh

- Yêu Cầu hệ thống: Windows,Mac OS, IOS, Android

- Kết nối ba chế độ, hỗ trợ Bluetooth 5.0 / 2.4G / kết nối có dây

- Đèn nền RGB 18 Hiệu ứng đèn nền RGB

- Tất cả các phím không có xung đột

- Pin sạc lithium');
INSERT INTO [Product] (productName, stockUnit, soldUnit, unitPrice , productDescription) VALUES (N'Áo sơ mi nữ VMSTYLE tay ngắn cổ bẻ croptop trơn 1 túi bên basic', '2', '59', '195000 ', N'THÔNG TIN ÁO SƠ MI NỮ TAY NGẮN CỔ BẺ CROPTOP TRƠN 1 TÚI BÊN BASIC C07 - VMSTYLE

- Sản phẩm: Áo sơ mi croptop nữ

- Mã sản phẩm: SMU00150

- Sản xuất tại Việt Nam  

- Công ty sản xuất: Công ty TNHH thời trang An Việt

- Địa chỉ: 126 Tân Sơn Nhì, phường Tân Sơn Nhì, quận Tân Phú, Thành phố Hồ Chí Minh, Việt Nam

- Màu sắc: Trắng, Nude, Xanh đậu

- Size: S, M

+ Size S: Dài áo 46cm, ngang vai 39cm, ngang ngực 48cm , ngang lai 47cm, dài tay 23cm, ống tay 17cm

+ Size M: Dài áo 50cm, ngang vai 39cm, ngang ngực 48cm, ngang lai 47cm, dài tay 24cm, ống tay 18cm');
INSERT INTO [Product] (productName, stockUnit, soldUnit, unitPrice , productDescription) VALUES (N'Máy tăm nước sóng siêu âm usmile', '1151', '3000', '1490000 ', N'Gọn gàng, không dây và tiện dụng
usmile cho biết, thiết kế siêu gọn và trọng lượng nhẹ của CY1 là chìa khoá mang đến sự tiện dụng đáng bất ngờ cho bạn. Trên mọi hành trình, bạn chỉ cần sạc đầy pin, một bình nước sạch là có thể sử dụng máy ở mọi lúc mọi nơi. Mỗi lần sử dụng là một lần làm tươi mới, sạch sẽ và loại bỏ sạch thức ăn thừa, vốn là thủ phạm gây nên các vấn đề về răng miệng.

90 ngày sử dụng

Mỗi lần sạch đầy, smile CY1 có thể duy trì hoạt động lên đến 90 ngày, đây là thời gian sử dụng đuọc tính bằng thời gian 1 phút cho mỗi lần sử dụng. Chỉ cần sạc đầy thì CY1 sẽ ngay lập tức trở thành người bạn đồng hành với bạnh trên mọi nẻo đường, bất kể thời gian hay địa điểm nào.


Dung tích 180ml
Bình chứa của usmile CY1 có dung tích 180 mL, nghiên cứu của đội ngũ kỹ sư, nhà khoa học và chuyên gia răng miệng từ usmile chứng minh rằng, chỉ với 180 mL nước sạch, bạn đã có thể làm sạch các mảng bám, thức ăn thừa trong kẽ răng và trên bề mặt răng một cách an toàn.

4 chế độ, chăm sóc nướu răng và bề mặt răng
4 chế độ tích hợp bên trong usmile CY1 gồm massage, nhẹ nhàng, tiêu chuẩn và tăng áp đảm bảo đáp ứng các nhu cầu sử dụng khác nhau. Ngoải việc làm sạch răng miệng.

Chống nước, gấp gọn
Với thiết kế thông minh, usmile CY1 có thể được gấp gọn lại sau khi sử dụng, người dùng đơn giản chỉ cần kéo dài mở rộng khoan chứa nước hoặc thu gọn khi không còn nhu cầu sử dụng nữa.');
INSERT INTO [Product] (productName, stockUnit, soldUnit, unitPrice , productDescription) VALUES (N'Sữa rửa mặt không gây kích ứng cho da nhạy cảm Eucerin pH5 Facial Cleanser', '1029', '33700', '251000 ', N'Sản phẩm đã được nghên cứu và chứng minh giúp làm sạch sâu mà vẫn dịu nhẹ và không làm khô da. Đặc biệt phù hợp cho da nhạy cảm với 0% thành phần gây kích ứng da.
Sữa Rửa Mặt Eucerin Facial Cleanser PH5 Sensitive Skin Cho Da Nhạy Cảm 400ml
Sản phẩm đã được nghiên cứu và chứng minh giúp làm sạch sâu mà vẫn dịu nhẹ và không làm khô da nhờ hoạt chất Sodium Cocoamphoacetate. Đặc biệt, sản phẩm hoàn toàn phù hợp cho da nhạy cảm với 0% thành phần gây kích ứng da như: 
Không cồn
Không mùi
Không paraben
Không xà phòng
Hơn thế nữa, sản phẩm còn được bổ sung các hoạt chất dưỡng da như Panthenol và Citrate Buffer, có khả năng cân bằng độ pH cho da và khả năng cải thiện tình trạng nhạy cảm. Từ đó, làn da sạch sâu và khỏe hơn từng ngày.

Nghiên cứu lâm sàng và da liễu
Các nghiên cứu lâm sàng và da liễu chứng minh hiệu quả và khả năng dung nạp rất tốt ngay cả trên làn da nhạy cảm, bao gồm cả vùng da mắt mỏng manh. Sản phẩm phù hợp cho làn da bé từ 1 tháng tuổi.
Hướng dẫn sử dụng: Dùng sản phẩm vào buổi sáng và tối
Dùng nước ấm làm ướt da mặt
Cho sữa rửa mặt vào lòng bàn tay và tạo bọt
Nhẹ nhàng mát xa lên da mặt và rửa sạch lại với nước');
INSERT INTO [Product] (productName, stockUnit, soldUnit, unitPrice , productDescription) VALUES (N'Bigsize - Thạch hoa hồng dưỡng ẩm (kem dưỡng ẩm) Cocoon cấp ẩm & nuôi dưỡng', '395', '7200', '385000 ', N'Phiên bản BIG SIZE 100ml bảo vệ môi trường hơn, tiết kiệm hơn.

Với kết cấu mọng nước mang nhiều dưỡng chất từ nước hoa hồng hữu cơ kết hợp với nam châm dưỡng ẩm Pentavitin, các axit amin và HA, thạch hoa hồng sẽ nuôi dưỡng và khóa ẩm suốt 24 giờ, mang lại làn da đầy đặn, mềm mượt và mịn màng.

Công dụng
Nuôi dưỡng và khóa ẩm suốt 24 giờ
Làm dịu da tức thì, mang lại làn da đầy đặn, mềm mượt và mịn màng và tươi mới
Giảm sự xuất hiện của lỗ chân lông to
Cải thiện và duy trì hàng rào bảo vệ da khỏi tác nhân từ môi trường và thời tiết');
INSERT INTO [Product] (productName, stockUnit, soldUnit, unitPrice , productDescription) VALUES (N'Ví Vải DIM Basic Wallet Unisex', '2163', '20800', '179000 ', N'Basic Wallet là chiếc ví vải đầu tiên của DIM, được may bằng vải Polyester Cao cấp Chống thấm nước tuyệt đối, các đường chỉ cũng được may hết sức tỉ mỉ. Chiếc ví lấy cảm hứng từ những sản phẩm đơn giản nhưng vẫn mang lại tiện lợi tối đa cho khách hàng.
Ví vải Unisex - Một chiếc ví thân thiện với môi trường, thiết kế nhỏ bé nhưng đựng cả thế giới của bạn!');
INSERT INTO [Product] (productName, stockUnit, soldUnit, unitPrice , productDescription) VALUES (N'Balo Nam Nữ Chất liệu Chống thấm nước DIM Explorer Backpack', '1004', '7700', '490000', N'Ba lô All in One - DIM Explorer Backpack - Balo hiện đại với thiết kế mới nhất của DIM.
Chiếc Balo chống nước với chất liệu vải 1000D Polyester cao cấp giúp bạn yên tâm hơn khi sử dụng trong trời mưa
Phù hợp với mọi đối tượng mang cả nam và nữ. Thiết kế hiện đại dành cho dân công sở, học sinh - sinh viên đi học, mang đi du lịch ngắn ngày.');


-- INSERT INTO [Role]
INSERT INTO [Role] (roleName) VALUES ('Admin');
INSERT INTO [Role] (roleName) VALUES ('User');



-- INSERT INTO [Feature]
INSERT INTO [Feature] (featureName, featureUrl) VALUES ('Home Page', '');
INSERT INTO [Feature] (featureName, featureUrl) VALUES ('View Product', '');
INSERT INTO [Feature] (featureName, featureUrl) VALUES ('View Feedback', '');
INSERT INTO [Feature] (featureName, featureUrl) VALUES ('Add Product', '');
INSERT INTO [Feature] (featureName, featureUrl) VALUES ('Update Product', '');
INSERT INTO [Feature] (featureName, featureUrl) VALUES ('Delete Product', '');




-- INSERT INTO [UserRole]
INSERT INTO [UserRole] (username, roleId) VALUES ('antt', '1');
INSERT INTO [UserRole] (username, roleId) VALUES ('duckm', '1');
INSERT INTO [UserRole] (username, roleId) VALUES ('giangpt', '1');
INSERT INTO [UserRole] (username, roleId) VALUES ('huyenntk', '1');
INSERT INTO [UserRole] (username, roleId) VALUES ('phuonghm', '1');
INSERT INTO [UserRole] (username, roleId) VALUES ('chauntm', '2');
INSERT INTO [UserRole] (username, roleId) VALUES ('datdc', '2');
INSERT INTO [UserRole] (username, roleId) VALUES ('datnq', '2');
INSERT INTO [UserRole] (username, roleId) VALUES ('dungbt', '2');
INSERT INTO [UserRole] (username, roleId) VALUES ('dungnt', '2');
INSERT INTO [UserRole] (username, roleId) VALUES ('duongcd', '2');
INSERT INTO [UserRole] (username, roleId) VALUES ('haunt', '2');
INSERT INTO [UserRole] (username, roleId) VALUES ('hieudt', '2');
INSERT INTO [UserRole] (username, roleId) VALUES ('hoangdn', '2');
INSERT INTO [UserRole] (username, roleId) VALUES ('hoangnd', '2');
INSERT INTO [UserRole] (username, roleId) VALUES ('lamtn', '2');
INSERT INTO [UserRole] (username, roleId) VALUES ('minhnd', '2');
INSERT INTO [UserRole] (username, roleId) VALUES ('namlm', '2');
INSERT INTO [UserRole] (username, roleId) VALUES ('namlx', '2');
INSERT INTO [UserRole] (username, roleId) VALUES ('namnh', '2');
INSERT INTO [UserRole] (username, roleId) VALUES ('namnt', '2');
INSERT INTO [UserRole] (username, roleId) VALUES ('nhatvn', '2');
INSERT INTO [UserRole] (username, roleId) VALUES ('phucdl', '2');
INSERT INTO [UserRole] (username, roleId) VALUES ('tamvm', '2');
INSERT INTO [UserRole] (username, roleId) VALUES ('thanhdq', '2');
INSERT INTO [UserRole] (username, roleId) VALUES ('thinhnp', '2');



-- INSERT INTO [RoleFeature]
INSERT INTO [RoleFeature] (roleId, featureId) VALUES ('1', '1');
INSERT INTO [RoleFeature] (roleId, featureId) VALUES ('1', '2');
INSERT INTO [RoleFeature] (roleId, featureId) VALUES ('1', '3');
INSERT INTO [RoleFeature] (roleId, featureId) VALUES ('1', '4');
INSERT INTO [RoleFeature] (roleId, featureId) VALUES ('1', '5');
INSERT INTO [RoleFeature] (roleId, featureId) VALUES ('1', '6');
INSERT INTO [RoleFeature] (roleId, featureId) VALUES ('2', '1');
INSERT INTO [RoleFeature] (roleId, featureId) VALUES ('2', '2');



-- INSERT INTO [Category]
INSERT INTO [Category] (categoryName) VALUES (N'Balo & Túi ví');
INSERT INTO [Category] (categoryName) VALUES (N'Nhà cửa & Đời sống');
INSERT INTO [Category] (categoryName) VALUES (N'Sức khỏe');
INSERT INTO [Category] (categoryName) VALUES (N'Thời trang');
INSERT INTO [Category] (categoryName) VALUES (N'Máy tính & Laptop');
INSERT INTO [Category] (categoryName) VALUES (N'Sắc đẹp');



-- INSERT INTO [Variant]
INSERT INTO [Variant] (productId, variantName, variantPrice) VALUES ('1', N'Size 24', '232000');
INSERT INTO [Variant] (productId, variantName, variantPrice) VALUES ('1', N'Size 26', '243000');
INSERT INTO [Variant] (productId, variantName, variantPrice) VALUES ('1', N'Size 28', '296000');
INSERT INTO [Variant] (productId, variantName, variantPrice) VALUES ('1', N'Size 30', '317000');
INSERT INTO [Variant] (productId, variantName, variantPrice) VALUES ('2', N'Combo 50 cái trắng', '41500');
INSERT INTO [Variant] (productId, variantName, variantPrice) VALUES ('2', N'Hộp 10 cái 5D trắng', '8900');
INSERT INTO [Variant] (productId, variantName, variantPrice) VALUES ('2', N'Hộp 20 cái 5D trắng', '17000');
INSERT INTO [Variant] (productId, variantName, variantPrice) VALUES ('3', N'Xám', '259000');
INSERT INTO [Variant] (productId, variantName, variantPrice) VALUES ('3', N'Hồng', '259000');
INSERT INTO [Variant] (productId, variantName, variantPrice) VALUES ('4', N'K3 Đen Cam Có Dây', '619000');
INSERT INTO [Variant] (productId, variantName, variantPrice) VALUES ('4', N'K3 Trắng Xanh Có Dây', '619000');
INSERT INTO [Variant] (productId, variantName, variantPrice) VALUES ('4', N'K6BT Đen Cam BLT', '869000');
INSERT INTO [Variant] (productId, variantName, variantPrice) VALUES ('4', N'K6BT Trắng Xanh BLT', '869000');
INSERT INTO [Variant] (productId, variantName, variantPrice) VALUES ('5', N'Trắng S', '195000');
INSERT INTO [Variant] (productId, variantName, variantPrice) VALUES ('5', N'Nude S', '195000');
INSERT INTO [Variant] (productId, variantName, variantPrice) VALUES ('5', N'Trắng M', '195000');
INSERT INTO [Variant] (productId, variantName, variantPrice) VALUES ('5', N'Nude M', '195000');
INSERT INTO [Variant] (productId, variantName, variantPrice) VALUES ('6', N'CY1 Green', '1490000');
INSERT INTO [Variant] (productId, variantName, variantPrice) VALUES ('6', N'CY1 Pink', '1490000');
INSERT INTO [Variant] (productId, variantName, variantPrice) VALUES ('6', N'CY0 White', '1490000');
INSERT INTO [Variant] (productId, variantName, variantPrice) VALUES ('7', N'Default', '251000');
INSERT INTO [Variant] (productId, variantName, variantPrice) VALUES ('8', N'Default', '385000');
INSERT INTO [Variant] (productId, variantName, variantPrice) VALUES ('9', N'Đen', '179000');
INSERT INTO [Variant] (productId, variantName, variantPrice) VALUES ('9', N'Hồng Pastel', '179000');
INSERT INTO [Variant] (productId, variantName, variantPrice) VALUES ('9', N'Rêu', '179000');
INSERT INTO [Variant] (productId, variantName, variantPrice) VALUES ('10', N'Đen', '490000');
INSERT INTO [Variant] (productId, variantName, variantPrice) VALUES ('10', N'Xám', '490000');
INSERT INTO [Variant] (productId, variantName, variantPrice) VALUES ('10', N'Be', '490000');


-- INSERT INTO [ProductCategory]
INSERT INTO [ProductCategory] (productId, categoryId) VALUES ('1', '2');
INSERT INTO [ProductCategory] (productId, categoryId) VALUES ('2', '3');
INSERT INTO [ProductCategory] (productId, categoryId) VALUES ('3', '5');
INSERT INTO [ProductCategory] (productId, categoryId) VALUES ('4', '5');
INSERT INTO [ProductCategory] (productId, categoryId) VALUES ('5', '4');
INSERT INTO [ProductCategory] (productId, categoryId) VALUES ('6', '3');
INSERT INTO [ProductCategory] (productId, categoryId) VALUES ('7', '6');
INSERT INTO [ProductCategory] (productId, categoryId) VALUES ('8', '6');
INSERT INTO [ProductCategory] (productId, categoryId) VALUES ('9', '1');
INSERT INTO [ProductCategory] (productId, categoryId) VALUES ('10', '1');



-- INSERT INTO [ProductAttachment]
INSERT INTO [ProductAttachment] (productId, fileType, filePath, description) VALUES ('1', 'Image', 'chao-chong-dinh-sunhouse-sbds-28-700x467-1.jpg', '');
INSERT INTO [ProductAttachment] (productId, fileType, filePath, description) VALUES ('1', 'Image', '1581268183.jpg', '');
INSERT INTO [ProductAttachment] (productId, fileType, filePath, description) VALUES ('1', 'Image', 'chao-van-da-chong-dinh-lock-lock-stone-26cm-4-350x350.jpg', '');
INSERT INTO [ProductAttachment] (productId, fileType, filePath, description) VALUES ('1', 'Image', 'sunhouse-sfp24b_0011.jpg', '');
INSERT INTO [ProductAttachment] (productId, fileType, filePath, description) VALUES ('2', 'Image', 'ec69b481d684fd4e41cd17ead5631d5a.jpg', '');
INSERT INTO [ProductAttachment] (productId, fileType, filePath, description) VALUES ('2', 'Image', '5d-mask-chun-4-8826.jpg', '');
INSERT INTO [ProductAttachment] (productId, fileType, filePath, description) VALUES ('2', 'Image', '4508fa7f9b5592b6db6ef83cc802d003.jpg_501x501q90.jpg', '');
INSERT INTO [ProductAttachment] (productId, fileType, filePath, description) VALUES ('3', 'Image', 'unnamed.png', '');
INSERT INTO [ProductAttachment] (productId, fileType, filePath, description) VALUES ('3', 'Image', '19480f1539dbe3fc90408913dc7d20fa.jpg', '');
INSERT INTO [ProductAttachment] (productId, fileType, filePath, description) VALUES ('3', 'Image', '22612b9c943e0ad829912e62baa26d2e.png', '');
INSERT INTO [ProductAttachment] (productId, fileType, filePath, description) VALUES ('4', 'Image', 'f2cfeb179f6d94250b23b75a9663cee7.png', '');
INSERT INTO [ProductAttachment] (productId, fileType, filePath, description) VALUES ('4', 'Image', '20230301_nACKb0Qqej3Chpdu.jpeg', '');
INSERT INTO [ProductAttachment] (productId, fileType, filePath, description) VALUES ('4', 'Image', 'aebd9319ea05f5dcc75d39f944113418.jpg', '');
INSERT INTO [ProductAttachment] (productId, fileType, filePath, description) VALUES ('4', 'Image', '2eae89b7d4607339094d3a0aa2a5ca89.jpg', '');
INSERT INTO [ProductAttachment] (productId, fileType, filePath, description) VALUES ('5', 'Image', '6b31a84d5807dec2ffb5b56107f0c595.jpg', '');
INSERT INTO [ProductAttachment] (productId, fileType, filePath, description) VALUES ('5', 'Image', 'Gioi-thieu-ao-so-mi-nu-co-vest.jpeg', '');
INSERT INTO [ProductAttachment] (productId, fileType, filePath, description) VALUES ('5', 'Image', 'ea85102dee99b09aec7f4eb43d7367cf.jpg', '');
INSERT INTO [ProductAttachment] (productId, fileType, filePath, description) VALUES ('6', 'Image', 'artboard_8-100_ae42c2425120492fadab886c15a68a4e.webp', '');
INSERT INTO [ProductAttachment] (productId, fileType, filePath, description) VALUES ('6', 'Image', '3-3.jpg', '');
INSERT INTO [ProductAttachment] (productId, fileType, filePath, description) VALUES ('6', 'Image', '2-15.jpg', '');
INSERT INTO [ProductAttachment] (productId, fileType, filePath, description) VALUES ('7', 'Image', 'Eucerin_Packshot_ProACNE.jpg', '');
INSERT INTO [ProductAttachment] (productId, fileType, filePath, description) VALUES ('7', 'Image', 'sua-rua-mat-eucerin-diu-nhe-cho-da-nhay-cam-1.jpg', '');
INSERT INTO [ProductAttachment] (productId, fileType, filePath, description) VALUES ('8', 'Image', '29892142_slide_3_aeb65b422b.jpg', '');
INSERT INTO [ProductAttachment] (productId, fileType, filePath, description) VALUES ('8', 'Image', 'facebook-dynamic-kem-duong-cocoon-duong-am-dang-thach-tu-hoa-hong-30ml.jpg', '');
INSERT INTO [ProductAttachment] (productId, fileType, filePath, description) VALUES ('9', 'Image', 'DIM5_b46ad49a-e099-4e87-892f-70bc831d11c0_950x.jpg', '');
INSERT INTO [ProductAttachment] (productId, fileType, filePath, description) VALUES ('9', 'Image', 'bbf3f7f8fcf18fd5e2f249b635367112.jpg', '');
INSERT INTO [ProductAttachment] (productId, fileType, filePath, description) VALUES ('9', 'Image', '37887644f0bd0a32554e2a4abd4b2641.jpg', '');
INSERT INTO [ProductAttachment] (productId, fileType, filePath, description) VALUES ('10', 'Image', '5a88ae0a5cab7492817582174faf3abe.jpg', '');
INSERT INTO [ProductAttachment] (productId, fileType, filePath, description) VALUES ('10', 'Image', 'sg-11134201-22110-a3zclhlmrgkvbf.jpg', '');
INSERT INTO [ProductAttachment] (productId, fileType, filePath, description) VALUES ('10', 'Image', 'e9f3fcb1c2eedda9466c363a5ba05c3f.jpg', '');


-- INSERT INTO [Feedback]
INSERT INTO [Feedback] (username, productId, rating, comment, feedbackTime) VALUES ('antt', '1', '4', N'sản phẩm dùng tốt ', '2023-6-30 15:00:00');
INSERT INTO [Feedback] (username, productId, rating, comment, feedbackTime) VALUES ('chauntm', '1', '5', N'sản phẩm ổn, giao hàng nhanh', '2023-7-1 09:00:00');
INSERT INTO [Feedback] (username, productId, rating, comment, feedbackTime) VALUES ('datdc', '2', '3', N'hàng ổn so với giá tiền', '2023-6-30 15:00:00');
INSERT INTO [Feedback] (username, productId, rating, comment, feedbackTime) VALUES ('datnq', '2', '4', N'dùng tạm được', '2023-7-1 09:00:00');
INSERT INTO [Feedback] (username, productId, rating, comment, feedbackTime) VALUES ('duckm', '3', '5', N'sản phẩm dùng tốt ', '2023-6-30 15:00:00');
INSERT INTO [Feedback] (username, productId, rating, comment, feedbackTime) VALUES ('dungbt', '3', '3', N'sản phẩm ổn, giao hàng nhanh', '2023-7-1 09:00:00');
INSERT INTO [Feedback] (username, productId, rating, comment, feedbackTime) VALUES ('dungnt', '4', '4', N'hàng ổn so với giá tiền', '2023-6-30 15:00:00');
INSERT INTO [Feedback] (username, productId, rating, comment, feedbackTime) VALUES ('duongcd', '4', '5', N'dùng tạm được', '2023-7-1 09:00:00');
INSERT INTO [Feedback] (username, productId, rating, comment, feedbackTime) VALUES ('giangpt', '5', '3', N'sản phẩm dùng tốt ', '2023-6-30 15:00:00');
INSERT INTO [Feedback] (username, productId, rating, comment, feedbackTime) VALUES ('haunt', '5', '4', N'sản phẩm ổn, giao hàng nhanh', '2023-7-1 09:00:00');
INSERT INTO [Feedback] (username, productId, rating, comment, feedbackTime) VALUES ('hieudt', '6', '5', N'hàng ổn so với giá tiền', '2023-6-30 15:00:00');
INSERT INTO [Feedback] (username, productId, rating, comment, feedbackTime) VALUES ('hoangdn', '6', '3', N'dùng tạm được', '2023-7-1 09:00:00');
INSERT INTO [Feedback] (username, productId, rating, comment, feedbackTime) VALUES ('hoangnd', '7', '4', N'sản phẩm dùng tốt ', '2023-6-30 15:00:00');
INSERT INTO [Feedback] (username, productId, rating, comment, feedbackTime) VALUES ('huyenntk', '7', '5', N'sản phẩm ổn, giao hàng nhanh', '2023-7-1 09:00:00');
INSERT INTO [Feedback] (username, productId, rating, comment, feedbackTime) VALUES ('lamtn', '8', '3', N'hàng ổn so với giá tiền', '2023-6-30 15:00:00');
INSERT INTO [Feedback] (username, productId, rating, comment, feedbackTime) VALUES ('minhnd', '8', '4', N'dùng tạm được', '2023-7-1 09:00:00');
INSERT INTO [Feedback] (username, productId, rating, comment, feedbackTime) VALUES ('namlm', '9', '5', N'sản phẩm dùng tốt ', '2023-6-30 15:00:00');
INSERT INTO [Feedback] (username, productId, rating, comment, feedbackTime) VALUES ('namlx', '9', '3', N'sản phẩm ổn, giao hàng nhanh', '2023-7-1 09:00:00');
INSERT INTO [Feedback] (username, productId, rating, comment, feedbackTime) VALUES ('namnh', '10', '0', N'hàng ổn so với giá tiền', '2023-6-30 15:00:00');
INSERT INTO [Feedback] (username, productId, rating, comment, feedbackTime) VALUES ('namnt', '10', '5', N'dùng tạm được', '2023-7-1 09:00:00');



-- INSERT INTO FeedbackAttachment
INSERT INTO [FeedbackAttachment] (feedbackId, fileType) VALUES (1, 'Image')
INSERT INTO [FeedbackAttachment] (feedbackId, fileType) VALUES (2, 'Image')
INSERT INTO [FeedbackAttachment] (feedbackId, fileType) VALUES (3, 'Image')
INSERT INTO [FeedbackAttachment] (feedbackId, fileType) VALUES (4, 'Image')
INSERT INTO [FeedbackAttachment] (feedbackId, fileType) VALUES (5, 'Image')
INSERT INTO [FeedbackAttachment] (feedbackId, fileType) VALUES (6, 'Image')
INSERT INTO [FeedbackAttachment] (feedbackId, fileType) VALUES (7, 'Image')
INSERT INTO [FeedbackAttachment] (feedbackId, fileType) VALUES (8, 'Image')
INSERT INTO [FeedbackAttachment] (feedbackId, fileType) VALUES (9, 'Image')
INSERT INTO [FeedbackAttachment] (feedbackId, fileType) VALUES (10, 'Image')
INSERT INTO [FeedbackAttachment] (feedbackId, fileType) VALUES (11, 'Image')
INSERT INTO [FeedbackAttachment] (feedbackId, fileType) VALUES (12, 'Image')
INSERT INTO [FeedbackAttachment] (feedbackId, fileType) VALUES (13, 'Image')
INSERT INTO [FeedbackAttachment] (feedbackId, fileType) VALUES (14, 'Image')
INSERT INTO [FeedbackAttachment] (feedbackId, fileType) VALUES (15, 'Image')
INSERT INTO [FeedbackAttachment] (feedbackId, fileType) VALUES (16, 'Image')
INSERT INTO [FeedbackAttachment] (feedbackId, fileType) VALUES (17, 'Image')
INSERT INTO [FeedbackAttachment] (feedbackId, fileType) VALUES (18, 'Image')
INSERT INTO [FeedbackAttachment] (feedbackId, fileType) VALUES (19, 'Image')
INSERT INTO [FeedbackAttachment] (feedbackId, fileType) VALUES (20, 'Image')
UPDATE [FeedbackAttachment] SET filePath = 'sampleFeedback.png';
select * from FeedbackAttachment where feedbackId = 1;
select * from [User];

-- INSERT INTO 

-- SELECT FROM TABLES
/* 
SELECT * FROM [ProductCategory];
SELECT * FROM [UserRole];
SELECT * FROM [RoleFeature];
SELECT * FROM [Variant];
SELECT * FROM [ProductAttachment];
SELECT * FROM [FeedbackAttachment];
SELECT * FROM [Feedback];
SELECT * FROM [Product];
SELECT * FROM [User];
SELECT * FROM [Role];
SELECT * FROM [Feature];
SELECT * FROM [Category];
*/

--- DELETE FROM TABLES
/* 
DELETE FROM [ProductCategory];
DELETE FROM [UserRole];
DELETE FROM [RoleFeature];
DELETE FROM [Variant];
DELETE FROM [ProductAttachment];
DELETE FROM [FeedbackAttachment];
DELETE FROM [Feedback];
DELETE FROM [Product];
DELETE FROM [User];
DELETE FROM [Role];
DELETE FROM [Feature];
DELETE FROM [Category];
*/ 
