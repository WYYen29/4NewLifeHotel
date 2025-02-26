-- run server 前
--CREATE DATABASE hotel;

-- run server 後-
USE hotel;

-- 修改商品照片容量
ALTER TABLE [hotel].[dbo].[product_photo]
ALTER COLUMN [photo] VARBINARY(MAX);

INSERT INTO member (password, email, status, created_at, updated_at, is_verified) VALUES
('123', 'user1@example.com', 'ACTIVE', '2024-01-01 10:00:00', '2024-01-01 10:00:00', 1),
('123', 'user2@example.com', 'INACTIVE', '2024-01-05 12:30:00', '2024-01-10 14:45:00', 0),
('123', 'user3@example.com', 'SUSPENDED', '2024-02-01 08:15:00', '2024-02-02 09:20:00', 1),
('123', 'user4@example.com', 'ACTIVE', '2024-02-10 15:20:00', '2024-02-15 16:25:00', 1),
('123', 'user5@example.com', 'PENDING', '2024-02-15 18:30:00', '2024-02-16 19:35:00', 0),
('123', 'user6@example.com', 'ACTIVE', '2024-03-01 10:00:00', '2024-03-02 11:05:00', 1),
('123', 'user7@example.com', 'INACTIVE', '2024-03-05 12:10:00', '2024-03-06 13:15:00', 0),
('123', 'user8@example.com', 'SUSPENDED', '2024-03-10 14:20:00', '2024-03-11 15:25:00', 1),
('123', 'user9@example.com', 'ACTIVE', '2024-04-01 16:30:00', '2024-04-02 17:35:00', 1),
('123', 'user10@example.com', 'PENDING', '2024-04-05 18:40:00', '2024-04-06 19:45:00', 0);


INSERT INTO [hotel].[dbo].[points] ([current_points], [update_time], [fk_member_points_id])
VALUES 
(100, GETDATE(), 1),
(100, GETDATE(), 2),
(100, GETDATE(), 3),
(100, GETDATE(), 4),
(100, GETDATE(), 5),
(100, GETDATE(), 6),
(100, GETDATE(), 7),
(100, GETDATE(), 8),
(100, GETDATE(), 9),
(100, GETDATE(), 10);

INSERT INTO member_details (member_id, full_name, gender, date_of_birth, phone_number, address, join_date, updated_at, nationality, preferred_language, newsletter_subscription, social_media_account)
VALUES
(1, '張三', '男', '1990-01-01', '0912345678', '台北市信義區1號', GETDATE(), NULL, '台灣', '中文', 1, 'LINE123456'),
(2, '李四', '女', '1992-02-15', '0923456789', '台北市大安區2號', GETDATE(), NULL, '台灣', '中文', 0, 'LINE234567'),
(3, '王五', '男', '1988-03-20', '0934567890', '新北市板橋區3號', GETDATE(), NULL, '台灣', '中文', 1, 'LINE345678'),
(4, '陳六', '女', '1995-04-25', '0945678901', '高雄市鼓山區4號', GETDATE(), NULL, '台灣', '中文', 0, 'LINE456789'),
(5, '劉七', '男', '1985-05-30', '0956789012', '台南市東區5號', GETDATE(), NULL, '台灣', '中文', 1, 'LINE567890'),
(6, '趙八', '女', '1993-06-10', '0967890123', '台北市中正區6號', GETDATE(), NULL, '台灣', '中文', 0, 'LINE678901'),
(7, '周九', '男', '1980-07-05', '0978901234', '新北市三峽區7號', GETDATE(), NULL, '台灣', '中文', 1, 'LINE789012'),
(8, '吳十', '女', '1991-08-15', '0989012345', '基隆市仁愛區8號', GETDATE(), NULL, '台灣', '中文', 0, 'LINE890123'),
(9, '鄭十一', '男', '1994-09-25', '0990123456', '桃園市桃園區9號', GETDATE(), NULL, '台灣', '中文', 1, 'LINE901234'),
(10, '謝十二', '女', '1989-10-30', '0911234567', '新竹市東區10號', GETDATE(), NULL, '台灣', '中文', 0, 'LINE012345');

-- 房型
INSERT INTO room_type (
    room_type_name,
    bed_type,
    area,
    bathroom_type,
    room_type_description,
    is_handicap,
    adult_capacity,
    children_capacity,
    max_capacity,
    unit_price,
    additional_price_per_person,
    over_time_ratio,
    max_count
)
VALUES 
('日出套房','一張雙人床(150cmX200cm)',92,'乾溼分離含浴缸','獨立的沙發區和私人陽台搭配落地窗，絕美的景色一覽無遺',1,2,2,3,2000.0,2000,2000.0,40),
('夕陽套房','一張雙人床(170cmX200cm)',157,'乾溼分離含浴缸','客房內選用溫暖色系裝潢，提升質感及氛圍感。金黃夕陽與湛藍的餘波相互輝映，放鬆您全身每一處細胞。',1,2,2,4,3000.0,3000,3000.0,30),
('天際套房','兩張雙人床(150cmX200cm)',230,'奢華浴室內坐落著大理石浴缸','挑高大廳與寬敞的工作區，獨立私人陽台將城市的天際線盡收眼底。',1,4,2,6,6000.0,3000,3000.0,20);



INSERT INTO [hotel].[dbo].[employee] 
    ([full_name], [profile_picture], [address], [date_of_birth], [email], [gender], 
     [join_date], [password], [phone_number], [role], [status], [updated_at])
VALUES 
    
    ('王大明', '', '台北市中正區忠孝東路一段1號', '1985-07-12', 'staff1@4newlife.com', '男', '2023-01-10', '123', '0912-345-678', 'STAFF', 'ACTIVE', '2023-05-20'),
    ('陳美玲', '', '高雄市左營區裕誠路200號', '1995-11-30', 'reservationist1@4newlife.com', '女', '2023-07-01', '123', '0956-789-012', 'RESERVATIONIST', 'ACTIVE', '2023-08-25'),
    ('劉志明', '', '新北市板橋區文化路二段5號', '1992-02-14', 'merchandiser1@4newlife.com', '男', '2022-06-25', '123', '0967-890-123', 'MERCHANDISER', 'ACTIVE', '2023-09-05'),
    ('吳宗翰', '', '宜蘭市中山路五段77號', '1993-12-25', 'manager1@4newlife.com', '男', '2021-12-30', '123', '0922-234-567', 'MANAGER', 'ACTIVE', '2024-02-05'),

    ('張偉傑', '', '台中市西屯區台灣大道三段100號', '1988-04-18', 'staff2@4newlife.com', '男', '2023-03-20', '123', '0934-567-890', 'STAFF', 'RESIGNATION', '2023-07-10'),
    ('鄭雅雯', '', '台南市東區東寧路88號', '1994-08-07', 'reservationist2@4newlife.com', '女', '2023-09-15', '123', '0989-012-345', 'RESERVATIONIST', 'LEAVE', '2023-11-20'),
    ('趙士傑', '', '基隆市仁愛區愛三路66號', '1989-03-03', 'merchandiser2@4newlife.com', '男', '2022-04-10', '123', '0990-123-456', 'MERCHANDISER', 'ACTIVE', '2023-12-01'),
    ('王建宏', '', '新竹市東區光復路二段150號', '1990-10-10', 'manager2@4newlife.com', '男', '2023-07-14', '123', '0943-345-678', 'MANAGER', 'ACTIVE', '2025-01-20'),

    ('黃建宏', '', '桃園市中壢區中山路50號', '1987-05-22', 'staff3@4newlife.com', '男', '2021-10-10', '123', '0978-901-234', 'STAFF', 'ACTIVE', '2023-10-12'),
    ('李小華', '', '台北市信義區信義路五段20號', '1990-09-23', 'reservationist3@4newlife.com', '女', '2022-12-15', '123', '0923-456-789', 'RESERVATIONIST', 'ACTIVE', '2023-06-15'),
    ('周心怡', '', '新竹市北區食品路12號', '1991-06-19', 'merchandiser3@4newlife.com', '女', '2023-05-05', '123', '0911-123-456', 'MERCHANDISER', 'ACTIVE', '2024-01-10'),
    ('林志鵬', '', '台南市永康區中正路99號', '1983-04-21', 'manager3@4newlife.com', '男', '2020-11-05', '123', '0944-456-789', 'MANAGER', 'ACTIVE', '2024-04-10');

INSERT INTO product_category (category_name) VALUES ('冷凍食品');
INSERT INTO product_category (category_name) VALUES ('素食冷凍食品');

-- 假設冷凍食品類別的 ID 為 1，素食冷凍食品類別的 ID 為 2
INSERT INTO product (product_name, sku, brand_name, product_unit_price, discount, product_description, created_date, last_updated_date, capacity, stock_quantity, seller_name, seller_phone, seller_email, seller_address, product_category_id) VALUES
('牛肉麵', 'SKU011', '牛肉品牌', 65.00, 5.00, '美味的牛肉湯麵，適合寒冷的天氣', GETDATE(), GETDATE(), 1, 100, '賣家K', '0912345679', 'sellerK@example.com', '台北市K區1號', 1),
('佛跳牆', 'SKU012', '佛跳牆品牌', 120.00, 15.00, '傳統的佛跳牆，含多種珍稀食材', GETDATE(), GETDATE(), 1, 50, '賣家L', '0922345680', 'sellerL@example.com', '台北市L區2號', 1),
('雞湯', 'SKU013', '雞湯品牌', 45.00, 0.00, '濃郁的雞肉湯，養身又美味', GETDATE(), GETDATE(), 1, 80, '賣家M', '0932345681', 'sellerM@example.com', '台北市M區3號', 1),
('餃子', 'SKU014', '餃子品牌', 50.00, 0.00, '手工製作的美味餃子，快速便利', GETDATE(), GETDATE(), 1, 150, '賣家N', '0942345682', 'sellerN@example.com', '台北市N區4號', 1),
('蘋果派', 'SKU015', '甜品品牌', 30.00, 2.00, '新鮮蘋果製作的香甜派，為素食者設計', GETDATE(), GETDATE(), 1, 100, '賣家O', '0952345683', 'sellerO@example.com', '台北市O區5號', 2);

INSERT INTO [hotel].[dbo].[product_photo] ([photo], [product_id]) 
VALUES
     (CONVERT(VARBINARY(MAX), (SELECT * FROM OPENROWSET(BULK 'C:\Users\User\Desktop\final\4NewLifeDemo\HH\beefnoodle.jpg', SINGLE_BLOB) AS img)), 1),
    (CONVERT(VARBINARY(MAX), (SELECT * FROM OPENROWSET(BULK 'C:\Users\User\Desktop\final\4NewLifeDemo\HH\soup.jpg', SINGLE_BLOB) AS img)), 2),
    (CONVERT(VARBINARY(MAX), (SELECT * FROM OPENROWSET(BULK 'C:\Users\User\Desktop\final\4NewLifeDemo\HH\soup2.jpg', SINGLE_BLOB) AS img)), 3),
    (CONVERT(VARBINARY(MAX), (SELECT * FROM OPENROWSET(BULK 'C:\Users\User\Desktop\final\4NewLifeDemo\HH\dumpling.jpg', SINGLE_BLOB) AS img)), 4),
    (CONVERT(VARBINARY(MAX), (SELECT * FROM OPENROWSET(BULK 'C:\Users\User\Desktop\final\4NewLifeDemo\HH\applepie.jpg', SINGLE_BLOB) AS img)), 5);

	INSERT INTO [hotel].[dbo].room_order (
    room_order_id, room_offer_id, order_status, resident_count, total_payment, order_time, starting_time, leaving_time, 
    checkin_time, checkout_time, used_points, total_payment_before_using_points, member_id
)
VALUES
('EC1740030216009', 101, 'Confirmed', 2, 4000.0, GETDATE(), '2025-03-01 14:00:00', '2025-03-03 12:00:00', NULL, NULL, 200, 4200.0, 1),
('EC1740030216010', 102, 'Pending', 4, 9000.0, GETDATE(), '2025-03-05 15:00:00', '2025-03-07 11:00:00', NULL, NULL, 500, 9500.0, 1),
('EC1740030216014', 103, 'CheckedIn', 3, 6000.0, GETDATE(), '2025-03-10 14:00:00', '2025-03-12 12:00:00', '2025-03-10 15:00:00', NULL, 300, 6300.0, 1),
('EC1740030216015', 104, 'CheckedOut', 2, 4000.0, GETDATE(), '2025-03-15 14:00:00', '2025-03-17 12:00:00', '2025-03-15 15:30:00', '2025-03-17 11:00:00', 100, 4100.0, 1),
('EC1740030216016', 105, 'Confirmed', 2, 2800.0, GETDATE(), '2025-03-20 14:00:00', '2025-03-22 12:00:00', NULL, NULL, 1000, 3800.0, 1),
('EC1740030216019', 106, 'Confirmed', 6, 12000.0, GETDATE(), '2025-03-25 14:00:00', '2025-03-28 12:00:00', NULL, NULL, 1000, 13000.0, 1),
('EC1740030216031', 107, 'Pending', 2, 4000.0, GETDATE(), '2025-03-30 15:00:00', '2025-04-01 11:00:00', NULL, NULL, 200, 4200.0, 1),
('EC1740030216051', 108, 'CheckedIn', 4, 9000.0, GETDATE(), '2025-04-05 14:00:00', '2025-04-07 12:00:00', '2025-04-05 15:00:00', NULL, 500, 9500.0, 1),
('EC1740030216071', 109, 'CheckedOut', 3, 6000.0, GETDATE(), '2025-04-10 14:00:00', '2025-04-12 12:00:00', '2025-04-10 15:00:00', '2025-04-12 11:00:00', 300, 6300.0, 1),
('EC1740030216091', 110, 'Confirmed', 2, 4500.0, GETDATE(), '2025-04-15 14:00:00', '2025-04-17 12:00:00', NULL, NULL, 0, 4500, 1);
