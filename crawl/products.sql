-- =============================================
-- BloomStore - SQL Import Script
-- Crawled from: https://shophoa.techcave.space/api
-- Date: 2026-03-20
-- =============================================

SET NAMES utf8mb4;
SET foreign_key_checks = 0;

-- =============================================
-- INSERT CATEGORIES
-- =============================================
INSERT INTO categories (id, name, slug, description, thumbnail, parentId, showInMenu) VALUES (6, 'Bó Hoa Sinh Nhật', 'bo-hoa-sinh-nhat', '', '/uploads/1773880518252-gtirp6.webp', 2, 1) ON DUPLICATE KEY UPDATE name='Bó Hoa Sinh Nhật', slug='bo-hoa-sinh-nhat', parentId=2;
INSERT INTO categories (id, name, slug, description, thumbnail, parentId, showInMenu) VALUES (1, 'Giỏ Hoa Quả', 'gio-hoa-qua', '', '/uploads/1773880593880-0spr9l.webp', NULL, 1) ON DUPLICATE KEY UPDATE name='Giỏ Hoa Quả', slug='gio-hoa-qua', parentId=NULL;
INSERT INTO categories (id, name, slug, description, thumbnail, parentId, showInMenu) VALUES (7, 'Giỏ Hoa Sinh Nhật ', 'gio-hoa-sinh-nhat', '', '/uploads/1773881259827-rz12h9.webp', 2, 1) ON DUPLICATE KEY UPDATE name='Giỏ Hoa Sinh Nhật ', slug='gio-hoa-sinh-nhat', parentId=2;
INSERT INTO categories (id, name, slug, description, thumbnail, parentId, showInMenu) VALUES (5, 'Hoa Chia Buồn', 'sympathy', 'Hoa chia sẻ đồng cảm', '/uploads/1773881267051-6s32ei.webp', NULL, 1) ON DUPLICATE KEY UPDATE name='Hoa Chia Buồn', slug='sympathy', parentId=NULL;
INSERT INTO categories (id, name, slug, description, thumbnail, parentId, showInMenu) VALUES (4, 'Hoa Chúc Mừng', 'congratulation', 'Hoa chúc mừng khai trương, tốt nghiệp', '/uploads/1773881281396-ogaqxf.webp', NULL, 1) ON DUPLICATE KEY UPDATE name='Hoa Chúc Mừng', slug='congratulation', parentId=NULL;
INSERT INTO categories (id, name, slug, description, thumbnail, parentId, showInMenu) VALUES (2, 'Hoa Sinh Nhật', 'birthday', 'Hoa tươi cho ngày sinh nhật', NULL, NULL, 1) ON DUPLICATE KEY UPDATE name='Hoa Sinh Nhật', slug='birthday', parentId=NULL;

-- =============================================
-- INSERT PRODUCTS
-- =============================================
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (3, 'Bó hoa sinh nhật rực rỡ', NULL, 2, 'Hoa hướng dương và hoa hồng cam', 'Bó hoa sinh nhật tràn đầy năng lượng với sự kết hợp rực rỡ giữa hoa hướng dương và hoa hồng cam.', '800000', NULL, NULL, 4, 15, '["6 hoa hướng dương tươi", "12 hoa hồng cam Ecuador", "Lá xanh trang trí", "Giấy gói màu sắc rực rỡ"]', '["Sinh nhật", "Chúc mừng", "Động viên"]', '2026-02-17 09:33:29.787', '2026-02-17 09:33:29.787') ON DUPLICATE KEY UPDATE name='Bó hoa sinh nhật rực rỡ', slug=NULL, price='800000', category_id=2;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (4, 'Hộp hoa kỷ niệm', NULL, NULL, 'Hoa hồng đỏ trong hộp sang trọng', 'Hộp hoa sang trọng với hoa hồng đỏ Ecuador, phù hợp cho các dịp kỷ niệm đặc biệt.', '1800000', NULL, 'Premium', 5, 31, '["30 hoa hồng đỏ Ecuador", "Hộp đựng cao cấp", "Nơ lụa sang trọng", "Thiệp chúc mừng"]', '["Kỷ niệm", "Valentine", "Ngày phụ nữ"]', '2026-02-17 09:33:29.795', '2026-02-17 09:33:29.795') ON DUPLICATE KEY UPDATE name='Hộp hoa kỷ niệm', slug=NULL, price='1800000', category_id=NULL;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (7, 'Hoa Chia Buồn 001 ', 'hoa-chia-buon-001', 5, '', 'Kệ hoa được thiết kế bởi:

– Hoa hồng trắng
– Hoa cúc trắng
– Mix thêm hoa, lá và một số phụ kiện khác

Tổng thể kệ hoa mang sắc màu trang nhã, hài hòa, thể hiện trọn vẹn sự tiếc thương và lòng kính viếng sâu sắc.', '1240000', NULL, NULL, 0, 0, '[]', '["Đám Tang"]', '2026-02-17 12:12:36.124', '2026-02-17 12:14:41.000') ON DUPLICATE KEY UPDATE name='Hoa Chia Buồn 001 ', slug='hoa-chia-buon-001', price='1240000', category_id=5;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (8, 'Hoa Chia Buồn 002', 'hoa-chia-buon-002', 5, '', 'Kệ hoa được thiết kế bởi:

– Hoa hồng trắng
– Hoa lan trắng
– Hoa baby trắng
– Kết hợp cùng lá xanh bản lớn và phụ kiện nơ voan trắng

Tổng thể kệ hoa mang tông màu trắng – xanh thanh nhã, thể hiện sự tinh khiết, trang nghiêm và lòng kính viếng sâu sắc.', '1050000', NULL, NULL, 0, 0, '[]', '["Đám Tang"]', '2026-02-17 12:23:13.162', '2026-02-17 12:34:47.000') ON DUPLICATE KEY UPDATE name='Hoa Chia Buồn 002', slug='hoa-chia-buon-002', price='1050000', category_id=5;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (9, 'Hoa Chia Buồn 003', 'hoa-chia-buon-003', 5, '', 'Kệ hoa được thiết kế bởi:

– Hoa lan trắng kết vòng tròn trung tâm
– Hoa cúc trắng
– Điểm xuyết hoa lan nụ và hoa phụ trắng
– Lá xanh bản lớn xếp tỏa tròn
– Nơ voan trắng trang trí nổi bật

Tổng thể kệ hoa mang tông trắng – xanh thanh nhã, thể hiện sự tinh khiết, trang trọng và lòng kính viếng sâu sắc.', '1390000', NULL, NULL, 0, 0, '[]', '["Đám Tang"]', '2026-02-17 12:27:08.206', '2026-02-27 13:43:29.000') ON DUPLICATE KEY UPDATE name='Hoa Chia Buồn 003', slug='hoa-chia-buon-003', price='1390000', category_id=5;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (10, 'Hoa Chia Buồn 004', 'hoa-chia-buon-004', 5, '', 'Kệ hoa được thiết kế bởi:

– Hoa cúc trắng
– Hoa lan tím 
– Điểm xuyết hoa trắng nhỏ 
– Kết hợp cùng lá xanh bản lớn xếp vòng tròn
– Phụ kiện nơ lưới trắng và voan trắng trang trí chân kệ

Tổng thể kệ hoa mang tông màu trắng – tím – xanh trang trọng và hài hòa. Sắc trắng tượng trưng cho sự tiếc thương và tiễn biệt, sắc tím thể hiện lòng thành kính và sự thủy chung, kết hợp nền lá xanh tạo bố cục vững chãi, sang trọng.', '1520000', NULL, NULL, 0, 0, '[]', '["Đám Tang"]', '2026-02-17 12:42:11.730', '2026-02-17 12:42:11.730') ON DUPLICATE KEY UPDATE name='Hoa Chia Buồn 004', slug='hoa-chia-buon-004', price='1520000', category_id=5;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (11, 'Hoa Chia Buồn 005', 'hoa-chia-buon-005', 5, '', 'Kệ hoa được thiết kế bởi:
– Hoa hồng trắng
– Hoa lan trắng 
– Hoa cúc trắng
– Kết hợp cùng lá xanh bản lớn xếp tầng vững chắc
Kệ hoa mang tông trắng – xanh chủ đạo, thể hiện sự tinh khiết, tiếc thương và lòng thành kính sâu sắc. Sắc trắng của hoa tượng trưng cho sự tiễn biệt thanh cao, trong khi nền lá xanh tạo cảm giác trang trọng, bền vững và hài hòa.', '2500000', NULL, NULL, 0, 0, '[]', '["Đám Tang"]', '2026-02-17 12:51:18.078', '2026-02-17 12:58:52.000') ON DUPLICATE KEY UPDATE name='Hoa Chia Buồn 005', slug='hoa-chia-buon-005', price='2500000', category_id=5;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (12, 'Hoa Chia Buồn 006', 'hoa-chia-buon-006', 5, '', 'Kệ hoa được thiết kế bởi:

– Hoa hồng trắng
– Hoa hồng vàng
– Hoa cúc trắng
– Hoa baby trắng
– Điểm xuyết lá bạc và lá xanh bản lớn
– Phụ kiện giấy gói trắng tạo form tròn hiện đại

Tổng thể kệ hoa mang tông màu trắng – vàng – xanh trang nhã và ấm áp. Sắc trắng tượng trưng cho sự tiếc thương và tiễn biệt nhẹ nhàng, sắc vàng thể hiện lòng biết ơn và sự trân trọng, kết hợp nền lá xanh tạo bố cục hài hòa, sang trọng.', '1200000', NULL, NULL, 0, 0, '[]', '["Đám Tang"]', '2026-02-17 12:56:40.737', '2026-03-16 07:46:52.000') ON DUPLICATE KEY UPDATE name='Hoa Chia Buồn 006', slug='hoa-chia-buon-006', price='1200000', category_id=5;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (13, 'Hoa Chia Buồn 007', 'hoa-chia-buon-007', 5, '', 'Kệ hoa được thiết kế bởi:

– Hoa cúc vàng
– Hoa hồng pastel (hồng nhạt)
– Kết hợp cùng lá xanh bản lớn xếp vòng tròn
– Phụ kiện nơ vàng nổi bật và chân kệ phủ voan vàng

Tổng thể kệ hoa mang tông màu vàng – xanh trang trọng và ấm áp. Sắc vàng tượng trưng cho lòng biết ơn, sự kính trọng và tiễn đưa trang nghiêm. Hoa hồng pastel xen kẽ tạo điểm nhấn nhẹ nhàng, hài hòa. ', '1200000', NULL, NULL, 0, 0, '[]', '["Đám Tang"]', '2026-02-17 13:04:43.579', '2026-02-17 13:04:43.579') ON DUPLICATE KEY UPDATE name='Hoa Chia Buồn 007', slug='hoa-chia-buon-007', price='1200000', category_id=5;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (14, 'Hoa Chia Buồn 008', 'hoa-chia-buon-008', 5, '', 'Kệ hoa được thiết kế bởi:

– Hoa cúc trắng
– Hoa baby trắng
– Điểm xuyết lá xanh và lá bản lớn
– Giấy gói trắng viền đen tạo form tròn hiện đại
– Bố cục 3 tầng cân đối, vững chãi

Tổng thể kệ hoa mang tông màu trắng – xanh trang nhã và trang nghiêm. Sắc trắng tượng trưng cho sự tinh khiết, tiếc thương và lời tiễn biệt nhẹ nhàng. Hoa baby xen kẽ tạo cảm giác mềm mại, thanh thoát. Nền lá xanh bản lớn giúp tổng thể hài hòa, sang trọng và đầy đặn.', '1780000', NULL, NULL, 0, 0, '[]', '["Đám Tang"]', '2026-02-17 13:12:03.649', '2026-03-16 07:48:00.000') ON DUPLICATE KEY UPDATE name='Hoa Chia Buồn 008', slug='hoa-chia-buon-008', price='1780000', category_id=5;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (15, 'Hoa Chia Buồn 009', 'hoa-chia-buon-009', 5, '', 'Kệ hoa được thiết kế bởi:

– Hoa lan trắng
– Hoa lan tím 
– Hoa hồng trắng
– Kết hợp cùng lá xanh bản lớn xếp nan quạt vòng tròn
– Phụ kiện nơ voan trắng trang trí chân kệ

Tổng thể kệ hoa mang tông màu trắng – tím – xanh trang trọng và hài hòa. Sắc trắng tượng trưng cho sự tiếc thương và tiễn biệt thanh khiết, sắc tím thể hiện lòng thành kính và sự thủy chung. Vòng hoa lan tím – trắng nổi bật trên nền lá xanh tạo bố cục vững chãi, sang trọng và đầy đặn.', '900000', NULL, NULL, 0, 0, '[]', '["Đám Tang"]', '2026-02-17 13:21:46.873', '2026-02-17 13:21:46.873') ON DUPLICATE KEY UPDATE name='Hoa Chia Buồn 009', slug='hoa-chia-buon-009', price='900000', category_id=5;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (16, 'Hoa Chia Buồn 010', 'hoa-chia-buon-010', 5, '', 'Kệ hoa được thiết kế bởi:

– Hoa hồng trắng
– Hoa cúc trắng 
– Hoa lan hồ điệp trắng
– Điểm xuyết hoa baby trắng 
– Kết hợp cùng lá xanh 
– Giấy gói trắng xếp tầng tạo form hiện đại, sang trọng

Tổng thể kệ hoa mang tông màu trắng – xanh thanh khiết và trang nghiêm. Sắc trắng tượng trưng cho sự tiếc thương, tiễn biệt và lòng thành kính sâu sắc. Hoa lan hồ điệp đặt trung tâm tạo điểm nhấn nổi bật, thể hiện sự trang trọng và cao quý. Nền lá xanh cùng bố cục hai tầng giúp tổng thể hài hòa, vững chãi và tinh tế.', '2850000', NULL, NULL, 0, 0, '[]', '["Đám Tang"]', '2026-02-17 13:25:50.444', '2026-02-17 13:25:50.444') ON DUPLICATE KEY UPDATE name='Hoa Chia Buồn 010', slug='hoa-chia-buon-010', price='2850000', category_id=5;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (17, 'Hoa Chia Buồn 011', 'hoa-chia-buon-011', 5, '', 'Kệ hoa được thiết kế bởi:

– Hoa hồng trắng
– Hoa cúc trắng 
– Hoa baby trắng
– Thiết kế vòng tròn truyền thống
– Phụ kiện nơ voan trắng lớn trang trí chân kệ

Tổng thể kệ hoa mang tông màu nhẹ nhàng và trang nghiêm. Tượng trưng cho sự tiếc thương và tiễn biệt thanh khiết. Thiết kế vòng hoa tròn đầy đặn tạo cảm giác trọn vẹn, thành kính và trang trọng.', '1090000', NULL, NULL, 0, 0, '[]', '["Đám Tang"]', '2026-02-17 14:10:13.391', '2026-02-17 14:10:13.391') ON DUPLICATE KEY UPDATE name='Hoa Chia Buồn 011', slug='hoa-chia-buon-011', price='1090000', category_id=5;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (18, 'Hoa Chia Buồn 012', 'hoa-chia-buon-012', 5, '', 'Kệ hoa được thiết kế bởi:

– Hoa hồng kem
– Hoa cúc trắng
– Phụ kiện nơ voan trắng trang trí giữa và chân kệ

Tổng thể kệ hoa mang tông màu hồng - trắng, nhẹ nhàng và trang trọng. Sắc hồng phấn thể hiện sự yêu thương, trân quý và tiếc thương sâu sắc. Sắc trắng tượng trưng cho sự tiễn biệt thanh khiết và thành kính. ', '850000', NULL, NULL, 0, 0, '[]', '["Đám Tang"]', '2026-02-18 02:05:56.227', '2026-02-18 02:05:56.227') ON DUPLICATE KEY UPDATE name='Hoa Chia Buồn 012', slug='hoa-chia-buon-012', price='850000', category_id=5;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (19, 'Hoa Chia Buồn 013', 'hoa-chia-buon-013', 5, '', 'Kệ hoa được thiết kế bởi:

– Hoa hồng vàng 
– Điểm xuyết lá 
Thiết kế vòng tròn hoa hồng kết hợp chân kệ vàng đồng bộ giúp tổng thể mạnh mẽ, nổi bật nhưng vẫn giữ được sự trang trọng, phù hợp gửi viếng tang lễ với thông điệp chia buồn thành kính và sâu sắc.', '1420000', NULL, NULL, 0, 0, '[]', '["Đám Tang"]', '2026-02-18 02:11:55.690', '2026-02-18 02:11:55.690') ON DUPLICATE KEY UPDATE name='Hoa Chia Buồn 013', slug='hoa-chia-buon-013', price='1420000', category_id=5;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (20, 'Hoa Chia Buồn 014', 'hoa-chia-buon-014', 5, '', 'Kệ hoa được thiết kế bởi:

– Hoa hồng vàng 
– Hoa lan vàng điểm rũ mềm mại
– Lá xanh bản lớn tạo nền vững chãi
– Phụ kiện giấy gói vàng nổi bật, tạo form 3 tầng hiện đại

Tổng thể kệ hoa mang tông màu vàng trang trọng và ấm áp, tượng trưng cho sự kính trọng, biết ơn và tiễn đưa trang nghiêm.', '1820000', NULL, NULL, 0, 0, '[]', '["Đám Tang"]', '2026-02-18 11:14:52.278', '2026-02-18 11:14:52.278') ON DUPLICATE KEY UPDATE name='Hoa Chia Buồn 014', slug='hoa-chia-buon-014', price='1820000', category_id=5;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (21, 'Hoa Chia Buồn 015', 'hoa-chia-buon-015', 5, '', 'Kệ hoa được thiết kế bởi:

– Hoa lan tím 
– Vòng hoa kết tròn dày, tạo form truyền thống trang nghiêm
– Phụ kiện nơ voan tím và trắng tạo điểm nhấn mềm mại

Tổng thể kệ hoa mang tông màu tím  thể hiện sự tiếc thương sâu lắng và thành kính; tượng trưng cho sự tiễn biệt nhẹ nhàng. ', '1520000', NULL, NULL, 0, 0, '[]', '["Đám Tang"]', '2026-02-18 11:19:37.333', '2026-02-18 11:19:37.333') ON DUPLICATE KEY UPDATE name='Hoa Chia Buồn 015', slug='hoa-chia-buon-015', price='1520000', category_id=5;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (22, 'Hoa Chia Buồn 016', 'hoa-chia-buon-016', 5, '', 'Kệ hoa được thiết kế bởi:

– Hoa hồng trắng chủ đạo
– Hoa cúc trắng phối xen tạo độ đầy đặn
– Lá xanh nền tạo chiều sâu
– Phụ kiện giấy gói trắng xếp tầng tạo form hiện đại, sang trọng

Tổng thể kệ hoa mang tông màu trắng – xanh trang nhã và thanh khiết. Sắc trắng tượng trưng cho sự tiếc thương, tiễn biệt nhẹ nhàng và thành kính; nền lá xanh giúp bố cục hài hòa, tinh tế, tạo nên tổng thể trang trọng và đầy sự tôn nghiêm.', '1590000', NULL, NULL, 0, 0, '[]', '["Đám Tang"]', '2026-02-18 13:02:29.569', '2026-02-27 13:44:38.000') ON DUPLICATE KEY UPDATE name='Hoa Chia Buồn 016', slug='hoa-chia-buon-016', price='1590000', category_id=5;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (23, 'Hoa Chia Buồn 017', 'hoa-chia-buon-017', 5, '', 'Kệ hoa được thiết kế bởi:

– Hoa hồng vàng 
– Hoa lan vàng kết vòng tròn truyền thống
– Hoa cúc vàng điểm xen tạo độ đầy đặn
– Phụ kiện nơ và giấy gói vàng tạo form sang trọng, nổi bật

Tổng thể kệ hoa mang tông màu vàng – xanh trang nghiêm và ấm áp, tượng trưng cho lòng kính trọng, biết ơn và sự tiễn đưa thành kính.', '2150000', NULL, NULL, 0, 0, '[]', '["Đám Tang"]', '2026-02-18 13:05:30.862', '2026-02-27 13:45:33.000') ON DUPLICATE KEY UPDATE name='Hoa Chia Buồn 017', slug='hoa-chia-buon-017', price='2150000', category_id=5;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (24, 'Hoa Chia Buồn 018', 'hoa-chia-buon-018', 5, '', 'Kệ hoa được thiết kế bởi:

– Hoa cúc vàng chủ đạo
– Hoa hồng kem phối xen hài hòa
– Phụ kiện giấy gói đen xếp tầng sang trọng, nhấn nơ vàng tinh tế
Kệ hoa mang ý nghĩa kính trọng, biết ơn và tiễn biệt trang nghiêm. Sự kết hợp giữa sắc vàng ấm áp, trắng thanh khiết và nền đen trang trọng tạo nên tổng thể vừa nổi bật vừa thành kính, phù hợp gửi viếng gia đình, người thân hoặc đối tác.', '930000', NULL, NULL, 0, 0, '[]', '["Đám Tang"]', '2026-02-18 13:08:47.549', '2026-03-16 07:50:08.000') ON DUPLICATE KEY UPDATE name='Hoa Chia Buồn 018', slug='hoa-chia-buon-018', price='930000', category_id=5;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (25, 'Hoa Chia Buồn 019', 'hoa-chia-buon-019', 5, '', 'Kệ hoa được thiết kế bởi:

– Hoa lan trắng kết vòng tròn truyền thống
– Hoa hồng trắng chủ đạo ở cụm trung tâm
– Hoa lan trắng rũ mềm mại phía dưới
– Phụ kiện nơ lưới trắng và giấy gói trắng xếp tầng hiện đại
Tổng thể kệ hoa mang thông điệp chia buồn chân thành, thể hiện sự kính trọng và tri ân đối với người đã khuất. Sự hòa quyện giữa gam trắng thuần khiết, sắc vàng dịu nhẹ và nền đen trang nghiêm tạo nên vẻ đẹp nổi bật nhưng vẫn đầy trang trọng.', '1330000', NULL, NULL, 0, 0, '[]', '["Đám Tang"]', '2026-02-18 13:12:45.505', '2026-02-18 13:12:45.505') ON DUPLICATE KEY UPDATE name='Hoa Chia Buồn 019', slug='hoa-chia-buon-019', price='1330000', category_id=5;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (26, 'Hoa Chia Buồn 020', 'hoa-chia-buon-020', 5, '', 'Kệ hoa được thiết kế bởi:

– Hoa lan vàng kết vòng tròn truyền thống
– Hoa hồng vàng nổi bật ở trung tâm
– Lan vàng tỏa đều hài hòa
– Lá xanh bản lớn và nơ trắng trang nhã
Tổng thể kệ hoa mang thông điệp kính viếng trang trọng, thể hiện sự tiếc thương và thành kính sâu sắc.', '1830000', NULL, NULL, 0, 0, '[]', '["Đám Tang"]', '2026-02-18 13:18:02.880', '2026-02-18 13:18:02.880') ON DUPLICATE KEY UPDATE name='Hoa Chia Buồn 020', slug='hoa-chia-buon-020', price='1830000', category_id=5;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (27, 'Hoa Chia Buồn 021', 'hoa-chia-buon-021', 5, '', 'Kệ hoa được thiết kế bởi:

– Hoa hồng kết tròn sang trọng
– Cụm hoa lớn nổi bật phía trên, tạo điểm nhấn trang nhã
– Cụm hoa phụ phía dưới cân đối, hài hòa tổng thể
– Lá xanh phối cùng giấy gói trắng xếp tầng mềm mại
Tổng thể kệ hoa mang thông điệp chia buồn nhẹ nhàng và thành kính, thể hiện sự trân trọng và tiếc thương sâu sắc. Gam màu kem – hồng pastel thanh nhã kết hợp cùng nền trắng trang nghiêm tạo nên vẻ đẹp tinh tế, phù hợp gửi viếng gia đình, người thân trong giờ phút tiễn biệt.', '1300000', NULL, NULL, 0, 0, '[]', '["Đám Tang"]', '2026-02-18 13:29:01.331', '2026-02-18 13:29:01.331') ON DUPLICATE KEY UPDATE name='Hoa Chia Buồn 021', slug='hoa-chia-buon-021', price='1300000', category_id=5;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (28, 'Hoa Chia Buồn 022', 'hoa-chia-buon-022', 5, '', 'Kệ hoa được thiết kế bởi:

– Hoa cúc trắng và hoa hồng trắng phối hợp hài hòa
– Cụm hoa tròn đầy đặn ở phần trên, tạo điểm nhấn trang nhã
– Cụm hoa phụ nhỏ phía dưới cân đối tổng thể
– Nơ lưới trắng mềm mại tạo nét thanh thoát

Tổng thể kệ hoa mang thông điệp chia buồn trang trọng và chân thành, thể hiện sự kính trọng và tiếc thương sâu sắc. Gam trắng tinh khôi kết hợp sắc xanh dịu nhẹ tạo nên vẻ đẹp thanh lịch.', '1750000', NULL, NULL, 0, 0, '[]', '["Đám Tang"]', '2026-02-18 13:32:46.130', '2026-02-27 13:46:45.000') ON DUPLICATE KEY UPDATE name='Hoa Chia Buồn 022', slug='hoa-chia-buon-022', price='1750000', category_id=5;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (29, 'Hoa Chia Buồn 023', 'hoa-chia-buon-022-1', 5, '', 'Kệ hoa được thiết kế bởi:

– Hoa cúc trắng và hoa hồng trắng phối hợp chủ đạo
– Cụm hoa lớn phía trên bung tỏa trang nhã
– Cụm hoa phụ phía dưới cân đối, hài hòa
– Nơ lưới trắng mềm mại kết hợp chân đế đen trang trọng

Tổng thể kệ hoa mang thông điệp chia buồn thành kính và trang nghiêm, thể hiện sự tiếc thương sâu sắc. Sự kết hợp giữa gam trắng thanh khiết và nền đen trang trọng tạo nên vẻ đẹp nổi bật nhưng vẫn đầy tôn nghiêm.', '1950000', '2200000', NULL, 0, 0, '[]', '["Đám Tang"]', '2026-02-18 13:35:47.565', '2026-02-27 13:47:17.000') ON DUPLICATE KEY UPDATE name='Hoa Chia Buồn 023', slug='hoa-chia-buon-022-1', price='1950000', category_id=5;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (30, 'Hoa Chia Buồn 024', 'hoa-chia-buon-024', 5, '', 'Kệ hoa được thiết kế bởi:

– Hoa hồng vàng và hoa cúc vàng kết vòng tròn nổi bật
– Điểm nhấn nơ vàng ở trung tâm tạo chiều sâu ấn tượng
– Hoa lan vàng rũ nhẹ phía dưới mềm mại
– Cụm hoa phụ chân đế cân đối, hài hòa tổng thể
– Lưới voan đen phối cùng chân kệ vàng tạo nét sang trọng

Tổng thể kệ hoa mang thông điệp chia buồn trang trọng và thành kính. Sự kết hợp giữa sắc vàng rực rỡ và nền đen trang nghiêm tạo nên vẻ đẹp nổi bật nhưng vẫn giữ được sự tôn nghiêm, phù hợp gửi viếng gia đình, người thân hoặc đối tác.', '1790000', '2000000', NULL, 0, 0, '[]', '["Đám Tang"]', '2026-02-18 13:41:25.743', '2026-02-18 13:41:25.743') ON DUPLICATE KEY UPDATE name='Hoa Chia Buồn 024', slug='hoa-chia-buon-024', price='1790000', category_id=5;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (31, 'Hoa Chia Buồn 025', 'hoa-chia-buon-025', 5, '', 'Kệ hoa được thiết kế bởi:

– Hoa hồng vàng và hoa lan vàng phối hợp nổi bật
– Vòng hoa lan trắng tạo hình tròn trang trọng
– Hoa cúc vàng điểm xen tăng độ rực rỡ
– Nơ vàng trung tâm kết hợp voan đen tạo nét sang trọng

Tổng thể kệ hoa mang tông vàng chủ đạo, thể hiện sự kính trọng, thành tâm và chia buồn sâu sắc.', '2450000', '2650000', NULL, 0, 0, '[]', '["Đám Tang"]', '2026-02-18 13:44:19.445', '2026-02-18 13:44:19.445') ON DUPLICATE KEY UPDATE name='Hoa Chia Buồn 025', slug='hoa-chia-buon-025', price='2450000', category_id=5;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (32, 'Hoa Chia Buồn 026', 'hoa-chia-buon-026', 5, '', 'Kệ hoa được thiết kế bởi:

– Hoa cúc vàng kết dày tạo vòng tròn nổi bật
– Lá xanh bản lớn xếp tầng tạo viền sang trọng
– Nơ vàng trung tâm làm điểm nhấn hài hòa
– Chân kệ phủ giấy vàng đồng bộ, nổi bật
– Thiết kế tối giản nhưng trang nghiêm

Tổng thể kệ hoa mang sắc vàng chủ đạo, thể hiện sự kính trọng, thành tâm và lời chia buồn sâu sắc.', '800000', NULL, NULL, 0, 0, '[]', '["Đám Tang"]', '2026-02-18 13:46:49.786', '2026-02-18 13:46:49.786') ON DUPLICATE KEY UPDATE name='Hoa Chia Buồn 026', slug='hoa-chia-buon-026', price='800000', category_id=5;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (33, 'Hoa Chia Buồn 027', 'hoa-chia-buon-027', 5, '', 'Kệ hoa được thiết kế bởi:

– Hoa cúc trắng kết dày tạo vòng tròn trang nghiêm
– Cụm hoa trắng phía trên cân đối, hài hòa
– Nơ trắng trung tâm và chân kệ đồng bộ
– Tông trắng chủ đạo nhẹ nhàng, thanh khiết

Tổng thể kệ hoa thể hiện sự kính trọng, tiếc thương và lời chia buồn chân thành.', '790000', NULL, NULL, 0, 0, '[]', '["Đám Tang"]', '2026-02-18 13:48:19.746', '2026-02-18 13:49:07.000') ON DUPLICATE KEY UPDATE name='Hoa Chia Buồn 027', slug='hoa-chia-buon-027', price='790000', category_id=5;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (34, 'Hoa Chia Buồn 028', 'hoa-chia-buon-028', 5, '', 'Kệ hoa được thiết kế bởi:

– Hoa cúc trắng kết hợp hài hòa
– Hoa hồng và lan trắng điểm xen tinh tế
– Giấy lụa trắng phối lớp tạo độ mềm mại
– Bố cục tầng lệch hiện đại, cân đối

Sự kết hợp giữa sắc trắng thanh khiết và cách sắp xếp hoa dày, nhiều tầng tạo nên vẻ đẹp tinh tế, đẳng cấp. Bố cục hài hòa cùng chất liệu giấy lụa cao cấp giúp vòng hoa toát lên sự sang trọng, chỉnh chu và đầy thành tâm khi gửi viếng.', '3030000', '3200000', NULL, 0, 0, '[]', '["Đám Tang"]', '2026-02-18 13:51:35.483', '2026-02-18 13:51:35.483') ON DUPLICATE KEY UPDATE name='Hoa Chia Buồn 028', slug='hoa-chia-buon-028', price='3030000', category_id=5;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (35, 'Hoa Chia Buồn 029', 'hoa-chia-buon-029', 5, '', 'Kệ hoa được thiết kế bởi:

– Hoa lan tím kết vòng tròn nổi bật, sang trọng
– Hoa hồng điểm xen tạo sự mềm mại
– Cụm lan tím rũ nhẹ phía dưới hài hòa
– Bố cục 3 tầng cân đối, hiện đại

Tổng thể vòng hoa mang tông tím chủ đạo, sang trọng và trang nghiêm, thể hiện sự kính trọng và lời chia buồn sâu sắc.', '1850000', NULL, NULL, 0, 0, '[]', '["Đám Tang"]', '2026-02-18 14:06:05.248', '2026-02-18 14:06:05.248') ON DUPLICATE KEY UPDATE name='Hoa Chia Buồn 029', slug='hoa-chia-buon-029', price='1850000', category_id=5;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (36, 'Hoa Chia Buồn 030', 'hoa-chia-buon-030', 5, '', 'Kệ hoa được thiết kế bởi:

– Hoa hồng trắng và cúc trắng kết vòng tròn dày nổi bật
– Hoa baby và lá điểm xen tinh tế
– Nơ voan đen trung tâm tạo điểm nhấn trang nghiêm
– Chân kệ phủ vải đen sang trọng

Tổng thể vòng hoa mang tông trắng – đen chủ đạo, sang trọng và trang nghiêm, thể hiện sự kính trọng và lời chia buồn sâu sắc.', '1580000', NULL, NULL, 0, 0, '[]', '["Đám Tang"]', '2026-02-18 14:08:01.234', '2026-02-18 14:08:01.234') ON DUPLICATE KEY UPDATE name='Hoa Chia Buồn 030', slug='hoa-chia-buon-030', price='1580000', category_id=5;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (37, 'Hoa Chúc Mừng 001', 'hoa-chuc-mung-001', 4, '', 'Kệ hoa được thiết kế bởi:

– Hoa hồng và hoa đồng tiền kết vòng tròn dày, nổi bật và rực rỡ
– Hoa baby trắng cùng lá xanh điểm xen tinh tế tạo chiều sâu
– Giấy gói đỏ đô xếp lớp nghệ thuật tạo form dáng hiện đại, bắt mắt
– Chân kệ phối giấy cùng tông, thiết kế hai tầng cân đối và bề thế

Tổng thể kệ hoa mang tông đỏ – hồng chủ đạo, sang trọng và nổi bật, thể hiện lời chúc mừng khai trương hồng phát, thành công rực rỡ và may mắn dài lâu.', '1290000', NULL, NULL, 0, 0, '[]', '["Khai Trương", "Chúc Mừng"]', '2026-02-21 01:45:56.044', '2026-02-21 01:45:56.044') ON DUPLICATE KEY UPDATE name='Hoa Chúc Mừng 001', slug='hoa-chuc-mung-001', price='1290000', category_id=4;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (38, 'Hoa Chúc Mừng 002', 'hoa-chuc-mung-002', 4, '', 'Kệ hoa được thiết kế bởi:

– Hoa hồng đỏ rực rỡ kết hợp hoa hồng kem và hoa đồng tiền hồng tạo vòng tròn dày, nổi bật
– Hoa baby trắng lá xanh điểm xen tinh tế giúp tổng thể hài hòa và có chiều sâu

Tổng thể kệ hoa mang tông đỏ – hồng chủ đạo, vừa ngọt ngào vừa nổi bật, thể hiện lời chúc mừng khai trương hồng phát, may mắn và thành công rực rỡ.', '800000', NULL, NULL, 0, 0, '[]', '["Khai Trương", "Chúc Mừng"]', '2026-02-21 01:48:37.668', '2026-02-21 01:48:37.668') ON DUPLICATE KEY UPDATE name='Hoa Chúc Mừng 002', slug='hoa-chuc-mung-002', price='800000', category_id=4;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (39, 'Hoa Chúc Mừng 003', 'hoa-chuc-mung-003', 4, '', 'Kệ hoa được thiết kế bởi:

– Hoa hồng đỏ nhung phối cùng hoa hồng cam nổi bật, kết tròn dày tạo hiệu ứng rực rỡ và đầy năng lượng
– Giấy gói đỏ phối đỏ rượu vang xếp lớp mạnh mẽ, tạo form tròn lớn sang trọng và bề thế
– Phần chân kệ tạo tầng độc đáo, nhấn bằng nơ voan đỏ và ruy băng kem mềm mại

Tổng thể kệ hoa mang tông đỏ – cam chủ đạo, nổi bật và quyền lực, thể hiện lời chúc mừng khai trương phát tài – phát lộc, thành công rực rỡ và thịnh vượng lâu dài.', '1230000', NULL, NULL, 0, 0, '[]', '["Khai Trương", "Chúc Mừng"]', '2026-02-21 02:10:39.702', '2026-02-21 02:18:36.000') ON DUPLICATE KEY UPDATE name='Hoa Chúc Mừng 003', slug='hoa-chuc-mung-003', price='1230000', category_id=4;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (40, 'Hoa Chúc Mừng 004', 'hoa-chuc-mung-004', 4, '', 'Kệ hoa được thiết kế bởi:

– Hoa cẩm tú cầu xanh phối cùng hoa baby trắng và hoa hồng xanh dương, kết tròn dày tạo hiệu ứng mềm mại, tươi mát
– Sự đan xen tinh tế giữa các cụm hoa lớn – nhỏ giúp tổng thể hài hòa, có chiều sâu và độ bồng bềnh tự nhiên
– Giấy gói xanh baby phối xanh da trời xếp lớp nghệ thuật, tạo form tròn sang trọng và thanh thoát


Tổng thể kệ hoa mang tông xanh chủ đạo, tinh tế và nổi bật theo cách rất riêng, tượng trưng cho sự khởi đầu thuận lợi, phát triển bền vững và thành công dài lâu. Đây là mẫu hoa chúc mừng vừa sang trọng vừa dịu mắt, thể hiện sự trân trọng và lời chúc tốt đẹp đầy ý nghĩa.
', '1030000', NULL, NULL, 0, 0, '[]', '["Khai Trương", "Chúc Mừng"]', '2026-02-21 02:15:51.782', '2026-02-21 03:07:36.000') ON DUPLICATE KEY UPDATE name='Hoa Chúc Mừng 004', slug='hoa-chuc-mung-004', price='1030000', category_id=4;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (41, 'Hoa Chúc Mừng 005', 'hoa-chuc-mung-005', 4, '', 'Kệ hoa được thiết kế bởi:

– Hoa hồng đỏ rực rỡ phối cùng hoa hồng cam – vàng, kết cụm dày tạo tổng thể nổi bật và tràn đầy năng lượng
– Giấy gói vàng kem xếp tầng uốn lượn nghệ thuật, tạo hiệu ứng bồng bềnh sang trọng
– Điểm nhấn nơ lưới đỏ mềm mại bên hông, tăng thêm sự nổi bật và may mắn

Tổng thể kệ hoa mang tông đỏ – cam – vàng chủ đạo, rực rỡ và thu hút, tượng trưng cho thành công, thịnh vượng và phát triển mạnh mẽ. Mẫu hoa thể hiện lời chúc mừng đầy trang trọng, gửi gắm sự kính trọng và chúc doanh nghiệp ngày càng vươn xa, gặt hái nhiều thành tựu.', '1600000', '1750000', NULL, 0, 0, '[]', '["Khai Trương", "Chúc Mừng"]', '2026-02-21 02:18:13.953', '2026-02-21 02:47:15.000') ON DUPLICATE KEY UPDATE name='Hoa Chúc Mừng 005', slug='hoa-chuc-mung-005', price='1600000', category_id=4;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (42, 'Hoa Chúc Mừng 006', 'hoa-chuc-mung-006', 4, '', 'Kệ hoa được thiết kế bởi:

– Hoa đồng tiền đỏ và hoa hồng đỏ kết tròn dày, tạo tổng thể rực rỡ và nổi bật
– Hoa baby trắng điểm xen tinh tế cùng lá xanh giúp bố cục thêm hài hòa và sang trọng
– Giấy gói đỏ phối đỏ xếp tầng chắc chắn, form hai tầng rõ nét, tạo dáng cao ráo và bề thế

Tổng thể kệ hoa mang tông đỏ chủ đạo, mạnh mẽ và thu hút, tượng trưng cho may mắn, phát tài và thành công rực rỡ. Mẫu hoa thể hiện lời chúc mừng khai trương hồng phát, kinh doanh thuận lợi và ngày càng vươn xa.
', '1280000', NULL, NULL, 0, 0, '[]', '["Khai Trương", "Chúc Mừng"]', '2026-02-21 02:26:46.511', '2026-02-21 03:08:01.000') ON DUPLICATE KEY UPDATE name='Hoa Chúc Mừng 006', slug='hoa-chuc-mung-006', price='1280000', category_id=4;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (43, 'Hoa Chúc Mừng 007', 'hoa-chuc-mung-007', 4, '', 'Kệ hoa được thiết kế bởi:

– Hoa hồng đỏ nhung kết hợp hoa hồng kem pastel đan xen dày dặn, tạo hiệu ứng chuyển sắc sang trọng và nổi bật
– Bố cục ba tầng cân đối, tầng trên tròn đầy bề thế, tầng dưới mềm mại uốn lượn tạo sự chuyển động tinh tế
– Nơ lưới đỏ bản lớn cùng chân kệ gỗ chắc chắn, tôn lên vẻ cao cấp và vững chãi

Tổng thể kệ hoa mang tông đỏ – kem chủ đạo, vừa quyền lực vừa tinh tế, tượng trưng cho may mắn, thịnh vượng và thành công bền vững. Mẫu hoa thể hiện lời chúc mừng trang trọng, đẳng cấp và đầy ấn tượng, giúp không gian khai trương thêm phần nổi bật và thu hút.', '2520000', '2700000', NULL, 0, 0, '[]', '["Khai Trương", "Chúc Mừng"]', '2026-02-21 02:30:28.707', '2026-02-21 02:30:28.707') ON DUPLICATE KEY UPDATE name='Hoa Chúc Mừng 007', slug='hoa-chuc-mung-007', price='2520000', category_id=4;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (44, 'Hoa Chúc Mừng 008', 'hoa-chuc-mung-008', 4, '', 'Kệ hoa được thiết kế bởi:

– Hoa hồng vàng, hồng kem phối cùng hoa đồng tiền cam – đỏ kết tròn dày, tạo tổng thể rực rỡ và nổi bật
– Hoa baby trắng điểm xen tinh tế cùng lá xanh nhỏ, giúp bố cục hài hòa và có chiều sâu
– Giấy gói vàng phối cam xếp tầng nghệ thuật, tạo hiệu ứng bồng bềnh như ánh nắng, tôn lên vẻ sang trọng
– Thiết kế hai tầng cân đối, tầng trên bề thế, tầng dưới nhỏ gọn làm điểm nhấn mềm mại

Tổng thể kệ hoa mang tông vàng – cam chủ đạo, tươi sáng và đầy năng lượng, tượng trưng cho tài lộc, may mắn và khởi đầu thuận lợi. Mẫu hoa thể hiện lời chúc mừng trang trọng, gửi gắm sự thịnh vượng và niềm vui trọn vẹn.', '1400000', '1500000', NULL, 0, 0, '[]', '["Khai Trương", "Chúc Mừng"]', '2026-02-21 02:33:24.453', '2026-02-21 02:33:24.453') ON DUPLICATE KEY UPDATE name='Hoa Chúc Mừng 008', slug='hoa-chuc-mung-008', price='1400000', category_id=4;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (45, 'Hoa Chúc Mừng 009', 'hoa-chuc-mung-009', 4, '', 'Kệ hoa được thiết kế bởi:

– Hoa hồng phối cùng hoa đồng tiền hồng cam đan xen dày dặn, tạo tổng thể ngọt ngào và nổi bật
– Hoa baby trắng điểm nhẹ tinh tế, kết hợp lá xanh giúp bố cục hài hòa, có chiều sâu
– Giấy gói hồng phấn phối xanh pastel xếp tầng mềm mại, tạo hiệu ứng bồng bềnh sang trọng và hiện đại
– Thiết kế một tầng tròn đầy bề thế, thân kệ uốn lượn nghệ thuật, mang lại cảm giác thanh lịch và duyên dáng

Tổng thể kệ hoa mang tông hồng – xanh chủ đạo, nhẹ nhàng nhưng vẫn rực rỡ, tượng trưng cho sự khởi đầu thuận lợi, may mắn và phát triển bền vững. Mẫu hoa thể hiện lời chúc mừng khai trương trang trọng, gửi gắm sự yêu thương và thành công viên mãn.', '870000', NULL, NULL, 0, 0, '[]', '["Khai Trương", "Chúc Mừng"]', '2026-02-21 02:50:09.177', '2026-02-21 02:50:09.177') ON DUPLICATE KEY UPDATE name='Hoa Chúc Mừng 009', slug='hoa-chuc-mung-009', price='870000', category_id=4;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (46, 'Hoa Chúc Mừng 010', 'hoa-chuc-mung-010', 4, '', 'Kệ hoa được thiết kế bởi:

– Hoa hồng đỏ chủ đạo kết hợp hoa hồng kem và hồng pastel đan xen dày dặn, tạo tổng thể sang trọng và nổi bật
– Hoa hướng dương điểm nhấn rực rỡ ở trung tâm, tượng trưng cho thành công và phát triển mạnh mẽ
– Giấy gói đỏ phối đỏ xếp tầng bản lớn, tạo hiệu ứng bề thế và đẳng cấp
– Thiết kế hai tầng cân đối, tầng trên tròn đầy nổi bật, tầng dưới phối hoa nhẹ nhàng làm điểm nhấn tinh tế

Tổng thể kệ hoa mang tông đỏ – vàng chủ đạo, rực rỡ và quyền lực, tượng trưng cho may mắn, tài lộc và khởi đầu hồng phát. Mẫu hoa thể hiện lời chúc mừng khai trương trang trọng, gửi gắm sự thịnh vượng và thành công bền vững.
', '1200000', NULL, NULL, 0, 0, '[]', '["Khai Trương", "Chúc Mừng"]', '2026-02-21 02:52:16.743', '2026-02-21 02:52:16.743') ON DUPLICATE KEY UPDATE name='Hoa Chúc Mừng 010', slug='hoa-chuc-mung-010', price='1200000', category_id=4;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (47, 'Hoa Chúc Mừng 011', 'hoa-chuc-mung-011', 4, '', 'Kệ hoa được thiết kế bởi:

– Hoa hồng đỏ nhung kết tròn dày dặn, phủ kín toàn bộ tầng chính, tạo tổng thể sang trọng và đầy quyền lực
– Giấy lưới đỏ phối voan trong xếp tầng tinh tế, kết hợp nơ rủ mềm mại tạo vẻ uyển chuyển và cao cấp
– Thiết kế hai tầng cân đối, tầng trên bề thế nổi bật, tầng dưới nhỏ gọn làm điểm nhấn hài hòa
– Lá phụ xanh điểm xen nhẹ nhàng giúp bố cục thêm phần tự nhiên và có chiều sâu

Tổng thể kệ hoa mang tông đỏ chủ đạo rực rỡ và cuốn hút, tượng trưng cho may mắn, tài lộc và thành công bền vững. Mẫu hoa thể hiện lời chúc mừng khai trương trang trọng, gửi gắm sự phát đạt, hồng phát và thịnh vượng dài lâu.
', '1750000', NULL, NULL, 0, 0, '[]', '["Khai Trương", "Chúc Mừng"]', '2026-02-21 02:55:57.061', '2026-02-21 02:55:57.061') ON DUPLICATE KEY UPDATE name='Hoa Chúc Mừng 011', slug='hoa-chuc-mung-011', price='1750000', category_id=4;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (48, 'Hoa Chúc Mừng 012', 'hoa-chuc-mung-012', 4, '', 'Kệ hoa được thiết kế bởi:

– Hoa hồng kết hợp hoa hướng dương vàng và hoa đồng tiền đan xen hài hòa, tạo tổng thể tươi sáng và nổi bật
– Hoa baby trắng điểm nhẹ tinh tế, phối cùng lá giúp bố cục mềm mại và có chiều sâu
– Giấy gói vàng rực xếp tầng bản lớn, tạo hiệu ứng bồng bềnh như ánh nắng, mang lại cảm giác rạng rỡ và sang trọng
– Thiết kế hai tầng cân đối, tầng trên tròn đầy nổi bật, tầng dưới nhỏ gọn làm điểm nhấn hài hòa

Tổng thể kệ hoa mang tông vàng – hồng chủ đạo, tươi mới và tràn đầy năng lượng, tượng trưng cho khởi đầu thuận lợi, thành công và phát triển bền vững. Mẫu hoa thể hiện lời chúc mừng trang trọng, gửi gắm niềm tin và sự hân hoan cho chặng đường mới.
', '1420000', NULL, NULL, 0, 0, '[]', '["Khai Trương", "Chúc Mừng"]', '2026-02-21 02:58:32.463', '2026-02-21 02:58:32.463') ON DUPLICATE KEY UPDATE name='Hoa Chúc Mừng 012', slug='hoa-chuc-mung-012', price='1420000', category_id=4;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (49, 'Hoa Chúc Mừng 013', 'hoa-chuc-mung-013', 4, '', 'Kệ hoa được thiết kế bởi:

– Hoa lan hồ điệp trắng phối cùng hoa hồng xanh, cúc mẫu đơn xanh dương đan xen hài hòa, tạo tổng thể nổi bật và tinh tế
– Hoa baby trắng cùng các phụ kiện hoa bi tròn điểm xuyết nhẹ nhàng, giúp bố cục thêm phần mềm mại và sinh động
– Giấy gói xanh pastel xếp tầng nghệ thuật, tạo hiệu ứng bồng bềnh uyển chuyển và cao cấp
– Thiết kế hai tầng cân đối, tầng trên tròn đầy bề thế, tầng dưới nhỏ gọn hài hòa tổng thể

Tổng thể kệ hoa mang tông xanh – trắng chủ đạo, thanh lịch và tươi mát, tượng trưng cho sự khởi đầu thuận lợi, hy vọng và phát triển bền vững. Mẫu hoa thể hiện lời chúc mừng trang trọng, gửi gắm niềm tin và thành công lâu dài.', '2540000', '2700000', NULL, 0, 0, '[]', '["Khai Trương", "Chúc Mừng"]', '2026-02-21 03:01:15.101', '2026-02-21 03:01:15.101') ON DUPLICATE KEY UPDATE name='Hoa Chúc Mừng 013', slug='hoa-chuc-mung-013', price='2540000', category_id=4;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (50, 'Hoa Chúc Mừng 014', 'hoa-chuc-mung-014', 4, '', 'Kệ hoa được thiết kế bởi:

– Hoa hồng đỏ nhung phối cùng hoa hồng hồng pastel đan xen dày dặn, tạo tổng thể nổi bật và đầy cuốn hút
– Hoa baby trắng điểm xuyết tinh tế
– Giấy gói đỏ xếp tầng bản lớn, tạo hiệu ứng bồng bềnh sang trọng và hiện đại
– Thiết kế một tầng tròn đầy bề thế, thân kệ xếp lớp nghệ thuật mang lại cảm giác vững chãi và đẳng cấp

Tổng thể kệ hoa mang tông đỏ – hồng chủ đạo, rực rỡ và ấn tượng, tượng trưng cho may mắn, tình cảm gắn kết và thành công bền vững. Mẫu hoa thể hiện lời chúc mừng trang trọng, gửi gắm sự hân hoan và phát triển lâu dài.
', '890000', NULL, NULL, 0, 0, '[]', '["Khai Trương", "Chúc Mừng"]', '2026-02-21 03:03:29.674', '2026-02-21 03:03:29.674') ON DUPLICATE KEY UPDATE name='Hoa Chúc Mừng 014', slug='hoa-chuc-mung-014', price='890000', category_id=4;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (51, 'Hoa Chúc Mừng 015', 'hoa-chuc-mung-015', 4, '', 'Kệ hoa được thiết kế bởi:

– Hoa hồng cam phối cùng hoa hồng vàng tươi rực rỡ, tạo tổng thể nổi bật và tràn đầy năng lượng
– Hoa hướng dương điểm nhấn xen kẽ cùng cúc mẫu đơn vàng
– Hoa lan hồ điệp trắng nhẹ nhàng đan xen, giúp bố cục hài hòa và thêm phần sang trọng
– Lụa voan cam mềm mại uốn lượn xuyên suốt thân kệ, tạo cảm giác chuyển động uyển chuyển và nghệ thuật
– Thiết kế kệ 3 tầng lệch độc đáo, phần hoa chính tròn đầy phía trên kết hợp cụm hoa phụ trải dài bên dưới tạo bố cục cân đối và ấn tượng

Tổng thể kệ hoa mang tông cam – vàng chủ đạo, tượng trưng cho sự thành công, thịnh vượng và khởi đầu rực rỡ. Mẫu hoa phù hợp chúc mừng khai trương, gửi gắm lời chúc phát đạt, may mắn và phát triển bền vững.', '2250000', NULL, NULL, 0, 0, '[]', '["Khai Trương", "Chúc Mừng"]', '2026-02-21 03:45:29.413', '2026-02-21 03:45:29.413') ON DUPLICATE KEY UPDATE name='Hoa Chúc Mừng 015', slug='hoa-chuc-mung-015', price='2250000', category_id=4;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (52, 'Hoa Chúc Mừng 016', 'hoa-chuc-mung-016', 4, '', 'Kệ hoa được thiết kế bởi:

– Hoa hồng cam, hồng vàng và hồng đỏ phối sắc hài hòa, tạo tổng thể rực rỡ và nổi bật
– Hoa đồng tiền đỏ, cam kết hợp cùng hoa hướng dương mang đến điểm nhấn tươi sáng và tràn đầy sức sống
– Thiết kế kệ 2 tầng lệch ấn tượng, phần hoa chính tròn đầy phía trên kết hợp cụm hoa phụ mềm mại phía dưới tạo tổng thể cân đối và bắt mắt

Tổng thể kệ hoa mang tông vàng – cam – đỏ chủ đạo, tượng trưng cho may mắn, tài lộc và thành công rực rỡ. Mẫu hoa phù hợp chúc mừng khai trương, gửi gắm lời chúc phát triển hưng thịnh và khởi đầu đầy thuận lợi.
', '1070000', NULL, NULL, 0, 0, '[]', '["Khai Trương", "Chúc Mừng"]', '2026-02-21 03:56:49.431', '2026-02-21 03:56:49.431') ON DUPLICATE KEY UPDATE name='Hoa Chúc Mừng 016', slug='hoa-chuc-mung-016', price='1070000', category_id=4;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (53, 'Hoa Chúc Mừng 017', 'hoa-chuc-mung-017', 4, '', 'Kệ hoa được thiết kế bởi:

– Hoa hồng đỏ chủ đạo kết hợp hoa hồng pastel nhẹ nhàng, tạo tổng thể nổi bật và đầy chiều sâu
– Hoa đồng tiền đỏ đan xen tinh tế, giúp bố cục thêm sinh động và rực rỡ
– Giấy gói đỏ tươi phối đỏ mận xếp tầng bản lớn, tạo hiệu ứng bồng bềnh, chắc chắn và ấn tượng
– Thiết kế kệ 2 tầng cân đối, phần hoa chính tròn đầy phía trên kết hợp cụm hoa phụ phía dưới tạo bố cục hài hòa, trang trọng và bắt mắt

Tổng thể kệ hoa mang tông đỏ chủ đạo, tượng trưng cho may mắn, thành công và phát đạt. Mẫu hoa phù hợp chúc mừng khai trương, gửi gắm lời chúc hồng phát, kinh doanh thuận lợi và phát triển bền vững.
', '1200000', NULL, NULL, 0, 0, '[]', '["Khai Trương", "Chúc Mừng"]', '2026-02-21 04:03:49.019', '2026-02-21 04:03:49.019') ON DUPLICATE KEY UPDATE name='Hoa Chúc Mừng 017', slug='hoa-chuc-mung-017', price='1200000', category_id=4;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (54, 'Hoa Chúc Mừng 018', 'hoa-chuc-mung-018', 4, '', 'Kệ hoa được thiết kế bởi:

– Hoa hồng cam, hồng pastel và hồng phấn phối sắc hài hòa, tạo tổng thể rực rỡ nhưng vẫn mềm mại, tinh tế
– Hoa hướng dương nổi bật đan xen hoa baby trắng, mang đến điểm nhấn tươi sáng và đầy sức sống
– Giấy gói cam phối vàng nghệ xếp tầng bản lớn, tạo hiệu ứng bồng bềnh như những cánh quạt, mang lại vẻ ngoài sang trọng và hiện đại
– Thiết kế kệ 2 tầng lệch cân đối, phần hoa chính tròn đầy phía trên kết hợp cụm hoa phụ phía dưới tạo tổng thể hài hòa và ấn tượng

Tổng thể kệ hoa mang tông cam – vàng – hồng chủ đạo, tượng trưng cho sự may mắn, thịnh vượng và khởi đầu hồng phát. Mẫu hoa phù hợp chúc mừng khai trương, gửi gắm lời chúc kinh doanh thuận lợi, phát triển bền vững và thành công rực rỡ.
', '1450000', '1600000', NULL, 0, 0, '[]', '["Khai Trương", "Chúc Mừng"]', '2026-02-21 04:06:54.726', '2026-02-21 04:06:54.726') ON DUPLICATE KEY UPDATE name='Hoa Chúc Mừng 018', slug='hoa-chuc-mung-018', price='1450000', category_id=4;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (55, 'Hoa Chúc Mừng 019', 'hoa-chuc-mung-018-1', 4, '', 'Kệ hoa được thiết kế bởi:

– Hoa hồng hồng pastel phối cùng hoa hồng cam rực rỡ, tạo tổng thể nổi bật nhưng vẫn mềm mại, ngọt ngào
– Hoa đồng tiền hồng đan xen cùng cúc mẫu đơn cam nổi bật, mang đến điểm nhấn tươi sáng và đầy sức sống
– Hoa baby trắng cùng các loại hoa phụ nhỏ điểm xuyết tinh tế, giúp bố cục thêm dày dặn và hài hòa
Tổng thể kệ hoa mang tông hồng – cam chủ đạo, tượng trưng cho sự may mắn, tươi mới và khởi đầu thuận lợi. Mẫu hoa phù hợp chúc mừng khai trương, gửi gắm lời chúc phát triển bền vững, kinh doanh suôn sẻ và thành công rực rỡ.', '2250000', NULL, NULL, 0, 0, '[]', '["Khai Trương", "Chúc Mừng"]', '2026-02-21 04:12:44.671', '2026-02-21 04:15:46.000') ON DUPLICATE KEY UPDATE name='Hoa Chúc Mừng 019', slug='hoa-chuc-mung-018-1', price='2250000', category_id=4;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (57, 'Hoa Chúc Mừng 020', 'hoa-chuc-mung-020', 4, '', 'Kệ hoa được thiết kế bởi:

– Hoa hồng vàng phối cùng hoa hồng cam rực rỡ, tạo tổng thể nổi bật và tràn đầy năng lượng
– Hoa đồng tiền vàng, hoa hướng dương đan xen tinh tế, mang đến điểm nhấn tươi sáng và ý nghĩa thịnh vượng
– Hoa lan vũ nữ vàng cùng hoa baby trắng điểm xuyết nhẹ nhàng, giúp bố cục thêm dày dặn và sinh động
– Giấy gói vàng phối trắng xếp tầng bản lớn kết hợp lụa voan vàng mềm mại uốn lượn, tạo cảm giác bồng bềnh và sang trọng

Tổng thể kệ hoa mang tông vàng – cam chủ đạo, tượng trưng cho tài lộc, may mắn và thành công rực rỡ. Mẫu hoa phù hợp chúc mừng khai trương, gửi gắm lời chúc phát đạt, hưng thịnh và phát triển bền vững.', '2150000', '2350000', NULL, 0, 0, '[]', '["Khai Trương", "Chúc Mừng"]', '2026-02-21 04:46:15.489', '2026-02-21 04:46:15.489') ON DUPLICATE KEY UPDATE name='Hoa Chúc Mừng 020', slug='hoa-chuc-mung-020', price='2150000', category_id=4;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (58, 'Hoa Chúc Mừng 021', 'hoa-chuc-mung-021', 4, '', 'Kệ hoa được thiết kế bởi:

– Hoa hồng đỏ phối cùng hoa hồng vàng tươi rực rỡ, tạo tổng thể nổi bật, sang trọng và tràn đầy năng lượng
– Hoa baby trắng đan xen tinh tế, giúp bố cục thêm dày dặn và mềm mại
– Giấy gói đỏ đô xếp tầng bản lớn nghệ thuật, tạo hiệu ứng bồng bềnh và cao cấp
– Thiết kế kệ 3 tầng lệch ấn tượng, cụm hoa chính tròn đầy phía trên kết hợp hai cụm hoa phụ bên dưới tạo bố cục cân đối, vững chãi

Tổng thể kệ hoa mang tông đỏ – vàng chủ đạo, tượng trưng cho may mắn, tài lộc và thành công rực rỡ. Mẫu hoa phù hợp chúc mừng khai trương, gửi gắm lời chúc hồng phát, phát đạt và phát triển bền vững lâu dài.
', '2000000', '2350000', NULL, 0, 0, '[]', '["Khai Trương", "Chúc Mừng"]', '2026-02-21 04:53:32.733', '2026-02-21 04:53:32.733') ON DUPLICATE KEY UPDATE name='Hoa Chúc Mừng 021', slug='hoa-chuc-mung-021', price='2000000', category_id=4;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (59, 'Hoa Chúc Mừng 022', 'hoa-chuc-mung-022', 4, '', 'Kệ hoa được thiết kế bởi:

– Hoa hồng xanh phối cùng hoa hồng kem nhẹ nhàng, tạo tổng thể thanh lịch và tinh tế
– Hoa đồng tiền hồng phấn đan xen hài hòa, mang đến cảm giác tươi mát và hiện đại
– Lụa voan xanh mềm mại uốn lượn quanh thân kệ, tạo hiệu ứng bồng bềnh, nhẹ nhàng và cao cấp
– Thiết kế kệ gỗ 2 tầng lệch thanh thoát, phần hoa chính trải ngang nổi bật phía trên kết hợp cụm hoa phụ rũ nhẹ phía dưới tạo bố cục cân đối và nghệ thuật

Tổng thể kệ hoa mang tông xanh – kem chủ đạo, tượng trưng cho sự khởi đầu thuận lợi, hy vọng và phát triển bền vững. Mẫu hoa phù hợp chúc mừng khai trương, gửi gắm lời chúc thành công, thịnh vượng và vươn xa lâu dài.', '1920000', NULL, NULL, 0, 0, '[]', '["Khai Trương", "Chúc Mừng"]', '2026-02-21 04:56:38.740', '2026-02-21 04:56:38.740') ON DUPLICATE KEY UPDATE name='Hoa Chúc Mừng 022', slug='hoa-chuc-mung-022', price='1920000', category_id=4;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (60, 'Hoa Chúc Mừng 023', 'hoa-chuc-mung-023', 4, '', 'Kệ hoa được thiết kế bởi:

– Hoa hồng đỏ chủ đạo kết hợp cùng hoa đồng tiền đỏ rực rỡ, tạo tổng thể nổi bật, sang trọng và đầy quyền lực
– Hoa môn trắng điểm xuyết nhẹ nhàng ở tầng dưới, tạo điểm nhấn tương phản nổi bật và hiện đại
– Ruy băng đỏ bản lớn quấn nghệ thuật quanh thân kệ, tăng thêm sự nổi bật và sang trọng

Tổng thể kệ hoa mang tông đỏ chủ đạo, tượng trưng cho chiến thắng, may mắn và thành công rực rỡ. Mẫu hoa phù hợp chúc mừng khai trương, chúc mừng thành tích hoặc sự kiện quan trọng, gửi gắm lời chúc vinh quang, bứt phá và phát triển bền vững.', '2000000', NULL, NULL, 0, 0, '[]', '["Khai Trương", "Chúc Mừng"]', '2026-02-21 04:59:37.956', '2026-02-21 04:59:37.956') ON DUPLICATE KEY UPDATE name='Hoa Chúc Mừng 023', slug='hoa-chuc-mung-023', price='2000000', category_id=4;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (61, 'Hoa Chúc Mừng 025', 'hoa-chuc-mung-023-1', 4, '', 'Kệ hoa được thiết kế bởi:

– Hoa hướng dương nổi bật kết hợp cùng hoa hồng vàng và hồng kem, tạo tổng thể rực rỡ, tươi sáng và đầy sức sống
– Hoa baby trắng đan xen tinh tế, giúp bố cục thêm mềm mại và hài hòa
– Hoa lan vũ nữ vàng điểm xuyết nhẹ nhàng, mang đến nét uyển chuyển và sinh động
– Giấy gói vàng kem xếp tầng bản lớn ôm trọn cụm hoa, tạo hiệu ứng bồng bềnh, cao cấp và nổi bật
– Thiết kế kệ 3 tầng lệch ấn tượng, cụm hoa chính tròn đầy phía trên kết hợp hai cụm hoa phụ phía dưới tạo bố cục cân đối và thu hút

Tổng thể kệ hoa mang tông vàng chủ đạo, tượng trưng cho niềm vui, thành công và thịnh vượng. Mẫu hoa phù hợp chúc mừng khai trương, kỷ niệm thành lập hoặc sự kiện quan trọng, gửi gắm lời chúc phát triển bền vững, hưng thịnh và vươn xa.', '2240000', NULL, NULL, 0, 0, '[]', '["Khai Trương", "Chúc Mừng"]', '2026-02-21 05:05:07.076', '2026-02-21 05:09:37.000') ON DUPLICATE KEY UPDATE name='Hoa Chúc Mừng 025', slug='hoa-chuc-mung-023-1', price='2240000', category_id=4;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (62, 'Hoa Chúc Mừng 024', 'hoa-chuc-mung-024', 4, '', 'Kệ hoa được thiết kế bởi:

– Hoa hồng đỏ, hồng vàng và hồng cam phối sắc rực rỡ, tạo tổng thể nổi bật và tràn đầy năng lượng
– Hoa cúc mẫu đơn cam kết hợp cùng hoa đồng tiền đan xen hài hòa, mang đến vẻ đẹp sang trọng và hiện đại
– Hoa lan hồ điệp trắng điểm nhấn tinh tế ở trung tâm, tăng thêm vẻ sang trọng và thu hút
– Lụa voan cam mềm mại uốn lượn quanh thân kệ kết hợp giấy gói vàng xếp tầng nghệ thuật, tạo cảm giác bồng bềnh và ấn tượng
– Thiết kế kệ gỗ 2 tầng lệch độc đáo, cụm hoa chính trải ngang bề thế phía trên kết hợp cụm hoa phụ nổi bật phía dưới tạo tổng thể cân đối và hài hòa

Tổng thể kệ hoa mang tông vàng – cam – đỏ chủ đạo, tượng trưng cho thành công, may mắn và thịnh vượng rực rỡ. Mẫu hoa phù hợp chúc mừng khai trương, sự kiện quan trọng hoặc kỷ niệm đặc biệt, gửi gắm lời chúc phát đạt, hưng thịnh và phát triển bền vững lâu dài.', '3290000', NULL, NULL, 0, 0, '[]', '["Khai Trương", "Chúc Mừng"]', '2026-02-21 05:09:20.531', '2026-02-21 05:09:20.531') ON DUPLICATE KEY UPDATE name='Hoa Chúc Mừng 024', slug='hoa-chuc-mung-024', price='3290000', category_id=4;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (63, 'Hoa Chúc Mừng 026', 'hoa-chuc-mung-026', 4, '', 'Kệ hoa được thiết kế bởi:

– Hoa hồng hồng sen phối cùng hoa hồng kem nhẹ nhàng, tạo tổng thể ngọt ngào, thanh lịch và đầy nữ tính
– Hoa baby trắng đan xen tinh tế, giúp bố cục thêm dày dặn và mềm mại
– Lụa voan hồng pastel bản lớn được thắt nơ nghệ thuật ở trung tâm và buông rũ mềm mại theo thân kệ, tạo cảm giác bồng bềnh và sang trọng

Tổng thể kệ hoa mang tông hồng – kem chủ đạo, tượng trưng cho sự may mắn, khởi đầu thuận lợi và phát triển bền vững. Mẫu hoa phù hợp chúc mừng khai trương, gửi gắm lời chúc kinh doanh suôn sẻ, hồng phát và thành công lâu dài.
', '1000000', NULL, NULL, 0, 0, '[]', '["Khai Trương", "Chúc Mừng"]', '2026-02-21 05:11:22.627', '2026-02-21 05:11:22.627') ON DUPLICATE KEY UPDATE name='Hoa Chúc Mừng 026', slug='hoa-chuc-mung-026', price='1000000', category_id=4;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (64, 'Hoa Chúc Mừng 027', 'hoa-chuc-mung-027', 4, '', 'Kệ hoa được thiết kế bởi:

– Hoa hồng đỏ chủ đạo phối cùng hoa hồng cam vàng rực rỡ, tạo tổng thể nổi bật, sang trọng và đầy năng lượng
– Giấy gói đỏ  được xếp lớp nghệ thuật, tạo form khối hiện đại, bề thế và thu hút

Tổng thể kệ hoa mang tông đỏ – cam chủ đạo, tượng trưng cho may mắn, tài lộc và khởi đầu thuận lợi. Mẫu hoa phù hợp chúc mừng tân niên, khai trương hoặc sự kiện, gửi gắm lời chúc phát đạt, thành công và thịnh vượng lâu dài.
', '1490000', NULL, NULL, 0, 0, '[]', '["Khai Trương", "Chúc Mừng"]', '2026-02-21 05:14:43.782', '2026-02-21 05:14:43.782') ON DUPLICATE KEY UPDATE name='Hoa Chúc Mừng 027', slug='hoa-chuc-mung-027', price='1490000', category_id=4;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (65, 'Hoa Chúc Mừng 028', 'hoa-chuc-mung-028', 4, '', 'Kệ hoa được thiết kế bởi:

– Hoa hồng kem phối vàng nhạt, tạo tổng thể ngọt ngào, thanh lịch và đầy tinh tế
– Hoa baby hồng đan xen nhẹ nhàng, giúp bố cục thêm dày dặn và mềm mại
– Lụa voan tím pastel bản lớn được quấn nghệ thuật dọc thân kệ, buông rũ mềm mại tạo hiệu ứng bồng bềnh và duyên dáng
– Thiết kế kệ 2 tầng cân đối, cụm hoa chính tròn đầy phía trên kết hợp cụm hoa phụ phía dưới tạo tổng thể hài hòa và thu hút

Tổng thể kệ hoa mang tông hồng – kem chủ đạo, điểm sắc tím pastel nhẹ nhàng, tượng trưng cho sự may mắn, khởi đầu thuận lợi và phát triển bền vững. Mẫu hoa phù hợp chúc mừng khai trương, sinh nhật, kỷ niệm hoặc sự kiện quan trọng, gửi gắm lời chúc thành công, thuận lợi và thăng hoa.', '1600000', NULL, NULL, 0, 0, '[]', '["Khai Trương", "Chúc Mừng"]', '2026-02-21 05:32:27.044', '2026-02-21 05:32:27.044') ON DUPLICATE KEY UPDATE name='Hoa Chúc Mừng 028', slug='hoa-chuc-mung-028', price='1600000', category_id=4;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (66, 'Hoa Chúc Mừng 029', 'hoa-chuc-mung-029', 4, '', 'Kệ hoa được thiết kế bởi:

– Hoa hồng đỏ chủ đạo phối cùng hoa hồng cam và hoa đồng tiền kem, tạo tổng thể rực rỡ, nổi bật và đầy năng lượng
– Giấy gói kem bản lớn được xếp lớp nghệ thuật ôm trọn thân kệ, tạo hiệu ứng bồng bềnh, sang trọng và hiện đại

Tổng thể kệ hoa mang tông đỏ – cam – kem chủ đạo, tượng trưng cho may mắn, thành công và khai trương hồng phát. Mẫu hoa phù hợp chúc mừng khai trương, sự kiện quan trọng hoặc cột mốc đặc biệt, gửi gắm lời chúc phát đạt, thịnh vượng và phát triển bền vững.', '850000', NULL, NULL, 0, 0, '[]', '["Khai Trương", "Chúc Mừng"]', '2026-02-21 05:34:15.581', '2026-02-21 05:34:15.581') ON DUPLICATE KEY UPDATE name='Hoa Chúc Mừng 029', slug='hoa-chuc-mung-029', price='850000', category_id=4;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (67, 'Hoa Chúc Mừng 030', 'hoa-chuc-mung-030', 4, '', 'Kệ hoa được thiết kế bởi:

– Hoa hồng đỏ chủ đạo phối cùng hoa hồng nhẹ nhàng, tạo tổng thể nổi bật nhưng vẫn thanh lịch và tinh tế
– Hoa baby trắng đan xen khéo léo, giúp bố cục thêm dày dặn và mềm mại
– Lụa voan hồng bản lớn được quấn nghệ thuật dọc thân kệ, buông rũ mềm mại tạo hiệu ứng bồng bềnh và duyên dáng

Tổng thể kệ hoa mang tông đỏ – hồng chủ đạo, tượng trưng cho may mắn, thành công và khai trương hồng phát. Mẫu hoa phù hợp chúc mừng khai trương, sự kiện quan trọng hoặc cột mốc đặc biệt, gửi gắm lời chúc phát đạt, thịnh vượng và phát triển bền vững lâu dài.', '1870000', NULL, NULL, 0, 0, '[]', '["Khai Trương", "Chúc Mừng"]', '2026-02-21 05:43:12.721', '2026-02-21 05:43:12.721') ON DUPLICATE KEY UPDATE name='Hoa Chúc Mừng 030', slug='hoa-chuc-mung-030', price='1870000', category_id=4;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (68, 'Giỏ Hoa 001', 'gio-hoa-001', 7, '', 'Giỏ hoa được thiết kế bởi:

- Hoa hồng đỏ chủ đạo thể hiện tình yêu nồng cháy, lòng biết ơn và sự trân trọng sâu sắc.
- Hoa baby trắng đan xen tinh tế, giúp bố cục thêm mềm mại và hài hòa.
- Lá trang trí được phối khéo léo, tạo nền tôn lên sắc hoa rực rỡ và mang lại tổng thể thanh lịch, tinh tế.

Giỏ hoa là sự lựa chọn hoàn hảo cho những dịp đặc biệt như sinh nhật, kỷ niệm, ngày lễ tình yêu hoặc đơn giản là để gửi gắm yêu thương và sự quan tâm chân thành.
', '920000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-21 08:23:48.209', '2026-03-16 09:23:47.000') ON DUPLICATE KEY UPDATE name='Giỏ Hoa 001', slug='gio-hoa-001', price='920000', category_id=7;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (69, 'Giỏ Hoa 002', 'gio-hoa-002', 7, '', 'Giỏ hoa được thiết kế bởi:

- Hoa hồng cam chủ đạo phối sắc chuyển nhẹ nhàng, tạo tổng thể rực rỡ, nổi bật và tràn đầy năng lượng.
- Thiết kế hoa dáng ngang tròn đầy, cắm dày dặn, mang lại cảm giác sung túc và thu hút.

Tổng thể giỏ hoa mang tông cam tượng trưng cho sự may mắn, thành công và khởi đầu thuận lợi. Mẫu hoa phù hợp chúc mừng sinh nhật, khai trương, sự kiện quan trọng hoặc gửi lời chúc phát đạt, thịnh vượng và bền vững lâu dài.
', '930000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-21 08:31:05.474', '2026-03-16 09:23:03.000') ON DUPLICATE KEY UPDATE name='Giỏ Hoa 002', slug='gio-hoa-002', price='930000', category_id=7;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (70, 'Giỏ Hoa 003', 'gio-hoa-003', 7, '', 'Giỏ hoa được thiết kế bởi:

- Hoa hồng đỏ chủ đạo tượng trưng cho tình yêu nồng cháy, sự trân trọng và lời chúc thành công rực rỡ.
- Hoa hồng phối nhẹ nhàng, mang ý nghĩa ngọt ngào, dịu dàng và chân thành.
- Hoa đồng tiền kem thể hiện niềm vui, hạnh phúc và tài lộc, gửi gắm lời chúc may mắn và thịnh vượng.
- Hoa baby trắng đan xen tinh tế, tượng trưng cho sự thuần khiết, bền lâu và những điều tốt đẹp giản dị nhưng sâu sắc.
- Lá xanh trang trí tạo nền hài hòa, giúp tổng thể thêm tự nhiên và sang trọng.

Tổng thể giỏ hoa mang tông đỏ – hồng – kem chủ đạo, không chỉ rực rỡ và thu hút mà còn gửi gắm thông điệp về tình yêu, niềm vui, may mắn và thành công. Mẫu hoa phù hợp chúc mừng sinh nhật, khai trương, kỷ niệm hoặc những dịp đặc biệt để trao gửi yêu thương và lời chúc tốt đẹp lâu dài.
', '590000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-21 08:39:56.173', '2026-03-16 09:23:57.000') ON DUPLICATE KEY UPDATE name='Giỏ Hoa 003', slug='gio-hoa-003', price='590000', category_id=7;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (71, 'Giỏ Hoa 004', 'gio-hoa-004', 7, '', 'Giỏ hoa được thiết kế bởi:

- Hoa hồng chủ đạo tượng trưng cho sự dịu dàng, chân thành và những lời chúc tốt đẹp đầy yêu thương.
- Hoa đồng tiền hồng đan xen nổi bật, mang ý nghĩa về niềm vui, hạnh phúc và thành công viên mãn.
- Hoa baby trắng điểm xuyết tinh tế, tạo cảm giác mềm mại, thuần khiết và bền lâu.
- Lá bạc xanh trang trí được phối hài hòa, giúp tổng thể thêm tự nhiên và sang trọng.


Tổng thể giỏ hoa mang tông hồng chủ đạo, thể hiện sự trân trọng, lời chúc may mắn và phát triển thuận lợi. Mẫu hoa phù hợp chúc mừng khai trương, sinh nhật, kỷ niệm hoặc các sự kiện quan trọng.', '840000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-21 08:42:51.177', '2026-03-16 09:24:07.000') ON DUPLICATE KEY UPDATE name='Giỏ Hoa 004', slug='gio-hoa-004', price='840000', category_id=7;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (72, 'Giỏ Hoa 005', 'gio-hoa-005', 7, '', 'Giỏ hoa được thiết kế bởi:

- Hoa hướng dương nổi bật tượng trưng cho niềm tin, hy vọng và thành công rực rỡ.
- Hoa hồng kem chủ đạo mang ý nghĩa thanh lịch, biết ơn và những lời chúc chân thành.
- Hoa baby trắng điểm xuyết nhẹ nhàng, tạo cảm giác mềm mại và hài hòa cho tổng thể.
- Lá xanh trang trí được phối cân đối, giúp bố cục thêm tự nhiên và tươi mát.

Tổng thể giỏ hoa mang tông vàng – kem chủ đạo, tượng trưng cho sự may mắn, thịnh vượng và khởi đầu thuận lợi. Mẫu hoa phù hợp chúc mừng khai trương, sinh nhật, kỷ niệm hoặc các sự kiện quan trọng, gửi gắm lời chúc thành công và phát triển bền vững.', '840000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-21 08:45:11.805', '2026-03-16 09:24:15.000') ON DUPLICATE KEY UPDATE name='Giỏ Hoa 005', slug='gio-hoa-005', price='840000', category_id=7;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (73, 'Giỏ Hoa 006', 'gio-hoa-006', 7, '', 'Giỏ hoa được thiết kế bởi:

- Hoa hướng dương nổi bật tượng trưng cho niềm tin, hy vọng và sự thành công rực rỡ.
- Hoa hồng kem chủ đạo mang ý nghĩa thanh lịch, chân thành và lời chúc phát triển bền vững.
- Lá xanh trang trí được phối cân đối, giúp bố cục thêm tự nhiên và sang trọng.

Tổng thể giỏ hoa mang tông vàng – kem chủ đạo, tượng trưng cho sự may mắn, thịnh vượng và khai trương hồng phát. Mẫu hoa phù hợp chúc mừng khai trương, sự kiện quan trọng hoặc gửi lời chúc thành công và phát triển lâu dài.', '790000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-21 08:47:40.117', '2026-03-16 09:24:23.000') ON DUPLICATE KEY UPDATE name='Giỏ Hoa 006', slug='gio-hoa-006', price='790000', category_id=7;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (74, 'Giỏ Hoa 007', 'gio-hoa-007', 7, '', 'Giỏ hoa được thiết kế bởi:

- Hoa hồng đỏ nổi bật tượng trưng cho sự nhiệt huyết, quyết tâm và thành công rực rỡ.
- Hoa hồng vàng kem chủ đạo mang ý nghĩa tôn trọng, ghi nhận và lời chúc phát triển bền vững.
- Hoa baby trắng đan xen tinh tế, tạo cảm giác mềm mại, thuần khiết và gắn kết.



Tổng thể giỏ hoa mang tông đỏ – vàng chủ đạo, tượng trưng cho may mắn, thành công và thịnh vượng. Mẫu hoa phù hợp chúc mừng hội nghị, sự kiện quan trọng, khai trương hoặc những cột mốc đáng nhớ, gửi gắm lời chúc phát triển vững mạnh và thành công lâu dài.
', '550000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-21 13:03:44.742', '2026-03-16 09:24:30.000') ON DUPLICATE KEY UPDATE name='Giỏ Hoa 007', slug='gio-hoa-007', price='550000', category_id=7;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (75, 'Giỏ Hoa 008', 'gio-hoa-008', 7, '', 'Giỏ hoa được thiết kế bởi:

- Hoa hồng hồng chủ đạo tượng trưng cho sự dịu dàng, yêu thương và những lời chúc chân thành.
- Hoa hồng kem phối xen kẽ mang ý nghĩa thanh lịch, trân trọng và gắn kết bền lâu.
- Hoa đồng tiền hồng nổi bật thể hiện niềm vui, may mắn và thành công rực rỡ.
- Hoa baby trắng điểm xuyết tinh tế, tạo cảm giác mềm mại và hài hòa cho tổng thể.

Tổng thể giỏ hoa mang tông hồng chủ đạo, tượng trưng cho may mắn, khởi đầu thuận lợi và phát triển bền vững. Mẫu hoa phù hợp chúc mừng khai trương, sinh nhật, kỷ niệm hoặc các sự kiện quan trọng, gửi gắm lời chúc thành công và thịnh vượng lâu dài.
', '1140000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-21 13:06:20.718', '2026-03-16 09:24:40.000') ON DUPLICATE KEY UPDATE name='Giỏ Hoa 008', slug='gio-hoa-008', price='1140000', category_id=7;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (76, 'Giỏ Hoa 009', 'gio-hoa-009', 7, '', 'Giỏ hoa được thiết kế bởi:

- Hoa hồng đỏ chủ đạo tượng trưng cho sự may mắn, nhiệt huyết và lời chúc thành công rực rỡ.
- Hoa đồng tiền đỏ nổi bật thể hiện tài lộc, thịnh vượng và niềm vui trọn vẹn.
- Hoa baby trắng điểm xuyết nhẹ nhàng, tạo sự hài hòa và làm nổi bật sắc đỏ chủ đạo.

Tổng thể giỏ hoa mang tông đỏ chủ đạo, tượng trưng cho may mắn, phát tài và khai trương hồng phát. Mẫu hoa phù hợp chúc mừng khai trương, sự kiện quan trọng hoặc gửi lời chúc thành công và phát triển bền vững.
', '490000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-21 13:08:35.168', '2026-03-16 09:24:48.000') ON DUPLICATE KEY UPDATE name='Giỏ Hoa 009', slug='gio-hoa-009', price='490000', category_id=7;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (77, 'Giỏ Hoa 010', 'gio-hoa-010', 7, '', 'Giỏ hoa được thiết kế bởi:

- Hoa hồng vàng chủ đạo tượng trưng cho niềm vui, thành công và những lời chúc phát triển rực rỡ.

- Hoa hướng dương nổi bật thể hiện niềm tin, hy vọng và ý chí vươn lên mạnh mẽ.

- Hoa cúc mẫu đơn cam tạo điểm nhấn ấn tượng, mang ý nghĩa viên mãn và thịnh vượng.

- Hoa baby trắng nhẹ nhàng, giúp tổng thể thêm hài hòa và tinh tế.

Tổng thể giỏ hoa khoác lên mình sắc vàng – cam rực rỡ đầy năng lượng, tượng trưng cho tài lộc dồi dào, may mắn hanh thông và thành công bền vững. Gam màu ấm áp, nổi bật không chỉ thu hút ánh nhìn mà còn lan tỏa nguồn sinh khí tích cực và tinh thần khởi đầu đầy hứng khởi.', '1250000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-21 13:13:05.360', '2026-03-16 09:24:56.000') ON DUPLICATE KEY UPDATE name='Giỏ Hoa 010', slug='gio-hoa-010', price='1250000', category_id=7;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (78, 'Bình Hoa 001', 'binh-hoa-001', 7, '', 'Giỏ hoa được thiết kế bởi:

- Hoa hồng chủ đạo tượng trưng cho sự ngọt ngào, yêu thương và những lời chúc chân thành.
- Hoa đồng tiền kem tạo điểm nhấn tươi sáng, thể hiện niềm vui và sự viên mãn.
- Hoa baby được điểm khéo léo, tạo chiều sâu và sự hài hòa.
- Bình sứ trắng cao cấp kết hợp nơ hồng mềm mại, tạo nên tổng thể trang nhã và hiện đại.

Tổng thể bình hoa mang tông hồng – cam chủ đạo, tượng trưng cho may mắn, niềm vui và sự phát triển bền vững. Mẫu hoa phù hợp chúc mừng sinh nhật, kỷ niệm, khai trương hoặc các sự kiện quan trọng, thay lời chúc thành công và hạnh phúc dài lâu.
', '1330000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-21 13:17:18.568', '2026-03-16 09:25:06.000') ON DUPLICATE KEY UPDATE name='Bình Hoa 001', slug='binh-hoa-001', price='1330000', category_id=7;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (79, 'Bình Hoa 002', 'binh-hoa-002', 7, '', 'Giỏ hoa được thiết kế bởi:

- Hoa hồng kem chủ đạo tượng trưng cho sự thanh lịch, tinh tế và những lời chúc chân thành.
- Hoa hồng hồng đậm xen kẽ mang ý nghĩa yêu thương, may mắn và niềm vui trọn vẹn.
- Hoa baby hồng tạo điểm nhấn nổi bật, giúp tổng thể thêm mềm mại và cuốn hút.
- Lá tím và lá xanh trang trí được phối hài hòa, tăng chiều sâu và tạo nét hiện đại, sang trọng cho bố cục.
- Bình sứ trắng cao cấp kiểu dáng tối giản, kích thước vừa phải, rất thích hợp trưng bày trên bàn làm việc, bàn tiếp khách hoặc quầy lễ tân.

Tổng thể bình hoa mang tông hồng – kem chủ đạo pha sắc tím nổi bật, tượng trưng cho sự ngọt ngào, may mắn và phát triển bền vững. Mẫu hoa phù hợp chúc mừng sinh nhật, kỷ niệm, khai trương hoặc gửi lời chúc thành công và thịnh vượng dài lâu.
', '1380000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-21 13:43:28.884', '2026-03-16 09:25:13.000') ON DUPLICATE KEY UPDATE name='Bình Hoa 002', slug='binh-hoa-002', price='1380000', category_id=7;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (80, 'Bình Hoa 003', 'binh-hoa-003', 7, '', 'Bình hoa được thiết kế bởi:

- Hoa hồng đỏ chủ đạo tượng trưng cho may mắn, nhiệt huyết và thành công rực rỡ.
- Thiết kế dáng tròn lớn, hoa được cắm dày dặn, phủ kín tạo cảm giác sung túc và nổi bật.
- Bình composit cao cấp tông vàng đồng với họa tiết cổ điển sang trọng, chân đế vững chãi, tôn lên vẻ bề thế và đẳng cấp của toàn bộ bình hoa.

Tổng thể bình hoa mang sắc đỏ rực rỡ đầy quyền lực, tượng trưng cho tài lộc bùng nổ, thành công viên mãn và hành trình phát triển không ngừng vươn xa. Mẫu hoa đặc biệt phù hợp cho khai trương, sinh nhật, thăng chức, kỷ niệm quan trọng hoặc những dịp cần gửi gắm lời chúc thịnh vượng, thắng lợi và rực rỡ dài lâu.
', '2550000', '2800000', NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-21 13:47:03.149', '2026-03-16 12:46:04.000') ON DUPLICATE KEY UPDATE name='Bình Hoa 003', slug='binh-hoa-003', price='2550000', category_id=7;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (81, 'Giỏ Hoa 011', 'gio-hoa-011', 7, '', 'Giỏ hoa được thiết kế bởi:

- Hoa hồng vàng chủ đạo tượng trưng cho tài lộc, may mắn và thành công rực rỡ.

- Hoa hồng kem xen kẽ mang ý nghĩa thanh lịch, chân thành và lời chúc phát triển bền vững.

- Hoa cúc  mẫu đơn nổi bật ở trung tâm tạo điểm nhấn ấn tượng, thể hiện sự viên mãn và thịnh vượng.

- Hoa baby trắng điểm xuyết nhẹ nhàng giúp tổng thể thêm hài hòa và tinh tế.

Tổng thể giỏ hoa mang tông vàng – kem rực rỡ, tượng trưng cho khai trương hồng phát, tài lộc dồi dào và hành trình kinh doanh hanh thông, phát triển bền vững. Mẫu hoa là lời chúc trang trọng và đầy khí thế dành cho những khởi đầu mới – cầu mong công việc thuận buồm xuôi gió, vươn xa mạnh mẽ và gặt hái thành công rực rỡ theo năm tháng.
', '1020000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-21 13:53:24.955', '2026-03-16 12:46:29.000') ON DUPLICATE KEY UPDATE name='Giỏ Hoa 011', slug='gio-hoa-011', price='1020000', category_id=7;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (82, 'Giỏ Hoa 012', 'gio-hoa-012', 7, '', 'Giỏ hoa được thiết kế bởi:

- Hoa hồng cam chủ đạo tượng trưng cho sự nhiệt huyết, năng lượng tích cực và lời chúc thành công rực rỡ.
- Hoa hồng đỏ xen kẽ thể hiện sự trân trọng, đam mê và những lời chúc tốt đẹp đầy ý nghĩa.
- Hoa baby trắng điểm xuyết nhẹ nhàng giúp tổng thể thêm mềm mại và hài hòa.

Tổng thể giỏ hoa mang sắc cam – đỏ rực rỡ đầy sức sống, như lời chúc tuổi mới luôn tràn đầy năng lượng, gặt hái nhiều thành công và hạnh phúc viên mãn trên mọi chặng đường phía trước.', '1070000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-21 13:56:16.043', '2026-03-16 12:46:49.000') ON DUPLICATE KEY UPDATE name='Giỏ Hoa 012', slug='gio-hoa-012', price='1070000', category_id=7;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (83, 'Giỏ Hoa 013', 'gio-hoa-013', 7, '', 'Giỏ hoa được thiết kế bởi:

- Hoa baby trắng phủ trọn giỏ, tượng trưng cho sự tinh khôi, chân thành và những điều tốt đẹp thuần khiết nhất.
- Sắc trắng nhẹ nhàng mang đến cảm giác thanh lịch, trang nhã và đầy tinh tế.

Tổng thể giỏ hoa như một áng mây trắng dịu dàng gửi trao lời chúc sinh nhật an yên, hạnh phúc tròn đầy và một tuổi mới thật nhiều niềm vui, thành công rực rỡ.', '580000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-21 13:58:13.159', '2026-03-16 12:47:00.000') ON DUPLICATE KEY UPDATE name='Giỏ Hoa 013', slug='gio-hoa-013', price='580000', category_id=7;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (84, 'Giỏ Hoa 014', 'gio-hoa-014', 7, '', 'Giỏ hoa được thiết kế bởi:

- Hoa hồng đỏ và hồng  làm chủ đạo, tượng trưng cho tình yêu nồng nàn, sự dịu dàng và những lời chúc chân thành đầy cảm xúc.
- Hoa cẩm chướng đỏ đan xen nổi bật, thể hiện sự trân trọng, yêu thương và lời chúc tốt đẹp bền lâu.
- Hoa hồng trắng điểm xuyết tinh tế, mang ý nghĩa thuần khiết và sự khởi đầu đầy hy vọng.

Tổng thể giỏ hoa mang tông đỏ – hồng chủ đạo, nổi bật và ấn tượng, thể hiện sự yêu thương trọn vẹn cùng lời chúc may mắn, thành công. Mẫu hoa phù hợp tặng sinh nhật, kỷ niệm, khai trương hoặc những dịp đặc biệt cần sự trang trọng và ý nghĩa.
', '990000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-22 11:39:14.500', '2026-03-16 12:47:13.000') ON DUPLICATE KEY UPDATE name='Giỏ Hoa 014', slug='gio-hoa-014', price='990000', category_id=7;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (85, 'Bình Hoa 004', 'binh-hoa-004', 7, '', 'Bình hoa được thiết kế bởi:

- Hoa hồng vàng làm chủ đạo, tượng trưng cho niềm vui, sự ấm áp và những lời chúc thành công, thịnh vượng.
- Hoa hồng kem đan xen nhẹ nhàng, mang ý nghĩa về sự tinh tế, chân thành và khởi đầu thuận lợi.
- Hoa đồng tiền điểm xuyết nổi bật, thể hiện niềm hạnh phúc, may mắn và nguồn năng lượng tích cực.
- Phần bình sứ trắng thiết kế thanh lịch, sang trọng, rất phù hợp để bàn làm việc, bàn tiếp khách hoặc trang trí không gian khai trương – sự kiện.

Tổng thể bình hoa mang tông vàng chủ đạo rực rỡ, thể hiện lời chúc sinh nhật vui vẻ, khai trương hồng phát, công việc thuận lợi và phát triển bền vững. Mẫu hoa phù hợp chúc mừng sinh nhật, khai trương, thăng chức hoặc các dịp quan trọng cần sự nổi bật và ý nghĩa.', '1400000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-22 11:44:55.068', '2026-03-16 12:47:21.000') ON DUPLICATE KEY UPDATE name='Bình Hoa 004', slug='binh-hoa-004', price='1400000', category_id=7;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (86, 'Giỏ Hoa 015', 'gio-hoa-015', 7, '', 'Giỏ hoa được thiết kế bởi:
- Hoa hồng tượng trưng cho sự dịu dàng, yêu thương và lời chúc sinh nhật ngọt ngào.
- Hoa baby trắng đan xen tạo cảm giác mềm mại, tinh tế và bền lâu.
-Lá xanh cao cấp phối hài hòa giúp giỏ hoa thêm đầy đặn, nổi bật và tự nhiên.

Tổng thể giỏ hoa sinh nhật mang tông hồng nhẹ nhàng, sang trọng, là lựa chọn lý tưởng để tặng người yêu, vợ, mẹ hoặc bạn gái trong những dịp đặc biệt.
', '450000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-22 11:48:02.476', '2026-03-16 12:47:31.000') ON DUPLICATE KEY UPDATE name='Giỏ Hoa 015', slug='gio-hoa-015', price='450000', category_id=7;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (87, 'Giỏ Hoa 016', 'gio-hoa-016', 7, '', 'Giỏ hoa được thiết kế bởi:

- Hoa hồng cam chủ đạo tượng trưng cho sự nhiệt huyết, năng lượng tích cực và lời chúc sinh nhật rực rỡ
- Hoa baby trắng đan xen tạo điểm nhấn nhẹ nhàng, giúp tổng thể giỏ hoa sinh nhật thêm mềm mại và tinh tế
- Lá xanh phối hài hòa tăng độ tự nhiên, giúp giỏ hoa trở nên sang trọng và nổi bật hơn
Tổng thể giỏ hoa sinh nhật tông cam rực rỡ không chỉ gây ấn tượng ngay từ ánh nhìn đầu tiên mà còn thay lời chúc một tuổi mới bùng nổ, thành công và tràn đầy hạnh phúc.
', '570000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-22 11:53:09.120', '2026-03-16 12:47:40.000') ON DUPLICATE KEY UPDATE name='Giỏ Hoa 016', slug='gio-hoa-016', price='570000', category_id=7;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (88, 'Giỏ Hoa 019', 'gio-hoa-016-1', 7, '', 'Giỏ hoa được thiết kế bởi:

- Hoa hồng đỏ chủ đạo tượng trưng cho tình yêu nồng nàn, sự trân trọng và lời chúc sinh nhật đầy cảm xúc
- Hoa hồng kem đan xen nhẹ nhàng tạo sự hài hòa, mang ý nghĩa chân thành và tinh tế
- Hoa baby trắng điểm xuyết giúp tổng thể giỏ hoa sinh nhật thêm mềm mại, thanh lịch và sang trọng

Tổng thể giỏ hoa sinh nhật tông đỏ sang trọng không chỉ gây ấn tượng mạnh mẽ mà còn thay lời chúc tuổi mới ngập tràn yêu thương, thành công viên mãn và hạnh phúc trọn vẹn.', '600000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-22 11:57:41.686', '2026-03-16 12:47:48.000') ON DUPLICATE KEY UPDATE name='Giỏ Hoa 019', slug='gio-hoa-016-1', price='600000', category_id=7;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (89, 'Giỏ Hoa 017', 'gio-hoa-017', 7, '', 'Giỏ hoa được thiết kế bởi:

- Hoa hồng hồng và hồng kem chủ đạo tượng trưng cho sự dịu dàng, yêu thương và lời chúc sinh nhật ngọt ngào
- Hoa đồng tiền hồng đan xen nổi bật mang ý nghĩa vui vẻ, may mắn và thành công
- Hoa baby trắng điểm xuyết tinh tế giúp tổng thể giỏ hoa sinh nhật thêm mềm mại và thanh lịch

Tổng thể giỏ hoa sinh nhật tông hồng ngọt ngào không chỉ thu hút ánh nhìn mà còn thay lời chúc tuổi mới an yên, rạng rỡ và ngày càng thành công, hạnh phúc viên mãn.', '940000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-22 12:01:06.009', '2026-03-16 12:47:55.000') ON DUPLICATE KEY UPDATE name='Giỏ Hoa 017', slug='gio-hoa-017', price='940000', category_id=7;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (90, 'Giỏ Hoa 018', 'gio-hoa-017-1', 7, '', 'Giỏ hoa được thiết kế bởi:

- Hoa hồng xanh dương chủ đạo tượng trưng cho sự tin tưởng, hy vọng và lời chúc khai trương thuận lợi, phát triển bền vững
- Hoa cát tường trắng đan xen mang ý nghĩa may mắn, hanh thông và khởi đầu suôn sẻ
- Hoa đồng tiền kem và baby trắng điểm xuyết tạo tổng thể hài hòa, thanh lịch và sang trọng

Tổng thể giỏ hoa khai trương tông xanh – trắng trang nhã là món quà chúc mừng ý nghĩa, thay lời chúc hồng phát, kinh doanh thịnh vượng và ngày càng vươn xa.', '970000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-22 12:03:44.118', '2026-03-16 12:48:03.000') ON DUPLICATE KEY UPDATE name='Giỏ Hoa 018', slug='gio-hoa-017-1', price='970000', category_id=7;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (91, 'Giỏ Hoa 020', 'gio-hoa-020', 7, '', 'Giỏ hoa được thiết kế bởi:

- Hoa hồng vàng chủ đạo tượng trưng cho tài lộc, thịnh vượng và lời chúc khai trương hồng phát
- Hoa baby trắng đan xen tạo điểm nhấn nhẹ nhàng, mang ý nghĩa may mắn và khởi đầu suôn sẻ
- Lá xanh phối hài hòa giúp tổng thể giỏ hoa khai trương thêm tươi mới, sang trọng và hiện đại

Tổng thể giỏ hoa khai trương tông vàng rực rỡ là món quà chúc mừng ý nghĩa, thay lời chúc làm ăn phát đạt, kinh doanh thuận buồm xuôi gió và ngày càng thành công bền vững.', '670000', NULL, NULL, 0, 0, '[]', '[]', '2026-02-22 12:08:21.690', '2026-03-16 12:48:31.000') ON DUPLICATE KEY UPDATE name='Giỏ Hoa 020', slug='gio-hoa-020', price='670000', category_id=7;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (92, 'Giỏ Hoa 021', 'gio-hoa-021', 7, '', 'Giỏ hoa được thiết kế bởi:

- Hoa hồng chủ đạo tượng trưng cho sự yêu thương, chân thành và lời chúc ngọt ngào
- Hoa đồng tiền hồng và kem đan xen mang ý nghĩa may mắn, hạnh phúc và niềm vui trọn vẹn
- Hoa baby trắng cùng lá xanh phối hài hòa giúp tổng thể giỏ hoa thêm mềm mại, sang trọng và tinh tế

Tổng thể giỏ hoa tông hồng ngọt ngào không chỉ thu hút mọi ánh nhìn mà còn là món quà ý nghĩa dành tặng sinh nhật, kỷ niệm, khai trương hay những dịp đặc biệt, thay lời chúc yêu thương, thành công và hạnh phúc dài lâu.', '730000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-22 12:11:03.705', '2026-03-16 12:48:40.000') ON DUPLICATE KEY UPDATE name='Giỏ Hoa 021', slug='gio-hoa-021', price='730000', category_id=7;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (93, 'Giỏ Hoa 022', 'gio-hoa-023', 7, '', 'Giỏ hoa được thiết kế bởi:

-Hoa hồng hồng chủ đạo tượng trưng cho sự yêu thương dịu dàng, ngọt ngào và lời chúc sinh nhật tràn đầy cảm xúc
- Hoa đồng tiền hồng đan xen nổi bật mang ý nghĩa vui tươi, may mắn và nguồn năng lượng tích cực
- Hoa baby trắng cùng lá phối hài hòa giúp tổng thể giỏ hoa sinh nhật thêm mềm mại, thanh lịch và sang trọng

Tổng thể giỏ hoa sinh nhật tông hồng pastel nhẹ nhàng không chỉ ghi điểm bởi vẻ đẹp tinh tế mà còn thay lời chúc tuổi mới an yên, rạng rỡ và hạnh phúc ngập tràn yêu thương.', '600000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-22 12:13:27.932', '2026-03-16 12:48:46.000') ON DUPLICATE KEY UPDATE name='Giỏ Hoa 022', slug='gio-hoa-023', price='600000', category_id=7;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (94, 'Giỏ Hoa 023', 'gio-hoa-023-1', 7, '', 'Giỏ hoa được thiết kế bởi:

- Hoa hồng xanh chủ đạo tượng trưng cho sự tin tưởng, chân thành và tình cảm bền lâu
- Hoa cát tường trắng đan xen mang ý nghĩa nhẹ nhàng, tinh tế và lời chúc bình an
- Hoa cúc mẫu đơn xanh nổi bật tạo điểm nhấn ấn tượng, thể hiện sự may mắn và thành công

Tổng thể giỏ hoa tông xanh – trắng thanh lịch không chỉ gây ấn tượng bởi vẻ đẹp hiện đại mà còn thay lời chúc yêu thương trọn vẹn, hạnh phúc viên mãn và những điều tốt đẹp nhất luôn đồng hành trong mỗi chặng đường.
', '1320000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-22 12:19:09.387', '2026-03-16 12:48:58.000') ON DUPLICATE KEY UPDATE name='Giỏ Hoa 023', slug='gio-hoa-023-1', price='1320000', category_id=7;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (95, 'Giỏ Hoa 024', 'gio-hoa-024', 7, '', 'Giỏ hoa được thiết kế bởi:

- Hoa hồng kem và hồng xanh nhạt chủ đạo tượng trưng cho sự tinh tế, may mắn và lời chúc thành công bền vững
- Hoa cẩm tú cầu xanh đan xen mang ý nghĩa viên mãn, gắn kết và khởi đầu thuận lợi
- Hoa cúc pingpong xanh nổi bật tạo điểm nhấn ấn tượng, thể hiện sự phát triển mạnh mẽ và thịnh vượng

Tổng thể giỏ hoa khai trương tông xanh tươi mát không chỉ gây ấn tượng bởi vẻ đẹp thanh lịch mà còn thay lời chúc khai trương hồng phát, vững bước thành công và ngày càng vươn xa rực rỡ trên hành trình phía trước.', '1150000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-22 12:25:49.263', '2026-03-16 12:49:17.000') ON DUPLICATE KEY UPDATE name='Giỏ Hoa 024', slug='gio-hoa-024', price='1150000', category_id=7;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (96, 'Giỏ Hoa 025', 'gio-hoa-025', 7, '', 'Giỏ hoa được thiết kế bởi:

- Hoa hồng kem và hồng đậm chủ đạo tượng trưng cho sự yêu thương, trân trọng và lời chúc ngọt ngào
- Hoa baby trắng đan xen nhẹ nhàng mang ý nghĩa tinh khôi, chân thành và gắn kết

Tổng thể giỏ hoa tông hồng – kem thanh lịch là món quà ý nghĩa dành tặng dịp sinh nhật hay kỷ niệm, thay lời chúc yêu thương đong đầy, hạnh phúc viên mãn và những điều tốt đẹp nhất luôn song hành.', '750000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-22 12:35:29.744', '2026-03-16 12:49:24.000') ON DUPLICATE KEY UPDATE name='Giỏ Hoa 025', slug='gio-hoa-025', price='750000', category_id=7;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (97, 'Giỏ Hoa 026', 'gio-hoa-026', 7, '', 'Giỏ hoa được thiết kế bởi:

- Hoa hồng kem và hồng vàng chủ đạo tượng trưng cho sự thịnh vượng, thành công và lời chúc phát triển bền vững
- Lá xanh phối hài hòa giúp tổng thể thêm tươi sáng, sang trọng và đầy sức sống

Tổng thể giỏ hoa tông vàng – kem nổi bật là món quà chúc mừng khai trương, kỷ niệm hay sự kiện doanh nghiệp đầy ý nghĩa, thay lời chúc phát triển hưng thịnh, gặt hái nhiều thành tựu và vươn xa bền vững theo thời gian.', '750000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-22 12:38:02.597', '2026-03-16 12:49:31.000') ON DUPLICATE KEY UPDATE name='Giỏ Hoa 026', slug='gio-hoa-026', price='750000', category_id=7;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (98, 'Giỏ Hoa 027', 'gio-hoa-027', 7, '', 'Giỏ hoa được thiết kế bởi:

- Hoa hồng đỏ và hồng vàng chủ đạo tượng trưng cho thành công rực rỡ, may mắn và lời chúc chiến thắng đầy tự hào
- Hoa baby trắng đan xen nhẹ nhàng mang ý nghĩa tinh khôi, gắn kết và những khởi đầu thuận lợi

Tổng thể giỏ hoa tông đỏ – vàng nổi bật là món quà chúc mừng đầy ý nghĩa dành cho khai trương, kỷ niệm hay sự kiện đặc biệt, thay lời chúc phát triển vững mạnh, gặt hái nhiều thành công và luôn vươn lên mạnh mẽ trên chặng đường phía trước.
', '820000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-22 12:40:14.765', '2026-03-16 12:49:40.000') ON DUPLICATE KEY UPDATE name='Giỏ Hoa 027', slug='gio-hoa-027', price='820000', category_id=7;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (99, 'Giỏ Hoa 029', 'gio-hoa-027-1', 7, '', 'Giỏ hoa được thiết kế bởi:

- Hoa hồng đỏ chủ đạo tượng trưng cho tình yêu nồng nàn, sự trân trọng và lời chúc chân thành
- Hoa đồng tiền hồng phối cùng cẩm chướng nhẹ nhàng mang ý nghĩa tươi vui, biết ơn và những điều tốt đẹp dịu dàng

Tổng thể giỏ hoa tông đỏ – hồng nổi bật không chỉ là món quà dành tặng người thân, mà còn là lời tri ân tinh tế và yêu thương sâu sắc, chúc người nhận luôn rạng rỡ, được nâng niu trân trọng và hạnh phúc trọn vẹn trong từng khoảnh khắc của cuộc sống.', '720000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-22 12:45:58.600', '2026-03-16 12:49:47.000') ON DUPLICATE KEY UPDATE name='Giỏ Hoa 029', slug='gio-hoa-027-1', price='720000', category_id=7;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (100, 'Giỏ Hoa 028', 'gio-hoa-028', 7, '', 'Giỏ hoa được thiết kế bởi:

- Hoa hồng kem và hồng chủ đạo tượng trưng cho sự dịu dàng, yêu thương chân thành và những lời chúc ngọt ngào nhất
- Hoa baby trắng đan xen tinh tế mang ý nghĩa tinh khôi, gắn kết và niềm hạnh phúc tròn đầy

Tổng thể giỏ hoa tông hồng – kem trang nhã không chỉ là món quà mừng sinh nhật đầy ý nghĩa, mà còn là lời chúc yêu thương sâu lắng, mong người nhận luôn rạng rỡ như những đóa hoa đang độ đẹp nhất, an nhiên giữa cuộc đời và hạnh phúc đủ đầy theo năm tháng.', '800000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-22 12:47:53.516', '2026-03-16 12:49:57.000') ON DUPLICATE KEY UPDATE name='Giỏ Hoa 028', slug='gio-hoa-028', price='800000', category_id=7;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (101, 'Bó Hoa 001', 'bo-hoa-001', 6, '', 'Bó hoa được thiết kế bởi:

- Hoa hồng đỏ chủ đạo rực rỡ, tượng trưng cho tình yêu nồng cháy, sự nhiệt huyết và những lời chúc thành công đầy mạnh mẽ.
- Hoa hồng kem nhẹ nhàng đan xen, mang ý nghĩa tinh tế, trân trọng và yêu thương chân thành.
- Hoa baby trắng điểm xuyết hài hòa, tạo cảm giác mềm mại, thuần khiết và giúp tổng thể thêm phần thanh thoát.
- Lá xanh phối hợp tự nhiên, tăng chiều sâu và tạo nét hiện đại cho thiết kế.

Tổng thể bó hoa mang tông đỏ – kem sang trọng, nổi bật nhưng vẫn hài hòa và tinh tế. Dáng bó tròn đầy, cắm dày dặn thể hiện sự đủ đầy và viên mãn. Mẫu hoa phù hợp tặng sinh nhật, kỷ niệm, chúc mừng hoặc gửi gắm thông điệp yêu thương, trân trọng và những lời chúc tốt đẹp nhất.', '500000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-24 12:21:14.463', '2026-03-16 12:51:37.000') ON DUPLICATE KEY UPDATE name='Bó Hoa 001', slug='bo-hoa-001', price='500000', category_id=6;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (102, 'Bó Hoa 002', 'bo-hoa-002', 6, '', 'Bó hoa được thiết kế bởi:

- Hoa hồng đỏ chủ đạo rực rỡ, tượng trưng cho tình yêu mãnh liệt, sự quyết tâm và những lời chúc thành công đầy mạnh mẽ.
- Hoa hướng dương nổi bật với sắc vàng tươi sáng, mang ý nghĩa may mắn, lạc quan và luôn hướng về phía trước.
- Hoa baby trắng đan xen nhẹ nhàng, tạo điểm nhấn mềm mại và làm tổng thể thêm phần hài hòa.
- Lá bạc và lá xanh phối hợp tinh tế, tăng chiều sâu và nét hiện đại cho bố cục.
- Giấy gói tông vàng kem sang trọng kết hợp nơ đỏ nổi bật, giúp bó hoa thêm phần ấn tượng và bắt mắt.

Tổng thể bó hoa mang tông đỏ – vàng rực rỡ, tượng trưng cho may mắn, thành công và thịnh vượng. Thiết kế dáng tròn đầy, cắm dày dặn tạo cảm giác sung túc và nổi bật. Mẫu hoa phù hợp tặng sinh nhật, khai trương, chúc mừng thăng chức hoặc gửi gắm lời chúc phát đạt, bứt phá và thành công lâu dài.', '550000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-24 12:26:10.831', '2026-03-16 12:52:04.000') ON DUPLICATE KEY UPDATE name='Bó Hoa 002', slug='bo-hoa-002', price='550000', category_id=6;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (103, 'Bó Hoa 003', 'bo-hoa-003', 6, '', 'Bó hoa được thiết kế bởi:

- Hoa hồng đỏ chủ đạo rực rỡ và dày dặn, tượng trưng cho tình yêu mãnh liệt, sự đam mê và những cảm xúc sâu sắc nhất.
- Hoa baby trắng đan xen tinh tế, mang đến nét mềm mại, thuần khiết và làm nổi bật sắc đỏ quyến rũ của hoa hồng.
- Lá bạc phối hợp hài hòa, tạo chiều sâu và điểm nhấn hiện đại cho tổng thể.

Tổng thể bó hoa mang tông đỏ – đen ấn tượng, thể hiện sự sang trọng, bí ẩn và đầy quyền lực. Thiết kế dáng tròn đầy, cắm dày dặn tạo cảm giác đẳng cấp và nổi bật. Mẫu hoa đặc biệt phù hợp tặng sinh nhật, kỷ niệm, tỏ tình hoặc những dịp quan trọng cần một món quà thật ấn tượng và khó quên.', '790000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-24 12:30:20.095', '2026-03-16 12:52:22.000') ON DUPLICATE KEY UPDATE name='Bó Hoa 003', slug='bo-hoa-003', price='790000', category_id=6;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (104, 'Bó Hoa 004', 'bo-hoa-004', 6, '', 'Bó hoa được thiết kế bởi:

- Hoa hồng phấn chủ đạo với sắc độ nhẹ nhàng, tượng trưng cho sự dịu dàng, tinh tế và tình cảm chân thành.
- Hoa baby trắng đan xen dày dặn, mang đến cảm giác mềm mại, thuần khiết và giúp tổng thể thêm phần thanh thoát.
- Giấy gói tông hồng pastel kết hợp lớp giấy trắng tinh tế cùng nơ lụa mềm mại, làm nổi bật vẻ ngọt ngào và sang trọng.

Tổng thể bó hoa mang gam hồng pastel chủ đạo, nhẹ nhàng nhưng vẫn nổi bật và cuốn hút. Thiết kế dáng tròn đầy, cắm dày dặn tạo cảm giác đủ đầy và tinh tế. Mẫu hoa phù hợp tặng sinh nhật, kỷ niệm, chúc mừng hoặc gửi gắm lời yêu thương ngọt ngào, chân thành và đầy trân trọng.', '550000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-24 12:34:31.418', '2026-03-16 12:52:31.000') ON DUPLICATE KEY UPDATE name='Bó Hoa 004', slug='bo-hoa-004', price='550000', category_id=6;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (105, 'Bó Hoa 005', 'bo-hoa-005', 6, '', 'Bó hoa được thiết kế bởi:

- Hoa baby trắng phủ trọn dáng tròn đầy, tượng trưng cho sự thuần khiết, chân thành và tình yêu trong trẻo.
- Điểm nhấn một đóa hồng đỏ nổi bật ở trung tâm, đại diện cho tình yêu mãnh liệt, duy nhất và trọn vẹn.
- Thiết kế cắm dày tạo hiệu ứng bồng bềnh như một áng mây trắng, mang lại cảm giác mềm mại và tinh tế.

Tổng thể bó hoa mang sắc trắng – đỏ tương phản ấn tượng, vừa nhẹ nhàng vừa nổi bật. Kiểu dáng tròn đầy thể hiện sự viên mãn và trọn vẹn trong cảm xúc. Mẫu hoa đặc biệt phù hợp để tỏ tình, kỷ niệm yêu thương, sinh nhật hoặc gửi gắm thông điệp “em là duy nhất” đầy ý nghĩa và sâu sắc.', '1550000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-24 12:36:37.684', '2026-03-16 12:52:38.000') ON DUPLICATE KEY UPDATE name='Bó Hoa 005', slug='bo-hoa-005', price='1550000', category_id=6;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (106, 'Bó Hoa 006', 'bo-hoa-006', 6, '', 'Bó hoa được thiết kế bởi:

- Hoa hồng cam chủ đạo rực rỡ với sắc độ chuyển màu tự nhiên, tượng trưng cho sự nhiệt huyết, may mắn và thành công tròn đầy.
- Hoa baby trắng đan xen dày dặn, tạo điểm nhấn mềm mại, thuần khiết và giúp tổng thể thêm phần hài hòa.
- Giấy gói tông hồng pastel kết hợp lớp lưới voan nhẹ nhàng cùng nơ ruy băng phối màu nổi bật, làm tổng thể thêm phần sang trọng và bắt mắt.

Tổng thể bó hoa mang gam cam – hồng tươi sáng, rực rỡ nhưng vẫn giữ được nét dịu dàng, tinh tế. Thiết kế dáng tròn lớn, cắm dày dặn thể hiện sự sung túc và đủ đầy. Mẫu hoa phù hợp tặng sinh nhật, khai trương, chúc mừng hoặc gửi lời chúc may mắn, phát triển và thành công bền vững.', '1120000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-24 12:38:13.047', '2026-03-16 12:52:45.000') ON DUPLICATE KEY UPDATE name='Bó Hoa 006', slug='bo-hoa-006', price='1120000', category_id=6;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (107, 'Bó Hoa 007', 'bo-hoa-007', 6, '', 'Bó hoa được thiết kế bởi:

- Hoa hồng chủ đạo với sắc màu nhẹ nhàng, thanh lịch, tượng trưng cho sự dịu dàng, tinh tế và tình cảm chân thành.
- Những bông hồng được chọn lọc kỹ lưỡng, cánh hoa chúm chím hài hòa giữa tông trắng ngà và hồng phấn, tạo hiệu ứng chuyển màu mềm mại, cuốn hút.
- Lá điểm xuyết tinh tế, mang đến nét hiện đại và giúp tổng thể thêm phần tươi mát, tự nhiên.

Tổng thể bó hoa mang gam màu hồng thanh thoát, ngọt ngào nhưng không kém phần tinh tế. Thiết kế dáng tròn vừa phải, cắm hài hòa tạo cảm giác nhẹ nhàng và trang nhã. Mẫu hoa phù hợp tặng sinh nhật, kỷ niệm, chúc mừng hoặc gửi gắm lời yêu thương dịu dàng và đầy trân trọng.', '400000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-24 12:52:58.857', '2026-03-16 12:52:53.000') ON DUPLICATE KEY UPDATE name='Bó Hoa 007', slug='bo-hoa-007', price='400000', category_id=6;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (108, 'Bó Hoa 008', 'bo-hoa-008', 6, '', 'Bó hoa được thiết kế bởi:

- Hoa hồng đỏ và hoa hồng cam chủ đạo phối xen kẽ nổi bật, tượng trưng cho tình yêu mãnh liệt, sự nhiệt huyết và những lời chúc thành công rực rỡ.
- Hoa baby trắng điểm xuyết nhẹ nhàng, tạo cảm giác mềm mại, tinh tế và giúp tổng thể thêm phần hài hòa.
- Lá bạc đan xen khéo léo, mang đến chiều sâu và nét hiện đại cho bố cục.
- Giấy gói tông hồng pastel nhiều lớp kết hợp nơ ruy băng hồng đồng điệu, tạo vẻ ngoài sang trọng và nổi bật.

Tổng thể bó hoa mang gam đỏ – cam rực rỡ trên nền hồng nhẹ nhàng, tạo nên sự tương phản ấn tượng và thu hút ánh nhìn. Thiết kế dáng tròn lớn, cắm dày dặn thể hiện sự đủ đầy và hoành tráng. Mẫu hoa đặc biệt phù hợp tặng sinh nhật, chúc mừng hoặc gửi lời chúc may mắn, thành công và hạnh phúc trọn vẹn.', '850000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-24 12:55:25.930', '2026-03-16 12:53:01.000') ON DUPLICATE KEY UPDATE name='Bó Hoa 008', slug='bo-hoa-008', price='850000', category_id=6;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (109, 'Bó Hoa 009', 'bo-hoa-008-1', 6, '', 'Bó hoa được thiết kế bởi:

- Hoa hồng đỏ chủ đạo rực rỡ và cắm dày dặn, tượng trưng cho tình yêu mãnh liệt, sự đam mê và những cảm xúc sâu sắc, bền chặt theo thời gian.
- Hoa baby trắng điểm xuyết tinh tế, mang đến nét mềm mại, thuần khiết và làm nổi bật sắc đỏ quyến rũ của hoa hồng.
- Giấy gói hai lớp tông đen và nâu sang trọng, kết hợp nơ ruy băng đỏ nổi bật, tạo điểm nhấn ấn tượng và đầy quyền lực.

Tổng thể bó hoa mang gam đỏ – đen mạnh mẽ, sang trọng và cuốn hút. Thiết kế dáng tròn đầy, cắm dày tạo cảm giác đẳng cấp và trang trọng. Mẫu hoa đặc biệt phù hợp cho dịp kỷ niệm yêu thương, cầu hôn hoặc những cột mốc quan trọng trong tình cảm, thay lời khẳng định cho một tình yêu bền vững và trọn vẹn.', '500000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-24 13:00:06.203', '2026-03-16 12:53:08.000') ON DUPLICATE KEY UPDATE name='Bó Hoa 009', slug='bo-hoa-008-1', price='500000', category_id=6;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (110, 'Bó Hoa 010', 'bo-hoa-010', 6, '', 'Bó hoa được thiết kế bởi:

- Hoa hồng đỏ chủ đạo rực rỡ, tượng trưng cho tình yêu mãnh liệt, sự đam mê và những cảm xúc nồng nàn, sâu sắc.
- Hoa hồng kem và hồng phấn đan xen hài hòa, mang đến nét dịu dàng, tinh tế và cân bằng tổng thể sắc đỏ nổi bật.
- Hoa cát tường trắng cùng một số hoa phụ nhỏ điểm xuyết nhẹ nhàng, tạo cảm giác mềm mại và sang trọng.
- Lá bạc phối hợp tinh tế, tăng chiều sâu và nét hiện đại cho bố cục.

Tổng thể bó hoa mang gam đỏ – kem ấn tượng, vừa rực rỡ vừa thanh lịch. Thiết kế dáng tròn lớn, cắm dày và trải rộng tạo cảm giác hoành tráng, đầy đặn và nổi bật. Mẫu hoa đặc biệt phù hợp tặng sinh nhật, kỷ niệm, khai trương hoặc những dịp quan trọng cần một món quà sang trọng và đầy ý nghĩa.', '750000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-24 13:05:15.687', '2026-03-16 12:53:19.000') ON DUPLICATE KEY UPDATE name='Bó Hoa 010', slug='bo-hoa-010', price='750000', category_id=6;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (111, 'Bó Hoa 011', 'bo-hoa-011', 6, '', 'Bó hoa được thiết kế bởi:

- Hoa hồng hồng đậm chủ đạo, tượng trưng cho tình yêu ngọt ngào, sự lãng mạn và những cảm xúc chân thành.
- Hoa hồng kem xen kẽ nhẹ nhàng, tạo sự hài hòa và cân bằng cho tổng thể sắc hồng rực rỡ.
- Hoa đồng tiền hồng nổi bật, mang ý nghĩa về niềm vui, sự tươi mới và nguồn năng lượng tích cực.
- Hoa baby trắng điểm xuyết tinh tế, giúp bó hoa thêm phần mềm mại và thanh thoát.
- Lá bạc đan xen vừa phải, tạo chiều sâu và nét hiện đại cho bố cục.

Tổng thể bó hoa mang gam hồng ngọt ngào, tươi sáng và đầy nữ tính. Thiết kế dáng tròn đầy, cắm dày dặn tạo cảm giác đủ đầy và nổi bật. Mẫu hoa đặc biệt phù hợp tặng sinh nhật, kỷ niệm, chúc mừng hoặc gửi gắm lời yêu thương nhẹ nhàng và trân trọng.', '740000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-24 13:10:35.021', '2026-03-16 12:53:28.000') ON DUPLICATE KEY UPDATE name='Bó Hoa 011', slug='bo-hoa-011', price='740000', category_id=6;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (112, 'Bó Hoa 012', 'bo-hoa-012', 6, '', 'Bó hoa được thiết kế bởi:

- Hoa hồng đỏ chủ đạo cắm dày kín, tượng trưng cho tình yêu mãnh liệt, sự đam mê và những cảm xúc sâu sắc, nồng nàn.
- Hoa baby trắng đan xen tinh tế, tạo điểm nhấn mềm mại và làm nổi bật sắc đỏ rực rỡ của hoa hồng.
- Giấy gói tông đen sang trọng kết hợp nơ ruy băng đỏ nổi bật, tạo sự tương phản ấn tượng và đầy quyền lực.

Tổng thể bó hoa mang gam đỏ – đen mạnh mẽ, sang trọng và cuốn hút ánh nhìn. Thiết kế dáng tròn lớn, cắm dày dặn tạo cảm giác đầy đặn, đẳng cấp và nổi bật. Mẫu hoa đặc biệt phù hợp tặng sinh nhật, kỷ niệm hoặc những dịp quan trọng, thay lời chúc yêu thương và hạnh phúc trọn vẹn.', '1580000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-24 13:19:23.877', '2026-03-16 12:56:52.000') ON DUPLICATE KEY UPDATE name='Bó Hoa 012', slug='bo-hoa-012', price='1580000', category_id=6;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (113, 'Bó Hoa 013', 'bo-hoa-013', 6, '', 'Bó hoa được thiết kế bởi:

- Hoa baby tím chủ đạo cắm dày và phủ tròn đều, tạo nên tổng thể mềm mại như một đám mây nhỏ bồng bềnh. Sắc tím pastel tượng trưng cho sự thủy chung, lãng mạn và những cảm xúc dịu dàng, tinh tế.
- Nơ ruy băng tím bản lớn thắt gọn gàng phía dưới, tạo điểm nhấn mềm mại và nữ tính cho toàn bộ thiết kế.

Tổng thể bó hoa mang gam tím pastel ngọt ngào, nhẹ nhàng và đầy thơ mộng. Thiết kế dáng tròn đầy, cắm dày tạo cảm giác sang trọng nhưng vẫn tinh tế. Mẫu hoa đặc biệt phù hợp tặng sinh nhật, gửi lời chúc yêu thương dịu dàng và chân thành. 💜
', '620000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-24 13:23:21.930', '2026-03-16 12:56:58.000') ON DUPLICATE KEY UPDATE name='Bó Hoa 013', slug='bo-hoa-013', price='620000', category_id=6;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (114, 'Bó Hoa 014', 'bo-hoa-014', 6, '', 'Bó hoa được thiết kế bởi:

- Hoa hồng kem chủ đạo, cắm dày và xếp tròn đều, tượng trưng cho sự dịu dàng, biết ơn và tình yêu thuần khiết, sâu lắng.
- Lá đan xen tự nhiên, tạo điểm nhấn xanh mát, mang đến cảm giác thanh thoát và hiện đại cho tổng thể.
- Nơ ruy băng hồng pastel thắt gọn gàng phía dưới, tăng thêm nét nữ tính và trang nhã.

Tổng thể bó hoa mang gam màu kem – hồng – nâu ấm áp, nhẹ nhàng nhưng vẫn nổi bật. Thiết kế dáng tròn đầy, cắm dày tạo cảm giác đủ đầy và tinh tế. Mẫu hoa đặc biệt phù hợp dành tặng mẹ nhân ngày 8/3, 20/10 hoặc Ngày của Mẹ, thay lời cảm ơn và chúc phúc yêu thương.', '620000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-24 13:25:15.670', '2026-03-16 12:53:53.000') ON DUPLICATE KEY UPDATE name='Bó Hoa 014', slug='bo-hoa-014', price='620000', category_id=6;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (115, 'Bó Hoa 015', 'bo-hoa-015', 6, '', 'Bó hoa được thiết kế bởi:

- Hoa hồng hồng chủ đạo cắm dày kín, tạo nên tổng thể tròn đầy và rực rỡ. Sắc hồng tượng trưng cho sự ngọt ngào, yêu thương chân thành và những cảm xúc lãng mạn.
- Hoa baby trắng điểm xuyết nhẹ nhàng giữa các lớp hoa hồng, giúp tổng thể thêm mềm mại và có chiều sâu.
- Nơ ruy băng hồng pastel thắt dài phía dưới, tăng thêm sự nữ tính và duyên dáng.

Tổng thể bó hoa mang gam hồng ngọt ngào và ấm áp, thiết kế dáng tròn lớn, cắm dày tạo cảm giác đầy đặn và nổi bật. Mẫu hoa đặc biệt phù hợp tặng sinh nhật, dịp kỷ niệm hoặc những dịp cần gửi gắm lời yêu thương chân thành và trân trọng.', '2000000', '2200000', NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-24 13:28:16.079', '2026-03-16 12:57:06.000') ON DUPLICATE KEY UPDATE name='Bó Hoa 015', slug='bo-hoa-015', price='2000000', category_id=6;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (116, 'Bó Hoa 016', 'bo-hoa-016', 6, '', 'Bó hoa được thiết kế bởi:

- Hoa hướng dương chủ đạo với sắc vàng rực rỡ, tượng trưng cho niềm tin, hy vọng và sự thành công tỏa sáng. Những bông hoa nở to, cắm đều và nổi bật tạo nên tổng thể đầy năng lượng tích cực.
- Hoa baby trắng đan xen nhẹ nhàng, giúp bố cục thêm mềm mại và tạo độ chuyển hài hòa giữa các bông hướng dương.
- Lá bạc điểm xuyết tinh tế, mang đến sắc xanh dịu mát và tăng chiều sâu cho bó hoa.
- Nơ ruy băng nâu ánh đồng thắt dài phía dưới, tạo điểm nhấn ấm áp và thanh lịch.

Tổng thể bó hoa mang gam vàng – nâu ấm áp, rực rỡ và tràn đầy sức sống. Thiết kế dáng tròn vừa phải, cắm đan xen tự nhiên tạo cảm giác tươi mới và nổi bật. Mẫu hoa đặc biệt phù hợp tặng dịp tốt nghiệp, khai trương hoặc những cột mốc quan trọng, thay lời chúc thành công và tương lai rạng rỡ.', '500000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-24 13:30:19.917', '2026-03-16 12:56:46.000') ON DUPLICATE KEY UPDATE name='Bó Hoa 016', slug='bo-hoa-016', price='500000', category_id=6;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (117, 'Bó Hoa 017', 'bo-hoa-017', 6, '', 'Bó hoa được thiết kế bởi:

- Hoa đồng tiền hồng pastel chủ đạo, nở tròn rực rỡ ở trung tâm, tượng trưng cho niềm vui, sự tươi mới và nguồn năng lượng tích cực. Sắc hồng nhẹ mang đến cảm giác dịu dàng và đầy nữ tính.
- Hoa cẩm tú cầu xanh nhạt và trắng làm nền, tạo hiệu ứng bồng bềnh, mềm mại và giúp tổng thể thêm phần hài hòa.
- Lá và cành phụ xanh mảnh đan xen nhẹ nhàng, tạo độ thoáng và chiều sâu cho bố cục.

Tổng thể bó hoa mang gam hồng – xanh pastel nhẹ nhàng, trong trẻo và đầy sức sống. Thiết kế dáng tròn vừa phải, cắm đan xen tự nhiên tạo cảm giác mềm mại và thanh lịch. Mẫu hoa đặc biệt phù hợp tặng sinh nhật, chúc mừng hoặc gửi gắm lời yêu thương dịu dàng và chân thành. ', '420000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-24 13:33:10.871', '2026-03-16 12:56:39.000') ON DUPLICATE KEY UPDATE name='Bó Hoa 017', slug='bo-hoa-017', price='420000', category_id=6;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (118, 'Bó Hoa 018', 'bo-hoa-018', 6, '', 'Bó hoa được thiết kế bởi:

- Hoa hồng hồng đậm chủ đạo, cắm dày kín theo dáng tròn đầy đặn. Sắc hồng tượng trưng cho tình yêu ngọt ngào, sự quan tâm và những cảm xúc chân thành.
- Hoa baby trắng đan xen tinh tế giữa các lớp hoa hồng, tạo điểm nhấn mềm mại và tăng chiều sâu cho tổng thể.
- Giấy gói tông hồng pastel phối cùng lớp in chữ nổi bật phía sau, tạo hiệu ứng sang trọng và hiện đại.
- Nơ voan trắng bản lớn thắt bồng bềnh phía dưới, kết hợp cùng ruy băng đỏ tạo điểm nhấn nổi bật và ấn tượng.

Tổng thể bó hoa mang gam hồng ngọt ngào, rực rỡ và tràn đầy yêu thương. Thiết kế dáng tròn lớn, cắm dày tạo cảm giác sang trọng và nổi bật. Mẫu hoa đặc biệt phù hợp chúc mừng sinh em bé, sinh nhật hoặc những khoảnh khắc quan trọng cần gửi gắm lời yêu thương chân thành và hạnh phúc trọn vẹn. ', '1850000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-24 13:37:50.430', '2026-03-16 12:56:01.000') ON DUPLICATE KEY UPDATE name='Bó Hoa 018', slug='bo-hoa-018', price='1850000', category_id=6;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (119, 'Bó Hoa 019', 'bo-hoa-019', 6, '', 'Bó hoa được thiết kế bởi:

- Hoa hồng đỏ chủ đạo với những bông nở to, cánh hoa xoắn đều và cắm dày theo dáng tròn đầy đặn. Sắc đỏ tượng trưng cho tình yêu mãnh liệt, sự đam mê và những cảm xúc chân thành sâu sắc.
- Hoa baby trắng đan xen nhẹ nhàng giữa các lớp hoa hồng, tạo điểm nhấn tinh tế và giúp tổng thể thêm phần mềm mại, hài hòa.

Tổng thể bó hoa mang gam đỏ – trắng thanh lịch nhưng đầy nổi bật, thiết kế dáng tròn lớn, cắm dày tạo cảm giác sang trọng và ấn tượng. Mẫu hoa đặc biệt phù hợp tặng người yêu, kỷ niệm, cầu hôn hoặc những dịp quan trọng cần bày tỏ tình cảm mãnh liệt và trọn vẹn. ', '630000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-24 13:43:43.390', '2026-03-16 12:56:32.000') ON DUPLICATE KEY UPDATE name='Bó Hoa 019', slug='bo-hoa-019', price='630000', category_id=6;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (121, 'Bó Hoa 020', 'bo-hoa-020-1', 6, '', 'Bó hoa được thiết kế bởi:

- Hoa hồng xanh và hoa hồng trắng chủ đạo, cắm đan xen hài hòa tạo nên tổng thể nổi bật và tinh tế. Sắc xanh tượng trưng cho hy vọng, sự bình an và niềm tin; sắc trắng thể hiện sự thuần khiết, chân thành và những lời chúc tốt đẹp.
-Hoa baby trắng điểm xuyết nhẹ nhàng giữa các bông hồng, giúp bố cục thêm mềm mại và tạo hiệu ứng bồng bềnh tự nhiên.
Tổng thể bó hoa mang gam xanh – trắng dịu mát, trong trẻo và đầy hy vọng. Thiết kế dáng tròn vừa phải, cắm đan xen tự nhiên tạo cảm giác thanh lịch và ấm áp. Mẫu hoa phù hợp tặng sinh nhật, chúc mừng, động viên tinh thần hoặc những dịp đặc biệt để gửi gắm sự quan tâm chân thành và những lời chúc tốt đẹp nhất.', '650000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-24 13:50:45.259', '2026-03-16 12:56:09.000') ON DUPLICATE KEY UPDATE name='Bó Hoa 020', slug='bo-hoa-020-1', price='650000', category_id=6;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (122, 'Bó Hoa 021', 'bo-hoa-021', 6, '', 'Bó hoa được thiết kế bởi:

- Hoa hồng xanh lá và hoa hồng trắng chủ đạo, cắm đan xen hài hòa tạo nên tổng thể tươi mát và đầy ấn tượng. Sắc xanh tượng trưng cho sự khởi đầu mới, năng lượng tích cực và may mắn; sắc trắng thể hiện sự tinh khôi, chân thành và những lời chúc tốt đẹp.
- Hoa cát tường xanh điểm xuyết nhẹ nhàng, mang ý nghĩa về sự thuận lợi, suôn sẻ và thành công trong công việc.
- Hoa phụ nhỏ xinh đan xen tinh tế, tạo cảm giác mềm mại, tự nhiên và giúp bố cục thêm phần sinh động.

Tổng thể bó hoa mang tông xanh – trắng chủ đạo, tươi mới và đầy sức sống. Thiết kế dáng tròn cắm dày dặn, form lớn nổi bật, phù hợp tặng khai trương, chúc mừng công việc, gửi lời động viên hoặc chúc một tuần làm việc vui vẻ, nhiều năng lượng và thành công. ', '820000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-27 12:59:35.491', '2026-03-16 12:53:36.000') ON DUPLICATE KEY UPDATE name='Bó Hoa 021', slug='bo-hoa-021', price='820000', category_id=6;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (123, 'Bó Hoa 022', 'bo-hoa-022', 6, '', 'Bó hoa được thiết kế bởi:

- Hoa hồng chủ đạo, cắm xen kẽ hài hòa tạo nên tổng thể ngọt ngào và tinh tế. Sắc kem tượng trưng cho sự dịu dàng, thanh lịch; sắc hồng thể hiện tình cảm yêu thương chân thành và những lời chúc ngọt ngào nhất.
- Hoa hồng nhí hồng đậm điểm xuyết nổi bật, giúp bó hoa thêm chiều sâu và tạo điểm nhấn cuốn hút.
- Hoa baby trắng đan xen nhẹ nhàng, mang đến cảm giác mềm mại, tinh khôi và làm tổng thể thêm phần thanh thoát.

Tổng thể bó hoa mang gam hồng – kem chủ đạo, nhẹ nhàng nhưng vẫn nổi bật. Thiết kế dáng tròn cắm dày dặn, form đầy đặn tạo cảm giác đủ đầy và chỉn chu. Mẫu hoa phù hợp tặng sinh nhật, kỷ niệm, tỏ tình hoặc gửi gắm lời yêu thương ngọt ngào, tinh tế và đầy trân trọng. ', '780000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-27 13:03:56.201', '2026-03-16 12:56:16.000') ON DUPLICATE KEY UPDATE name='Bó Hoa 022', slug='bo-hoa-022', price='780000', category_id=6;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (124, 'Bó Hoa 023', 'bo-hoa-023', 6, '', 'Bó hoa được thiết kế bởi:

- Hoa hồng trắng chủ đạo, cắm dày dặn tạo nên tổng thể sang trọng và tinh khôi. Sắc trắng tượng trưng cho sự thuần khiết, chân thành và những lời chúc tốt đẹp nhất dành cho người nhận.
- Lá bạc điểm xuyết xen kẽ, mang đến sắc xanh dịu mát, giúp bố cục thêm tự nhiên và hài hòa, đồng thời làm nổi bật vẻ đẹp thanh lịch của hoa hồng trắng.

Tổng thể bó hoa mang gam trắng – đen chủ đạo, tối giản nhưng vô cùng sang trọng và nổi bật. Thiết kế dáng tròn form lớn, cắm dày tay tạo cảm giác đủ đầy và trang nhã. Mẫu hoa phù hợp tặng sinh nhật, kỷ niệm, chúc mừng hoặc gửi gắm lời yêu thương chân thành, tinh tế và đầy trân trọng. ', '700000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-27 13:08:57.657', '2026-03-16 12:56:22.000') ON DUPLICATE KEY UPDATE name='Bó Hoa 023', slug='bo-hoa-023', price='700000', category_id=6;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (125, 'Bó Hoa 024', 'bo-hoa-024', 6, '', 'Bó hoa được thiết kế bởi:

- Hoa hồng vàng chủ đạo, cắm dày dặn tạo nên tổng thể rực rỡ và đầy sức sống. Sắc vàng tượng trưng cho thành công, may mắn và nguồn năng lượng tích cực, rất phù hợp để chúc mừng khởi đầu mới và thăng tiến trong công việc.
- Hoa baby trắng đan xen nhẹ nhàng, mang đến cảm giác mềm mại, tinh tế và giúp tổng thể thêm phần hài hòa, thanh thoát.

Tổng thể bó hoa mang gam vàng chủ đạo, tươi sáng và tràn đầy năng lượng. Thiết kế dáng tròn form lớn, cắm dày tay tạo cảm giác đủ đầy và ấn tượng. Mẫu hoa đặc biệt phù hợp tặng khai trương, chúc mừng thăng chức, hoặc gửi gắm lời chúc thành công rực rỡ và bứt phá trong chặng đường mới. ', '720000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-27 13:14:45.379', '2026-03-16 12:55:54.000') ON DUPLICATE KEY UPDATE name='Bó Hoa 024', slug='bo-hoa-024', price='720000', category_id=6;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (126, 'Bó Hoa 025', 'bo-hoa-025', 6, '', 'Bó hoa được thiết kế bởi:

- Hoa hồng đỏ chủ đạo, kết thành hình trái tim nổi bật và ấn tượng. Sắc đỏ tượng trưng cho tình yêu mãnh liệt, đam mê và sự chân thành sâu sắc, thay lời muốn nói đầy cảm xúc.
- Hoa baby trắng bao quanh viền ngoài, tạo hiệu ứng tương phản tinh tế, vừa làm nổi bật sắc đỏ rực rỡ vừa mang ý nghĩa thuần khiết, trọn vẹn trong tình yêu.

Tổng thể bó hoa mang gam đỏ – đen chủ đạo, mạnh mẽ và đầy cảm xúc. Thiết kế form lớn, tạo hình trái tim độc đáo, cắm dày tay thể hiện sự đầu tư và trân trọng đặc biệt. Mẫu hoa lý tưởng để tỏ tình, kỷ niệm yêu nhau, Valentine hoặc gửi gắm thông điệp yêu thương nồng cháy và trọn vẹn nhất. ', '1750000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-27 13:17:10.743', '2026-03-16 12:55:00.000') ON DUPLICATE KEY UPDATE name='Bó Hoa 025', slug='bo-hoa-025', price='1750000', category_id=6;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (127, 'Bó Hoa 026', 'bo-hoa-026', 6, '', 'Bó hoa được thiết kế bởi:

- Hoa hồng cam chủ đạo, cắm xen kẽ hài hòa tạo nên tổng thể rực rỡ và đầy sức sống. Sắc cam tượng trưng cho sự nhiệt huyết, tươi vui và nguồn năng lượng tích cực, như một lời chúc sinh nhật ngập tràn niềm vui.
- Giấy gói tông vàng cam phối nhiều lớp cùng nơ voan mềm mại, hoàn thiện vẻ ngoài nổi bật, trẻ trung nhưng vẫn sang trọng.

Tổng thể bó hoa mang gam cam – vàng chủ đạo, tươi sáng và tràn đầy năng lượng tích cực. Thiết kế dáng tròn cắm dày dặn, form vừa vặn nhưng ấn tượng, phù hợp tặng sinh nhật, chúc mừng hoặc gửi gắm lời yêu thương ấm áp và chân thành. ', '520000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-27 13:20:44.033', '2026-03-16 12:55:41.000') ON DUPLICATE KEY UPDATE name='Bó Hoa 026', slug='bo-hoa-026', price='520000', category_id=6;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (128, 'Bó Hoa 027', 'bo-hoa-027', 6, '', 'Bó hoa được thiết kế bởi:

- Hoa hồng  phấn chủ đạo, cắm dày tay tạo form tròn lớn sang trọng và đầy đặn. Sắc hồng nhẹ nhàng tượng trưng cho tình yêu ngọt ngào, sự dịu dàng và những cảm xúc chân thành, tinh tế nhất.
- Hoa baby trắng đan xen xung quanh, mang ý nghĩa thuần khiết và trọn vẹn, đồng thời giúp tổng thể bó hoa thêm phần mềm mại và hài hòa.

Tổng thể bó hoa mang gam hồng pastel nhẹ nhàng nhưng vô cùng nổi bật. Thiết kế form đại, cắm dày tỉ mỉ thể hiện sự đầu tư và trân trọng đặc biệt. Mẫu hoa lý tưởng để tỏ tình, kỷ niệm yêu nhau, cầu hôn, sinh nhật hoặc gửi gắm thông điệp yêu thương ngọt ngào và bền lâu. ', '1990000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-27 13:22:47.120', '2026-03-16 12:53:44.000') ON DUPLICATE KEY UPDATE name='Bó Hoa 027', slug='bo-hoa-027', price='1990000', category_id=6;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (129, 'Bó Hoa 028', 'bo-hoa-028', 6, '', 'Bó hoa được thiết kế bởi:

- Hoa hồng kem chủ đạo, cắm xen kẽ hài hòa tạo form tròn đầy đặn và sang trọng. Sắc hồng nhẹ nhàng tượng trưng cho tình yêu dịu dàng, sự quan tâm tinh tế và những cảm xúc chân thành nhất.
- Hoa baby trắng điểm xuyết dày quanh các bông hồng, mang ý nghĩa thuần khiết, trọn vẹn và giúp tổng thể thêm phần mềm mại, bồng bềnh.
- Giấy gói tông đen cao cấp phối nhiều lớp, kết hợp nơ lụa trắng nổi bật, tạo hiệu ứng tương phản ấn tượng giữa nền tối và gam hoa pastel nhẹ nhàng.

Tổng thể bó hoa mang gam hồng pastel – đen chủ đạo, vừa ngọt ngào vừa cá tính. Thiết kế form tròn cắm dày tỉ mỉ, sang trọng và hiện đại, phù hợp tặng sinh nhật, kỷ niệm, chúc mừng hoặc gửi gắm lời yêu thương tinh tế và đầy trân trọng. ', '420000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-27 13:25:18.486', '2026-03-16 12:54:48.000') ON DUPLICATE KEY UPDATE name='Bó Hoa 028', slug='bo-hoa-028', price='420000', category_id=6;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (130, 'Bó Hoa 029', 'bo-hoa-029', 6, '', 'Bó hoa được thiết kế bởi:

- Hoa hồng đỏ chủ đạo, cắm dày tay tạo form tròn lớn đầy đặn và nổi bật. Sắc đỏ rực rỡ tượng trưng cho tình yêu mãnh liệt, đam mê và sự chân thành sâu sắc, thay lời muốn nói đầy cảm xúc.
- Hoa baby trắng viền tròn xung quanh, tạo hiệu ứng tương phản tinh tế, vừa làm nổi bật sắc đỏ quyến rũ vừa mang ý nghĩa thuần khiết, trọn vẹn trong tình yêu.
- Giấy gói tông vàng kem phối nhiều lớp cùng lớp lót trắng nhẹ nhàng, kết hợp nơ đỏ nổi bật tạo điểm nhấn hài hòa và bắt mắt.

Tổng thể bó hoa mang gam đỏ – vàng chủ đạo, rực rỡ và đầy năng lượng. Thiết kế form tròn cắm dày tỉ mỉ, sang trọng và ấn tượng, phù hợp tặng sinh nhật, tỏ tình, kỷ niệm yêu nhau, Valentine hoặc gửi gắm thông điệp yêu thương nồng cháy và chân thành nhất. ', '800000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-27 13:29:18.303', '2026-03-16 12:54:29.000') ON DUPLICATE KEY UPDATE name='Bó Hoa 029', slug='bo-hoa-029', price='800000', category_id=6;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (131, 'Bó Hoa 030', 'bo-hoa-030', 6, '', 'Bó hoa được thiết kế bởi:

- Hoa cúc mẫu đơn xanh dương chủ đạo, cắm nổi bật ở trung tâm tạo điểm nhấn ấn tượng và khác biệt. Sắc xanh tượng trưng cho sự tin tưởng, hy vọng và bình an, như một lời chúc nhẹ nhàng nhưng đầy ý nghĩa.
- Hoa hồng trắng đan xen hài hòa, mang thông điệp về sự tinh khôi, chân thành và những tình cảm trong sáng, bền lâu.
- Hoa baby trắng cùng các loại hoa phụ nhỏ xinh điểm xuyết tinh tế, giúp tổng thể thêm mềm mại và cân đối.

Tổng thể bó hoa mang gam xanh – trắng chủ đạo, tươi mát và đầy sức sống. Thiết kế form tròn cắm dày tay, phối màu hài hòa giữa sắc xanh nổi bật và nền trắng tinh khôi, phù hợp tặng sinh nhật, kỷ niệm hoặc gửi lời chúc yêu thương ngọt ngào và tràn đầy hạnh phúc. ', '1420000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-27 13:31:38.155', '2026-03-16 12:54:23.000') ON DUPLICATE KEY UPDATE name='Bó Hoa 030', slug='bo-hoa-030', price='1420000', category_id=6;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (132, 'Bó Hoa 031', 'bo-hoa-031', 6, '', 'Bó hoa được thiết kế bởi:

- Hoa hướng dương chủ đạo, nổi bật với sắc vàng rực rỡ tượng trưng cho niềm tin, hy vọng và nguồn năng lượng tích cực. Những đóa hướng dương như lời chúc luôn mạnh mẽ, lạc quan và hướng về phía ánh sáng.
- Hoa hồng kem, hồng pastel và trắng đan xen hài hòa, mang ý nghĩa về sự dịu dàng, chân thành và những tình cảm ấm áp, bền lâu.
- Hoa đồng tiền và các loại hoa phụ nhỏ xinh điểm xuyết tinh tế, giúp tổng thể thêm sinh động, mềm mại và đầy sức sống.

Tổng thể bó hoa mang gam vàng – trắng – pastel chủ đạo, tươi sáng và tràn đầy năng lượng tích cực. Thiết kế form tròn cắm dày tay, phối màu hài hòa giữa sắc vàng nổi bật và nền hoa nhẹ nhàng, phù hợp tặng sinh nhật, chúc mừng, khai trương hoặc gửi gắm lời chúc thành công và hạnh phúc rạng rỡ. ', '840000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-27 13:34:12.312', '2026-03-16 12:54:16.000') ON DUPLICATE KEY UPDATE name='Bó Hoa 031', slug='bo-hoa-031', price='840000', category_id=6;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (133, 'Bó Hoa 032', 'bo-hoa-032', 6, '', 'Bó hoa được thiết kế bởi:

- Hoa hồng tím  và hồng phấn chủ đạo, cắm dày tay theo form tròn đầy đặn, tạo cảm giác sang trọng và cuốn hút. Sắc tím tượng trưng cho sự thủy chung, tinh tế và ngưỡng mộ; trong khi hồng phấn mang ý nghĩa dịu dàng, yêu thương và trân trọng.
- Hoa baby trắng điểm xuyết xen kẽ, tạo hiệu ứng mềm mại và giúp tổng thể thêm phần hài hòa, tinh khôi.
- Giấy gói màu đen phối nhiều lớp cá tính, tạo nền tương phản ấn tượng giúp màu hoa trở nên nổi bật hơn, kết hợp nơ ruy băng kem nhẹ nhàng tạo điểm nhấn thanh lịch.

Tổng thể bó hoa mang gam tím – hồng chủ đạo trên nền đen sang trọng, vừa hiện đại vừa tinh tế. Thiết kế form tròn cắm dày tỉ mỉ, phù hợp tặng sinh nhật, chúc mừng, kỷ niệm hoặc gửi gắm thông điệp yêu thương chân thành và đầy trân trọng. ', '840000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-27 13:36:18.395', '2026-03-16 12:54:10.000') ON DUPLICATE KEY UPDATE name='Bó Hoa 032', slug='bo-hoa-032', price='840000', category_id=6;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (134, 'Bó Hoa 033', 'bo-hoa-033', 6, '', 'Bó hoa được thiết kế bởi:

- Hoa hồng đỏ chủ đạo, cắm dày tay tạo form tròn lớn đầy đặn và vô cùng nổi bật. Sắc đỏ rực rỡ tượng trưng cho tình yêu mãnh liệt, đam mê cháy bỏng và sự chân thành sâu sắc, như một lời tỏ bày đầy cảm xúc.
- Hoa baby trắng viền tròn xung quanh, tạo sự tương phản tinh tế giúp tôn lên sắc đỏ quyến rũ, đồng thời mang ý nghĩa về sự thuần khiết và trọn vẹn trong tình yêu.
- Giấy gói tông hồng pastel phối cùng lớp kem nhẹ nhàng, thiết kế nhiều lớp mềm mại ôm trọn bó hoa. Nơ ruy băng kem in chữ nổi bật tạo điểm nhấn thanh lịch và hiện đại.

Tổng thể bó hoa mang gam đỏ – hồng – trắng chủ đạo, rực rỡ và ngọt ngào. Thiết kế form tròn cắm dày tỉ mỉ, ấn tượng và sang trọng, phù hợp tặng sinh nhật, kỷ niệm hoặc gửi gắm thông điệp yêu thương nồng cháy và chân thành nhất. ', '1290000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-02-27 13:38:52.011', '2026-03-16 12:54:01.000') ON DUPLICATE KEY UPDATE name='Bó Hoa 033', slug='bo-hoa-033', price='1290000', category_id=6;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (135, 'Giỏ Hoa Quả 001', 'gio-hoa-qua-001', 1, '', '', '1350000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-03-17 01:45:40.848', '2026-03-17 01:45:40.848') ON DUPLICATE KEY UPDATE name='Giỏ Hoa Quả 001', slug='gio-hoa-qua-001', price='1350000', category_id=1;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (136, 'Giỏ Hoa Quả 002', 'gio-hoa-qua-002', 1, '', '', '1320000', NULL, NULL, 0, 0, '[]', '[]', '2026-03-17 01:53:17.788', '2026-03-17 01:53:17.788') ON DUPLICATE KEY UPDATE name='Giỏ Hoa Quả 002', slug='gio-hoa-qua-002', price='1320000', category_id=1;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (137, 'Giỏ Hoa Quả 003', 'gio-hoa-qua-003', 1, '', '', '1200000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-03-17 01:54:16.104', '2026-03-17 07:11:40.000') ON DUPLICATE KEY UPDATE name='Giỏ Hoa Quả 003', slug='gio-hoa-qua-003', price='1200000', category_id=1;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (138, 'Giỏ Hoa Quả 004', 'gio-hoa-qua-004', 1, '', '', '1300000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-03-17 01:58:09.200', '2026-03-19 03:33:20.000') ON DUPLICATE KEY UPDATE name='Giỏ Hoa Quả 004', slug='gio-hoa-qua-004', price='1300000', category_id=1;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (139, 'Giỏ Hoa Quả 005', 'gio-hoa-qua-005', 1, '', '', '1000000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-03-17 02:10:07.904', '2026-03-19 03:20:41.000') ON DUPLICATE KEY UPDATE name='Giỏ Hoa Quả 005', slug='gio-hoa-qua-005', price='1000000', category_id=1;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (140, 'Giỏ Hoa Quả 006', 'gio-hoa-qua-006', 1, '', '', '900000', '1000000', NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-03-17 02:11:57.990', '2026-03-19 03:08:59.000') ON DUPLICATE KEY UPDATE name='Giỏ Hoa Quả 006', slug='gio-hoa-qua-006', price='900000', category_id=1;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (141, 'Giỏ Hoa Quả 007', 'gio-hoa-qua-007', 1, '', '', '1480000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-03-17 02:13:22.215', '2026-03-17 02:13:22.215') ON DUPLICATE KEY UPDATE name='Giỏ Hoa Quả 007', slug='gio-hoa-qua-007', price='1480000', category_id=1;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (142, 'Giỏ Hoa Quả 008', 'gio-hoa-qua-008', 1, '', '', '1250000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-03-17 02:15:27.121', '2026-03-17 02:15:27.121') ON DUPLICATE KEY UPDATE name='Giỏ Hoa Quả 008', slug='gio-hoa-qua-008', price='1250000', category_id=1;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (143, 'Giỏ Hoa Quả 009', 'gio-hoa-qua-009', 1, '', '', '800000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-03-17 07:26:36.966', '2026-03-17 07:26:36.966') ON DUPLICATE KEY UPDATE name='Giỏ Hoa Quả 009', slug='gio-hoa-qua-009', price='800000', category_id=1;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (144, 'Giỏ Hoa Quả 010', 'gio-hoa-qua-009-1', 1, '', '', '790000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-03-17 07:27:24.291', '2026-03-19 02:28:18.000') ON DUPLICATE KEY UPDATE name='Giỏ Hoa Quả 010', slug='gio-hoa-qua-009-1', price='790000', category_id=1;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (145, 'Giỏ Hoa Quả 011', 'gio-hoa-qua-011', 1, '', '', '1050000', NULL, NULL, 0, 0, '[]', '["Đám Tang"]', '2026-03-19 02:30:56.277', '2026-03-19 02:30:56.277') ON DUPLICATE KEY UPDATE name='Giỏ Hoa Quả 011', slug='gio-hoa-qua-011', price='1050000', category_id=1;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (146, 'Giỏ Hoa Quả 012', 'gio-hoa-qua-012', 1, '', '', '1500000', NULL, NULL, 0, 0, '[]', '[]', '2026-03-19 02:33:51.707', '2026-03-19 02:33:51.707') ON DUPLICATE KEY UPDATE name='Giỏ Hoa Quả 012', slug='gio-hoa-qua-012', price='1500000', category_id=1;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (147, 'Giỏ Hoa Quả 013', 'gio-hoa-qua-013', 1, '', '', '1250000', NULL, NULL, 0, 0, '[]', '["Đám Tang", "Kính Lễ"]', '2026-03-19 02:34:42.106', '2026-03-19 02:34:42.106') ON DUPLICATE KEY UPDATE name='Giỏ Hoa Quả 013', slug='gio-hoa-qua-013', price='1250000', category_id=1;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (148, 'Giỏ Hoa Quả 014', 'gio-hoa-qua-014', 1, '', '', '1690000', '1850000', NULL, 0, 0, '[]', '["Đám Tang", "Kính Lễ"]', '2026-03-19 02:35:47.310', '2026-03-19 02:35:47.310') ON DUPLICATE KEY UPDATE name='Giỏ Hoa Quả 014', slug='gio-hoa-qua-014', price='1690000', category_id=1;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (149, 'Giỏ Hoa Quả 015', 'gio-hoa-qua-015', 1, '', '', '1580000', NULL, NULL, 0, 0, '[]', '["Đám Tang", "Kính Lễ"]', '2026-03-19 02:37:41.175', '2026-03-19 02:37:41.175') ON DUPLICATE KEY UPDATE name='Giỏ Hoa Quả 015', slug='gio-hoa-qua-015', price='1580000', category_id=1;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (150, 'Giỏ Hoa Quả 016', 'gio-hoa-qua-016', 1, '', '', '1750000', '2000000', NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-03-19 02:43:15.880', '2026-03-19 02:43:15.880') ON DUPLICATE KEY UPDATE name='Giỏ Hoa Quả 016', slug='gio-hoa-qua-016', price='1750000', category_id=1;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (151, 'Giỏ Hoa Quả 017', 'gio-hoa-qua-017', 1, '', '', '1300000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-03-19 02:46:54.886', '2026-03-19 02:46:54.886') ON DUPLICATE KEY UPDATE name='Giỏ Hoa Quả 017', slug='gio-hoa-qua-017', price='1300000', category_id=1;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (152, 'Giỏ Hoa Quả 018', 'gio-hoa-qua-018', 1, '', '', '1390000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-03-19 02:48:04.982', '2026-03-19 02:48:04.982') ON DUPLICATE KEY UPDATE name='Giỏ Hoa Quả 018', slug='gio-hoa-qua-018', price='1390000', category_id=1;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (153, 'Giỏ Hoa Quả 019', 'gio-hoa-qua-019', 1, '', '', '990000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-03-19 02:54:28.787', '2026-03-19 02:54:28.787') ON DUPLICATE KEY UPDATE name='Giỏ Hoa Quả 019', slug='gio-hoa-qua-019', price='990000', category_id=1;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (154, 'Giỏ Hoa Quả 020', 'gio-hoa-qua-020', 1, '', '', '1290000', '1500000', NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-03-19 03:00:38.150', '2026-03-19 03:00:38.150') ON DUPLICATE KEY UPDATE name='Giỏ Hoa Quả 020', slug='gio-hoa-qua-020', price='1290000', category_id=1;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (155, 'Giỏ Hoa Quả 021', 'gio-hoa-qua-021', 1, '', '', '1080000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-03-19 03:01:16.938', '2026-03-19 03:01:16.938') ON DUPLICATE KEY UPDATE name='Giỏ Hoa Quả 021', slug='gio-hoa-qua-021', price='1080000', category_id=1;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (156, 'Giỏ Hoa Quả 022', 'gio-hoa-qua-022', 1, '', '', '1850000', '2000000', NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-03-19 03:02:37.321', '2026-03-19 03:02:37.321') ON DUPLICATE KEY UPDATE name='Giỏ Hoa Quả 022', slug='gio-hoa-qua-022', price='1850000', category_id=1;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (157, 'Giỏ Hoa Quả 023', 'gio-hoa-qua-023', 1, '', '', '1290000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-03-19 03:03:24.763', '2026-03-19 03:03:24.763') ON DUPLICATE KEY UPDATE name='Giỏ Hoa Quả 023', slug='gio-hoa-qua-023', price='1290000', category_id=1;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (158, 'Giỏ Hoa Quả 024', 'gio-hoa-qua-024', 1, '', '', '1400000', NULL, NULL, 0, 0, '[]', '["Đám Tang", "Kính Lễ"]', '2026-03-19 03:05:15.700', '2026-03-19 03:05:15.700') ON DUPLICATE KEY UPDATE name='Giỏ Hoa Quả 024', slug='gio-hoa-qua-024', price='1400000', category_id=1;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (159, 'Giỏ Hoa Quả 025', 'gio-hoa-qua-025', 1, '', '', '2500000', '2800000', NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-03-19 03:06:28.833', '2026-03-19 03:07:31.000') ON DUPLICATE KEY UPDATE name='Giỏ Hoa Quả 025', slug='gio-hoa-qua-025', price='2500000', category_id=1;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (160, 'Giỏ Hoa Quả 026', 'gio-hoa-qua-026', 1, '', '', '1300000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-03-19 03:24:52.960', '2026-03-19 03:24:52.960') ON DUPLICATE KEY UPDATE name='Giỏ Hoa Quả 026', slug='gio-hoa-qua-026', price='1300000', category_id=1;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (161, 'Giỏ Hoa Quả 027', 'gio-hoa-qua-027', 1, '', '', '1250000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-03-19 03:28:25.621', '2026-03-19 03:28:25.621') ON DUPLICATE KEY UPDATE name='Giỏ Hoa Quả 027', slug='gio-hoa-qua-027', price='1250000', category_id=1;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (162, 'Giỏ Hoa Quả 031', 'gio-hoa-qua-028', 1, '', '', '1350000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-03-19 03:35:36.308', '2026-03-19 03:40:45.000') ON DUPLICATE KEY UPDATE name='Giỏ Hoa Quả 031', slug='gio-hoa-qua-028', price='1350000', category_id=1;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (163, 'Giỏ Hoa Quả 028', 'gio-hoa-qua-028-1', 1, '', '', '1380000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-03-19 03:36:20.387', '2026-03-19 03:36:20.387') ON DUPLICATE KEY UPDATE name='Giỏ Hoa Quả 028', slug='gio-hoa-qua-028-1', price='1380000', category_id=1;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (164, 'Giỏ Hoa Quả 029', 'gio-hoa-qua-029', 1, '', '', '1220000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-03-19 03:36:59.289', '2026-03-19 03:36:59.289') ON DUPLICATE KEY UPDATE name='Giỏ Hoa Quả 029', slug='gio-hoa-qua-029', price='1220000', category_id=1;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (165, 'Giỏ Hoa Quả 030', 'gio-hoa-qua-030', 1, '', '', '1350000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-03-19 03:40:30.218', '2026-03-19 03:40:30.218') ON DUPLICATE KEY UPDATE name='Giỏ Hoa Quả 030', slug='gio-hoa-qua-030', price='1350000', category_id=1;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (166, 'Bó Hoa 034', 'bo-hoa-034', 6, '', 'Bó hoa được thiết kế bởi:

- Hoa hồng xanh làm chủ đạo, kết hợp cùng hoa cúc mẫu đơn xanh tạo nên tổng thể nổi bật, hiện đại và đầy cuốn hút. Sắc xanh tượng trưng cho sự bình yên, hy vọng và những điều tốt đẹp, rất phù hợp để gửi gắm lời chúc ý nghĩa.

- Hoa cúc tana trắng được điểm xen kẽ, nhẹ nhàng giúp tổng thể trở nên hài hòa, mềm mại hơn.

Tổng thể bó hoa mang gam xanh – trắng chủ đạo, thể hiện sự tinh tế, thanh lịch và không kém phần hiện đại. Form tròn cắm dày tỉ mỉ, phù hợp tặng sinh nhật, chúc mừng, khai trương hoặc gửi gắm những lời chúc tốt đẹp và chân thành.', '990000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-03-19 04:06:17.631', '2026-03-19 04:06:17.631') ON DUPLICATE KEY UPDATE name='Bó Hoa 034', slug='bo-hoa-034', price='990000', category_id=6;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (167, 'Bó Hoa 035', 'bo-hoa-035', 6, '', 'Bó hoa được thiết kế bởi:

- Bó hoa được phối giữa hoa hồng hồng, hồng pastel và tím tạo nên tổng thể ngọt ngào, tinh tế và đầy cuốn hút. Sắc hồng tượng trưng cho tình yêu dịu dàng, sự quan tâm và yêu thương; trong khi màu tím thể hiện sự nhẹ nhàng, thanh lịch và sự thuỷ chung.

- Hoa baby trắng được điểm xuyết xen kẽ, mang đến cảm giác mềm mại, tinh khôi, giúp tổng thể bó hoa thêm phần hài hòa và bay bổng.

Tổng thể bó hoa mang gam hồng – tím chủ đạo, thể hiện sự dịu dàng, tinh tế và lãng mạn. Form tròn cắm dày tỉ mỉ, phù hợp tặng sinh nhật, kỷ niệm, tỏ tình hoặc gửi gắm những thông điệp yêu thương ngọt ngào và chân thành.', '900000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-03-19 04:10:32.580', '2026-03-19 04:10:32.580') ON DUPLICATE KEY UPDATE name='Bó Hoa 035', slug='bo-hoa-035', price='900000', category_id=6;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (168, 'Bó Hoa 036', 'bo-hoa-036', 6, '', 'Bó hoa được thiết kế bởi:

- Hoa hồng đỏ kết hợp hồng kem tạo nên tổng thể hài hòa giữa sự nồng nàn và nhẹ nhàng. Sắc đỏ tượng trưng cho tình yêu mãnh liệt, đam mê; hồng kem mang ý nghĩa thanh lịch, tinh tế và chân thành.

- Hoa baby trắng được điểm xen kẽ, mang đến cảm giác mềm mại, tinh khôi, giúp tổng thể bó hoa trở nên nhẹ nhàng và bay bổng hơn.

Tổng thể bó hoa mang gam đỏ – hồng thể hiện sự lãng mạn, tinh tế và không kém phần cuốn hút. Form tròn cắm dày tỉ mỉ, phù hợp tặng sinh nhật, kỷ niệm, tỏ tình hoặc gửi gắm những thông điệp yêu thương chân thành và sâu sắc.', '500000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-03-19 04:30:33.471', '2026-03-19 04:30:33.471') ON DUPLICATE KEY UPDATE name='Bó Hoa 036', slug='bo-hoa-036', price='500000', category_id=6;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (169, 'Bó Hoa 037', 'bo-hoa-037', 6, '', 'Bó hoa được thiết kế theo phong cách nhẹ nhàng và tinh tế:

- Hoa hồng phấn chủ đạo, tượng trưng cho sự dịu dàng, yêu thương và trân trọng chân thành.

- Hoa baby trắng điểm xuyết xen kẽ, tạo hiệu ứng bồng bềnh, giúp tổng thể thêm phần hài hòa và tinh khôi.

- Giấy gói tông hồng đào phối nhiều lớp, tạo độ xếp tự nhiên và nổi bật dưới ánh sáng. Nơ voan trắng buộc phía dưới mang đến vẻ nhẹ nhàng, bay bổng và nữ tính.

Tổng thể, bó hoa mang gam hồng – trắng ngọt ngào, phù hợp với phong cách lãng mạn và tinh tế. Thiết kế form tròn cắm dày tỉ mỉ, thích hợp để tặng sinh nhật, kỷ niệm, tỏ tình hoặc gửi gắm những thông điệp yêu thương chân thành.', '400000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-03-19 04:34:33.916', '2026-03-19 04:34:33.916') ON DUPLICATE KEY UPDATE name='Bó Hoa 037', slug='bo-hoa-037', price='400000', category_id=6;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (170, 'Bó Hoa 038', 'bo-hoa-038', 6, '', 'Bó hoa được thiết kế theo phong cách nhẹ nhàng, tinh tế nhưng vẫn rất nổi bật: 

- Hoa hồng đỏ chủ đạo, tượng trưng cho tình yêu nồng nàn, mãnh liệt và chân thành.
- Hoa đồng tiền hồng phối xen kẽ, mang ý nghĩa vui tươi, hạnh phúc và sự yêu thương ngọt ngào.
- Hoa cúc tana trắng điểm xuyết tinh tế, tạo hiệu ứng bồng bềnh, giúp tổng thể thêm phần hài hòa và tươi sáng.

Tổng thể, bó hoa mang gam đỏ – hồng vừa ngọt ngào vừa sang trọng. Thiết kế form tròn cắm dày tỉ mỉ, phù hợp tặng sinh nhật, kỷ niệm, tỏ tình hoặc gửi gắm những thông điệp yêu thương nồng nhiệt và chân thành.', '650000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-03-19 04:37:18.706', '2026-03-19 04:37:18.706') ON DUPLICATE KEY UPDATE name='Bó Hoa 038', slug='bo-hoa-038', price='650000', category_id=6;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (171, 'Bó Hoa 039', 'bo-hoa-039', 6, '', 'Bó hoa được thiết kế theo phong cách nhẹ nhàng, tinh tế nhưng vẫn vô cùng nổi bật:

- Hoa hồng kem chủ đạo, được cắm theo form tròn đầy đặn, thể hiện cho sự dịu dàng, thanh lịch và những cảm xúc yêu thương chân thành.
- Một bông hoa hồng đỏ nổi bật ở trung tâm, tạo điểm nhấn đại diện cho tình yêu mãnh liệt và duy nhất.
- Hoa baby trắng viền xung quanh, mang lại hiệu ứng bồng bềnh, giúp tổng thể thêm phần hài hòa và tinh khôi.

Tổng thể, bó hoa mang gam đỏ – kem tinh tế, vừa nổi bật vừa trang nhã. Thiết kế form tròn cắm dày tỉ mỉ, rất phù hợp để tặng sinh nhật, kỷ niệm, tỏ tình hoặc gửi gắm những thông điệp yêu thương sâu sắc và trọn vẹn.', '1500000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-03-19 05:00:34.320', '2026-03-19 05:00:34.320') ON DUPLICATE KEY UPDATE name='Bó Hoa 039', slug='bo-hoa-039', price='1500000', category_id=6;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (172, 'Bó Hoa 040', 'bo-hoa-040', 6, '', 'Bó hoa được thiết kế bởi:

- Hoa baby hồng phủ kín toàn bộ, với những bông nhỏ li ti đan xen nhau, tạo nên hiệu ứng bồng bềnh như mây, mềm mại và vô cùng nổi bật. Sắc hồng ngọt ngào tượng trưng cho sự dịu dàng, lãng mạn và những cảm xúc yêu thương nhẹ nhàng, tinh tế.
- Giấy gói màu đen sang trọng, thiết kế tối giản nhưng tinh tế, làm nổi bật trọn vẹn gam màu hồng của hoa. 

Tổng thể bó hoa mang gam hồng ngọt ngào và đầy nữ tính. Thiết kế form tròn cắm dày tỉ mỉ, nhẹ nhàng nhưng vẫn nổi bật, rất phù hợp để tặng sinh nhật, kỷ niệm hoặc gửi gắm những thông điệp yêu thương tinh tế và chân thành.', '820000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-03-19 08:46:24.828', '2026-03-19 08:46:24.828') ON DUPLICATE KEY UPDATE name='Bó Hoa 040', slug='bo-hoa-040', price='820000', category_id=6;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (173, 'Bó Hoa 041', 'bo-hoa-041', 6, '', 'Bó hoa được thiết kế tinh tế với hình trái tim nổi bật, mang đậm ý nghĩa về tình yêu và sự lãng mạn:

- Hoa hồng đỏ viền ngoài tạo khung trái tim rõ nét, tượng trưng cho tình yêu mãnh liệt, đam mê và sự chân thành sâu sắc.
- Hoa hồng hồng pastel ở trung tâm, xếp khéo léo thành hình trái tim bên trong, mang đến cảm giác dịu dàng, ngọt ngào và đầy yêu thương.
- Hoa baby trắng bao quanh, tạo lớp nền nhẹ nhàng, giúp tổng thể thêm phần hài hòa và tôn lên vẻ đẹp nổi bật của hoa hồng, đồng thời tượng trưng cho sự tinh khôi và trọn vẹn.

Tổng thể bó hoa mang gam đỏ – hồng – trắng, vừa rực rỡ vừa thanh lịch. Thiết kế hình trái tim độc đáo, cắm dày tỉ mỉ, là lựa chọn hoàn hảo cho các dịp như tỏ tình, kỷ niệm hay những khoảnh khắc muốn gửi gắm tình yêu chân thành và sâu sắc.', '1050000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-03-19 08:51:07.432', '2026-03-19 08:51:07.432') ON DUPLICATE KEY UPDATE name='Bó Hoa 041', slug='bo-hoa-041', price='1050000', category_id=6;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (174, 'Bó Hoa 042', 'bo-hoa-042', 6, '', 'Bó hoa mang vẻ đẹp ngọt ngào và nổi bật với sắc hồng rực rỡ, được thiết kế đầy tinh tế:

- Hoa baby hồng phủ kín với những bông nhỏ li ti đan xen tạo nên hiệu ứng bồng bềnh như mây, mềm mại và vô cùng bắt mắt. Sắc hồng tươi tắn tượng trưng cho sự dịu dàng, niềm vui và những cảm xúc yêu thương trong trẻo.
- Giấy gói trắng phối cùng lớp lưới mềm mại được tạo kiểu uốn lượn tinh tế, mang lại cảm giác nhẹ nhàng và thanh thoát. Nơ ruy băng hồng được thắt khéo léo tạo điểm nhấn nữ tính.

Tổng thể bó hoa mang gam hồng chủ đạo, ngọt ngào và tươi sáng. Thiết kế form tròn cắm dày tỉ mỉ, vừa nhẹ nhàng vừa nổi bật, là lựa chọn hoàn hảo để gửi tặng những lời chúc sinh nhật đáng yêu và đầy yêu thương.', '680000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-03-19 08:56:04.724', '2026-03-19 08:56:04.724') ON DUPLICATE KEY UPDATE name='Bó Hoa 042', slug='bo-hoa-042', price='680000', category_id=6;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (175, 'Bó Hoa 043', 'bo-hoa-043', 6, '', 'Bó hoa mang vẻ đẹp thanh lịch và tươi mát, nhưng không kém sưj nổi bật với tông màu xanh – trắng nhẹ nhàng, được thiết kế tinh tế:

- Hoa cẩm tú cầu xanh nhạt là chủ đạo, kết thành cụm tròn đầy đặn với những cánh hoa nhỏ xinh, tạo cảm giác mềm mại và bồng bềnh. Gam màu này tượng trưng cho sự tinh khôi, bình yên và những cảm xúc chân thành.
- Giấy gói trắng phối lớp lưới mỏng được tạo kiểu uốn lượn nhẹ nhàng, mang lại vẻ thanh thoát và hiện đại. Nơ ruy băng xanh lá được thắt tinh tế, tạo điểm nhấn tươi mới và nổi bật.

Tổng thể bó hoa mang phong cách nhẹ nhàng, trang nhã nhưng vẫn rất cuốn hút. Thiết kế form tròn cắm dày tỉ mỉ, phù hợp để tặng sinh nhật, chúc mừng hoặc gửi gắm những lời chúc bình an, tươi mới và đầy ý nghĩa.', '650000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-03-19 09:08:21.957', '2026-03-19 09:08:21.957') ON DUPLICATE KEY UPDATE name='Bó Hoa 043', slug='bo-hoa-043', price='650000', category_id=6;
INSERT INTO products (id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) VALUES (176, 'Bó Hoa 044', 'bo-hoa-044', 6, '', 'Bó hoa mang vẻ đẹp rực rỡ và tràn đầy năng lượng, nổi bật với sắc vàng tươi sáng: 
- Hoa hướng dương là chủ đạo,những cánh hoa vàng rực rỡ ôm trọn nhụy nâu ấm áp, tượng trưng cho niềm vui, sự lạc quan và nguồn năng lượng tích cực.
- Điểm xuyết hoa nhỏ trắng và lá bạc xanh, giúp tổng thể thêm phần mềm mại, tự nhiên và tạo chiều sâu cho bó hoa.

Tổng thể bó hoa mang gam vàng chủ đạo, rực rỡ và ấm áp. Thiết kế form tròn cắm dày tỉ mỉ, là lựa chọn hoàn hảo để tặng sinh nhật, chúc mừng hoặc gửi gắm những lời chúc vui vẻ, tích cực và tràn đầy hy vọng.', '820000', NULL, NULL, 0, 0, '[]', '["Sinh Nhật", "Chúc Mừng", "Ngày Kỷ Niệm"]', '2026-03-19 09:14:17.648', '2026-03-19 09:14:17.648') ON DUPLICATE KEY UPDATE name='Bó Hoa 044', slug='bo-hoa-044', price='820000', category_id=6;

-- =============================================
-- INSERT PRODUCT IMAGES
-- =============================================
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (7, 3, 'https://images.unsplash.com/photo-1578662996442-48f60103fc96?w=800&h=800&fit=crop', NULL, 0) ON DUPLICATE KEY UPDATE url='https://images.unsplash.com/photo-1578662996442-48f60103fc96?w=800&h=800&fit=crop';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (8, 3, 'https://images.unsplash.com/photo-1487070183336-b863922373d4?w=800&h=800&fit=crop', NULL, 1) ON DUPLICATE KEY UPDATE url='https://images.unsplash.com/photo-1487070183336-b863922373d4?w=800&h=800&fit=crop';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (9, 4, 'https://images.unsplash.com/photo-1561181286-d3fee7d55364?w=800&h=800&fit=crop', NULL, 0) ON DUPLICATE KEY UPDATE url='https://images.unsplash.com/photo-1561181286-d3fee7d55364?w=800&h=800&fit=crop';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (10, 4, 'https://images.unsplash.com/photo-1519225421980-715cb0215aed?w=800&h=800&fit=crop', NULL, 1) ON DUPLICATE KEY UPDATE url='https://images.unsplash.com/photo-1519225421980-715cb0215aed?w=800&h=800&fit=crop';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (15, 7, '/uploads/1771329530359-uu04v5.webp', 'Hoa Chia Buồn 001 ', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771329530359-uu04v5.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (18, 8, '/uploads/1771330841166-9omo9f.webp', 'Hoa Chia Buồn 002', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771330841166-9omo9f.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (180, 9, '/uploads/1771331160546-eoza8y.webp', 'Hoa Chia Buồn 003', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771331160546-eoza8y.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (19, 10, '/uploads/1771332113607-ks55c5.webp', 'Hoa Chia Buồn 004', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771332113607-ks55c5.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (29, 11, '/uploads/1771332673557-i4l1tr.webp', 'Hoa Chia Buồn 005', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771332673557-i4l1tr.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (185, 12, '/uploads/1771332717419-fxx10j.webp', 'Hoa Chia Buồn 006', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771332717419-fxx10j.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (30, 13, '/uploads/1771333418310-eyr9a2.webp', 'Hoa Chia Buồn 007', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771333418310-eyr9a2.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (186, 14, '/uploads/1771333873799-aijdtz.webp', 'Hoa Chia Buồn 008', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771333873799-aijdtz.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (33, 15, '/uploads/1771334356441-0j4x7u.webp', 'Hoa Chia Buồn 009', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771334356441-0j4x7u.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (34, 16, '/uploads/1771334615442-t1smrq.webp', 'Hoa Chia Buồn 010', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771334615442-t1smrq.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (35, 17, '/uploads/1771336976626-y73n4n.webp', 'Hoa Chia Buồn 011', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771336976626-y73n4n.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (36, 18, '/uploads/1771380229910-g6ph3m.webp', 'Hoa Chia Buồn 012', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771380229910-g6ph3m.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (37, 19, '/uploads/1771380490037-wewcwu.webp', 'Hoa Chia Buồn 013', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771380490037-wewcwu.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (38, 20, '/uploads/1771413004389-tv63u3.webp', 'Hoa Chia Buồn 014', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771413004389-tv63u3.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (39, 21, '/uploads/1771413324272-9tmx8v.webp', 'Hoa Chia Buồn 015', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771413324272-9tmx8v.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (181, 22, '/uploads/1771419639172-7wbz1a.webp', 'Hoa Chia Buồn 016', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771419639172-7wbz1a.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (182, 23, '/uploads/1771419818572-uqzwhr.webp', 'Hoa Chia Buồn 017', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771419818572-uqzwhr.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (187, 24, '/uploads/1771419959211-ptwapy.webp', 'Hoa Chia Buồn 018', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771419959211-ptwapy.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (43, 25, '/uploads/1771420149057-lzftfd.webp', 'Hoa Chia Buồn 019', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771420149057-lzftfd.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (44, 26, '/uploads/1771420488444-k33bae.webp', 'Hoa Chia Buồn 020', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771420488444-k33bae.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (45, 27, '/uploads/1771421204938-jihrp7.webp', 'Hoa Chia Buồn 021', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771421204938-jihrp7.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (183, 28, '/uploads/1771421401459-39stt7.webp', 'Hoa Chia Buồn 022', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771421401459-39stt7.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (184, 29, '/uploads/1771421634707-dlmc6w.webp', 'Hoa Chia Buồn 022', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771421634707-dlmc6w.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (49, 30, '/uploads/1771422004558-b5ferr.webp', 'Hoa Chia Buồn 024', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771422004558-b5ferr.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (50, 31, '/uploads/1771422121012-wt4odq.webp', 'Hoa Chia Buồn 025', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771422121012-wt4odq.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (51, 32, '/uploads/1771422355379-xt2rde.webp', 'Hoa Chia Buồn 026', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771422355379-xt2rde.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (53, 33, '/uploads/1771422428996-oa7lj8.webp', 'Hoa Chia Buồn 027', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771422428996-oa7lj8.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (54, 34, '/uploads/1771422583229-0q02ot.webp', 'Hoa Chia Buồn 028', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771422583229-0q02ot.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (55, 35, '/uploads/1771423453689-8f41fx.webp', 'Hoa Chia Buồn 029', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771423453689-8f41fx.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (56, 36, '/uploads/1771423598867-81tbqh.webp', 'Hoa Chia Buồn 030', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771423598867-81tbqh.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (57, 37, '/uploads/1771638084154-29l3l8.webp', 'Hoa Chúc Mừng 001', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771638084154-29l3l8.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (58, 38, '/uploads/1771638444011-94t9gb.webp', 'Hoa Chúc Mừng 002', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771638444011-94t9gb.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (62, 39, '/uploads/1771638538825-i80bpn.webp', 'Hoa Chúc Mừng 003', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771638538825-i80bpn.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (74, 40, '/uploads/1771639873500-vcrbvh.webp', 'Hoa Chúc Mừng 004', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771639873500-vcrbvh.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (67, 41, '/uploads/1771640183690-bhtnu2.webp', 'Hoa Chúc Mừng 005', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771640183690-bhtnu2.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (75, 42, '/uploads/1771640657691-05hvx3.webp', 'Hoa Chúc Mừng 006', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771640657691-05hvx3.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (65, 43, '/uploads/1771640911518-hpdu1m.webp', 'Hoa Chúc Mừng 007', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771640911518-hpdu1m.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (66, 44, '/uploads/1771641077960-arld31.webp', 'Hoa Chúc Mừng 008', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771641077960-arld31.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (68, 45, '/uploads/1771642090760-lm8fma.webp', 'Hoa Chúc Mừng 009', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771642090760-lm8fma.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (69, 46, '/uploads/1771642252544-19gbur.webp', 'Hoa Chúc Mừng 010', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771642252544-19gbur.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (70, 47, '/uploads/1771642368665-l2hzxl.webp', 'Hoa Chúc Mừng 011', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771642368665-l2hzxl.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (71, 48, '/uploads/1771642597136-gm8i8k.webp', 'Hoa Chúc Mừng 012', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771642597136-gm8i8k.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (72, 49, '/uploads/1771642757111-a9ayui.webp', 'Hoa Chúc Mừng 013', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771642757111-a9ayui.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (73, 50, '/uploads/1771642921933-yykchy.webp', 'Hoa Chúc Mừng 014', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771642921933-yykchy.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (76, 51, '/uploads/1771645416133-6i97bq.webp', 'Hoa Chúc Mừng 015', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771645416133-6i97bq.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (77, 52, '/uploads/1771645754342-uz9gsx.webp', 'Hoa Chúc Mừng 016', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771645754342-uz9gsx.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (78, 53, '/uploads/1771646296599-fvmb5k.webp', 'Hoa Chúc Mừng 017', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771646296599-fvmb5k.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (79, 54, '/uploads/1771646681622-6adk43.webp', 'Hoa Chúc Mừng 018', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771646681622-6adk43.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (82, 55, '/uploads/1771646843022-2p8or9.webp', 'Hoa Chúc Mừng 018', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771646843022-2p8or9.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (83, 57, '/uploads/1771649066284-j45m80.webp', 'Hoa Chúc Mừng 020', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771649066284-j45m80.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (84, 58, '/uploads/1771649455477-krgtip.webp', 'Hoa Chúc Mừng 021', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771649455477-krgtip.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (85, 59, '/uploads/1771649659590-afrbac.webp', 'Hoa Chúc Mừng 022', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771649659590-afrbac.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (86, 60, '/uploads/1771649888807-tkiz6r.webp', 'Hoa Chúc Mừng 023', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771649888807-tkiz6r.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (89, 61, '/uploads/1771650201048-z3otfm.webp', 'Hoa Chúc Mừng 023', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771650201048-z3otfm.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (88, 62, '/uploads/1771650323896-6c52cd.webp', 'Hoa Chúc Mừng 024', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771650323896-6c52cd.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (90, 63, '/uploads/1771650602027-n6ulp3.webp', 'Hoa Chúc Mừng 026', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771650602027-n6ulp3.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (91, 64, '/uploads/1771650714819-2ib5xd.webp', 'Hoa Chúc Mừng 027', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771650714819-2ib5xd.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (92, 65, '/uploads/1771651834369-9whg6l.webp', 'Hoa Chúc Mừng 028', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771651834369-9whg6l.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (93, 66, '/uploads/1771651978102-ktf6ke.webp', 'Hoa Chúc Mừng 029', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771651978102-ktf6ke.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (94, 67, '/uploads/1771652494722-5olkyk.webp', 'Hoa Chúc Mừng 030', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771652494722-5olkyk.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (189, 68, '/uploads/1771661262961-3o6xaf.webp', 'Giỏ Hoa 001', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771661262961-3o6xaf.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (188, 69, '/uploads/1771662390718-30mw6u.webp', 'Giỏ Hoa 002', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771662390718-30mw6u.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (190, 70, '/uploads/1771662928924-epjhwu.webp', 'Giỏ Hoa 003', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771662928924-epjhwu.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (191, 71, '/uploads/1771663222256-2uecbd.webp', 'Giỏ Hoa 004', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771663222256-2uecbd.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (192, 72, '/uploads/1771663398460-e8gw70.webp', 'Giỏ Hoa 005', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771663398460-e8gw70.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (193, 73, '/uploads/1771663535816-pnaw6z.webp', 'Giỏ Hoa 006', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771663535816-pnaw6z.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (194, 74, '/uploads/1771678935608-qqqpat.webp', 'Giỏ Hoa 007', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771678935608-qqqpat.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (195, 75, '/uploads/1771679067116-r0604c.webp', 'Giỏ Hoa 008', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771679067116-r0604c.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (196, 76, '/uploads/1771679206502-zf4k66.webp', 'Giỏ Hoa 009', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771679206502-zf4k66.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (197, 77, '/uploads/1771679351181-50dmz0.webp', 'Giỏ Hoa 010', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771679351181-50dmz0.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (198, 78, '/uploads/1771679623300-85fow5.webp', 'Bình Hoa 001', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771679623300-85fow5.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (199, 79, '/uploads/1771681139962-qpgcis.webp', 'Bình Hoa 002', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771681139962-qpgcis.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (200, 80, '/uploads/1771681448094-n8qvzm.webp', 'Bình Hoa 003', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771681448094-n8qvzm.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (201, 81, '/uploads/1771681787037-kyxwfn.webp', 'Giỏ Hoa 011', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771681787037-kyxwfn.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (202, 82, '/uploads/1771682035221-eu0856.webp', 'Giỏ Hoa 012', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771682035221-eu0856.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (203, 83, '/uploads/1771682211703-4o6pj2.webp', 'Giỏ Hoa 013', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771682211703-4o6pj2.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (204, 84, '/uploads/1771759679673-nr3mx2.webp', 'Giỏ Hoa 014', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771759679673-nr3mx2.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (205, 85, '/uploads/1771760460674-hmrycw.webp', 'Bình Hoa 004', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771760460674-hmrycw.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (206, 86, '/uploads/1771760722709-rotv9z.webp', 'Giỏ Hoa 015', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771760722709-rotv9z.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (207, 87, '/uploads/1771760947310-fsz0lg.webp', 'Giỏ Hoa 016', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771760947310-fsz0lg.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (208, 88, '/uploads/1771761259834-mqrmi7.webp', 'Giỏ Hoa 016', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771761259834-mqrmi7.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (209, 89, '/uploads/1771761485734-g5zd65.webp', 'Giỏ Hoa 017', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771761485734-g5zd65.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (210, 90, '/uploads/1771761727211-4pe7bb.webp', 'Giỏ Hoa 017', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771761727211-4pe7bb.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (211, 91, '/uploads/1771761984170-6jtuec.webp', 'Giỏ Hoa 020', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771761984170-6jtuec.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (212, 92, '/uploads/1771762146009-n3ca8c.webp', 'Giỏ Hoa 021', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771762146009-n3ca8c.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (213, 93, '/uploads/1771762298204-rza7f9.webp', 'Giỏ Hoa 023', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771762298204-rza7f9.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (214, 94, '/uploads/1771762440378-wegm3r.webp', 'Giỏ Hoa 023', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771762440378-wegm3r.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (215, 95, '/uploads/1771762945579-l659p7.webp', 'Giỏ Hoa 024', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771762945579-l659p7.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (216, 96, '/uploads/1771763626525-hru2gf.webp', 'Giỏ Hoa 025', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771763626525-hru2gf.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (217, 97, '/uploads/1771763754588-aegnca.webp', 'Giỏ Hoa 026', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771763754588-aegnca.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (218, 98, '/uploads/1771763939472-yq52ve.webp', 'Giỏ Hoa 027', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771763939472-yq52ve.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (219, 99, '/uploads/1771764055916-sjn8aj.webp', 'Giỏ Hoa 027', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771764055916-sjn8aj.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (220, 100, '/uploads/1771764395115-grxaj6.webp', 'Giỏ Hoa 028', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771764395115-grxaj6.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (221, 101, '/uploads/1771935109376-apd377.webp', 'Bó Hoa 001', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771935109376-apd377.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (222, 102, '/uploads/1771935802537-bmz8tq.webp', 'Bó Hoa 002', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771935802537-bmz8tq.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (223, 103, '/uploads/1771936098206-5i3xh3.webp', 'Bó Hoa 003', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771936098206-5i3xh3.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (224, 104, '/uploads/1771936238105-l5p8mk.webp', 'Bó Hoa 004', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771936238105-l5p8mk.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (225, 105, '/uploads/1771936484003-5m0xes.webp', 'Bó Hoa 005', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771936484003-5m0xes.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (226, 106, '/uploads/1771936607765-h9whiz.webp', 'Bó Hoa 006', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771936607765-h9whiz.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (227, 107, '/uploads/1771936742153-728z4k.webp', 'Bó Hoa 007', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771936742153-728z4k.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (228, 108, '/uploads/1771937600570-k8gdl2.webp', 'Bó Hoa 008', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771937600570-k8gdl2.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (229, 109, '/uploads/1771937780343-1uuuxo.webp', 'Bó Hoa 008', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771937780343-1uuuxo.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (230, 110, '/uploads/1771938115654-nyhdd1.webp', 'Bó Hoa 010', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771938115654-nyhdd1.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (231, 111, '/uploads/1771938345883-0t01sf.webp', 'Bó Hoa 011', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771938345883-0t01sf.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (251, 112, '/uploads/1771938856637-nganqq.webp', 'Bó Hoa 012', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771938856637-nganqq.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (252, 113, '/uploads/1771939301033-er8kol.webp', 'Bó Hoa 013', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771939301033-er8kol.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (234, 114, '/uploads/1771939423236-gzx84x.webp', 'Bó Hoa 014', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771939423236-gzx84x.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (253, 115, '/uploads/1771939540015-f1hj6s.webp', 'Bó Hoa 015', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771939540015-f1hj6s.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (250, 116, '/uploads/1771939713612-tgkf6y.webp', 'Bó Hoa 016', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771939713612-tgkf6y.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (249, 117, '/uploads/1771939899518-la6d39.webp', 'Bó Hoa 017', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771939899518-la6d39.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (244, 118, '/uploads/1771940053690-f682s7.webp', 'Bó Hoa 018', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771940053690-f682s7.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (248, 119, '/uploads/1771940296492-96rfrc.webp', 'Bó Hoa 019', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771940296492-96rfrc.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (245, 121, '/uploads/1771940810211-viynwi.webp', 'Bó Hoa 020', 0) ON DUPLICATE KEY UPDATE url='/uploads/1771940810211-viynwi.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (232, 122, '/uploads/1772196958625-1en6wu.webp', 'Bó Hoa 021', 0) ON DUPLICATE KEY UPDATE url='/uploads/1772196958625-1en6wu.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (246, 123, '/uploads/1772197233603-ofmsfo.webp', 'Bó Hoa 022', 0) ON DUPLICATE KEY UPDATE url='/uploads/1772197233603-ofmsfo.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (247, 124, '/uploads/1772197548592-mydc0w.webp', 'Bó Hoa 023', 0) ON DUPLICATE KEY UPDATE url='/uploads/1772197548592-mydc0w.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (243, 125, '/uploads/1772197849435-iuqjz9.webp', 'Bó Hoa 024', 0) ON DUPLICATE KEY UPDATE url='/uploads/1772197849435-iuqjz9.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (241, 126, '/uploads/1772198101729-un6vjo.webp', 'Bó Hoa 025', 0) ON DUPLICATE KEY UPDATE url='/uploads/1772198101729-un6vjo.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (242, 127, '/uploads/1772198350125-e6w1nh.webp', 'Bó Hoa 026', 0) ON DUPLICATE KEY UPDATE url='/uploads/1772198350125-e6w1nh.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (233, 128, '/uploads/1772198479885-a5unod.webp', 'Bó Hoa 027', 0) ON DUPLICATE KEY UPDATE url='/uploads/1772198479885-a5unod.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (240, 129, '/uploads/1772198592547-n1k1ph.webp', 'Bó Hoa 028', 0) ON DUPLICATE KEY UPDATE url='/uploads/1772198592547-n1k1ph.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (239, 130, '/uploads/1772198877828-5nenvq.webp', 'Bó Hoa 029', 0) ON DUPLICATE KEY UPDATE url='/uploads/1772198877828-5nenvq.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (238, 131, '/uploads/1772198986490-ym4ctr.webp', 'Bó Hoa 030', 0) ON DUPLICATE KEY UPDATE url='/uploads/1772198986490-ym4ctr.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (237, 132, '/uploads/1772199142408-ao2j9h.webp', 'Bó Hoa 031', 0) ON DUPLICATE KEY UPDATE url='/uploads/1772199142408-ao2j9h.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (236, 133, '/uploads/1772199281821-umzx9a.webp', 'Bó Hoa 032', 0) ON DUPLICATE KEY UPDATE url='/uploads/1772199281821-umzx9a.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (235, 134, '/uploads/1772199439309-y5c9aw.webp', 'Bó Hoa 033', 0) ON DUPLICATE KEY UPDATE url='/uploads/1772199439309-y5c9aw.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (254, 135, '/uploads/1773711763965-kj1c98.webp', 'Giỏ Hoa Quả 001', 0) ON DUPLICATE KEY UPDATE url='/uploads/1773711763965-kj1c98.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (255, 136, '/uploads/1773712256594-763wpz.webp', 'Giỏ Hoa Quả 002', 0) ON DUPLICATE KEY UPDATE url='/uploads/1773712256594-763wpz.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (263, 137, '/uploads/1773712428755-b1x86h.webp', 'Giỏ Hoa Quả 003', 0) ON DUPLICATE KEY UPDATE url='/uploads/1773712428755-b1x86h.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (288, 138, '/uploads/1773712478682-w9f5m3.webp', 'Giỏ Hoa Quả 004', 0) ON DUPLICATE KEY UPDATE url='/uploads/1773712478682-w9f5m3.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (284, 139, '/uploads/1773713324038-1hqlni.webp', 'Giỏ Hoa Quả 005', 0) ON DUPLICATE KEY UPDATE url='/uploads/1773713324038-1hqlni.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (283, 140, '/uploads/1773713480342-zby62z.webp', 'Giỏ Hoa Quả 006', 0) ON DUPLICATE KEY UPDATE url='/uploads/1773713480342-zby62z.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (261, 141, '/uploads/1773713573909-d4r69d.webp', 'Giỏ Hoa Quả 007', 0) ON DUPLICATE KEY UPDATE url='/uploads/1773713573909-d4r69d.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (262, 142, '/uploads/1773713703000-vjteo7.webp', 'Giỏ Hoa Quả 008', 0) ON DUPLICATE KEY UPDATE url='/uploads/1773713703000-vjteo7.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (264, 143, '/uploads/1773732379454-o7u6jp.webp', 'Giỏ Hoa Quả 009', 0) ON DUPLICATE KEY UPDATE url='/uploads/1773732379454-o7u6jp.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (266, 144, '/uploads/1773732432388-7d9h9w.webp', 'Giỏ Hoa Quả 009', 0) ON DUPLICATE KEY UPDATE url='/uploads/1773732432388-7d9h9w.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (267, 145, '/uploads/1773887381585-qy45ou.webp', 'Giỏ Hoa Quả 011', 0) ON DUPLICATE KEY UPDATE url='/uploads/1773887381585-qy45ou.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (268, 146, '/uploads/1773887597342-zyksbp.webp', 'Giỏ Hoa Quả 012', 0) ON DUPLICATE KEY UPDATE url='/uploads/1773887597342-zyksbp.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (269, 147, '/uploads/1773887649429-ijxuu6.webp', 'Giỏ Hoa Quả 013', 0) ON DUPLICATE KEY UPDATE url='/uploads/1773887649429-ijxuu6.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (270, 148, '/uploads/1773887710740-ylx06y.webp', 'Giỏ Hoa Quả 014', 0) ON DUPLICATE KEY UPDATE url='/uploads/1773887710740-ylx06y.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (271, 149, '/uploads/1773887843372-2e2adv.webp', 'Giỏ Hoa Quả 015', 0) ON DUPLICATE KEY UPDATE url='/uploads/1773887843372-2e2adv.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (272, 150, '/uploads/1773888174067-lj8n5s.webp', 'Giỏ Hoa Quả 016', 0) ON DUPLICATE KEY UPDATE url='/uploads/1773888174067-lj8n5s.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (273, 151, '/uploads/1773888388766-7zokp0.webp', 'Giỏ Hoa Quả 017', 0) ON DUPLICATE KEY UPDATE url='/uploads/1773888388766-7zokp0.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (274, 152, '/uploads/1773888470920-7nhxn6.webp', 'Giỏ Hoa Quả 018', 0) ON DUPLICATE KEY UPDATE url='/uploads/1773888470920-7nhxn6.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (275, 153, '/uploads/1773888850646-31h1mv.webp', 'Giỏ Hoa Quả 019', 0) ON DUPLICATE KEY UPDATE url='/uploads/1773888850646-31h1mv.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (276, 154, '/uploads/1773889167790-k3amo9.webp', 'Giỏ Hoa Quả 020', 0) ON DUPLICATE KEY UPDATE url='/uploads/1773889167790-k3amo9.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (277, 155, '/uploads/1773889259902-n3zlvd.webp', 'Giỏ Hoa Quả 021', 0) ON DUPLICATE KEY UPDATE url='/uploads/1773889259902-n3zlvd.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (278, 156, '/uploads/1773889339356-a1czuk.webp', 'Giỏ Hoa Quả 022', 0) ON DUPLICATE KEY UPDATE url='/uploads/1773889339356-a1czuk.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (279, 157, '/uploads/1773889370204-0byvrh.webp', 'Giỏ Hoa Quả 023', 0) ON DUPLICATE KEY UPDATE url='/uploads/1773889370204-0byvrh.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (280, 158, '/uploads/1773889429797-wy9xdo.webp', 'Giỏ Hoa Quả 024', 0) ON DUPLICATE KEY UPDATE url='/uploads/1773889429797-wy9xdo.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (282, 159, '/uploads/1773889527899-mioo3y.webp', 'Giỏ Hoa Quả 025', 0) ON DUPLICATE KEY UPDATE url='/uploads/1773889527899-mioo3y.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (285, 160, '/uploads/1773890671919-cfq9mw.webp', 'Giỏ Hoa Quả 026', 0) ON DUPLICATE KEY UPDATE url='/uploads/1773890671919-cfq9mw.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (286, 161, '/uploads/1773890812339-abphe0.webp', 'Giỏ Hoa Quả 027', 0) ON DUPLICATE KEY UPDATE url='/uploads/1773890812339-abphe0.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (287, 161, '/uploads/1773890855955-lrvwnc.webp', 'Giỏ Hoa Quả 027', 1) ON DUPLICATE KEY UPDATE url='/uploads/1773890855955-lrvwnc.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (293, 162, '/uploads/1773891318344-1v0ry4.webp', 'Giỏ Hoa Quả 028', 0) ON DUPLICATE KEY UPDATE url='/uploads/1773891318344-1v0ry4.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (290, 163, '/uploads/1773891356556-y4008u.webp', 'Giỏ Hoa Quả 028', 0) ON DUPLICATE KEY UPDATE url='/uploads/1773891356556-y4008u.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (291, 164, '/uploads/1773891392414-5vkbe6.webp', 'Giỏ Hoa Quả 029', 0) ON DUPLICATE KEY UPDATE url='/uploads/1773891392414-5vkbe6.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (292, 165, '/uploads/1773891482258-qqoahr.webp', 'Giỏ Hoa Quả 030', 0) ON DUPLICATE KEY UPDATE url='/uploads/1773891482258-qqoahr.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (294, 166, '/uploads/1773892897389-htoqi4.webp', 'Bó Hoa 034', 0) ON DUPLICATE KEY UPDATE url='/uploads/1773892897389-htoqi4.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (295, 167, '/uploads/1773893274864-phpu5k.webp', 'Bó Hoa 035', 0) ON DUPLICATE KEY UPDATE url='/uploads/1773893274864-phpu5k.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (296, 168, '/uploads/1773894269489-08xmka.webp', 'Bó Hoa 036', 0) ON DUPLICATE KEY UPDATE url='/uploads/1773894269489-08xmka.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (297, 169, '/uploads/1773894683294-ufc6uc.webp', 'Bó Hoa 037', 0) ON DUPLICATE KEY UPDATE url='/uploads/1773894683294-ufc6uc.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (298, 170, '/uploads/1773894898576-sfdud1.webp', 'Bó Hoa 038', 0) ON DUPLICATE KEY UPDATE url='/uploads/1773894898576-sfdud1.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (299, 171, '/uploads/1773895062371-yjqjda.webp', 'Bó Hoa 039', 0) ON DUPLICATE KEY UPDATE url='/uploads/1773895062371-yjqjda.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (300, 172, '/uploads/1773909703133-yltqy5.webp', 'Bó Hoa 040', 0) ON DUPLICATE KEY UPDATE url='/uploads/1773909703133-yltqy5.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (301, 173, '/uploads/1773910084886-ft8ogr.webp', 'Bó Hoa 041', 0) ON DUPLICATE KEY UPDATE url='/uploads/1773910084886-ft8ogr.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (302, 174, '/uploads/1773910319973-ku7hcc.webp', 'Bó Hoa 042', 0) ON DUPLICATE KEY UPDATE url='/uploads/1773910319973-ku7hcc.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (303, 175, '/uploads/1773911186016-qcatqz.webp', 'Bó Hoa 043', 0) ON DUPLICATE KEY UPDATE url='/uploads/1773911186016-qcatqz.webp';
INSERT INTO product_images (id, product_id, url, alt_text, sort_order) VALUES (304, 176, '/uploads/1773911419101-guugr1.webp', 'Bó Hoa 044', 0) ON DUPLICATE KEY UPDATE url='/uploads/1773911419101-guugr1.webp';

SET foreign_key_checks = 1;