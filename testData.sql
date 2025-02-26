-- run server �e
--CREATE DATABASE hotel;

-- run server ��-
USE hotel;

-- �ק�ӫ~�Ӥ��e�q
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
(1, '�i�T', '�k', '1990-01-01', '0912345678', '�x�_���H�q��1��', GETDATE(), NULL, '�x�W', '����', 1, 'LINE123456'),
(2, '���|', '�k', '1992-02-15', '0923456789', '�x�_���j�w��2��', GETDATE(), NULL, '�x�W', '����', 0, 'LINE234567'),
(3, '����', '�k', '1988-03-20', '0934567890', '�s�_���O����3��', GETDATE(), NULL, '�x�W', '����', 1, 'LINE345678'),
(4, '����', '�k', '1995-04-25', '0945678901', '���������s��4��', GETDATE(), NULL, '�x�W', '����', 0, 'LINE456789'),
(5, '�B�C', '�k', '1985-05-30', '0956789012', '�x�n���F��5��', GETDATE(), NULL, '�x�W', '����', 1, 'LINE567890'),
(6, '���K', '�k', '1993-06-10', '0967890123', '�x�_��������6��', GETDATE(), NULL, '�x�W', '����', 0, 'LINE678901'),
(7, '�P�E', '�k', '1980-07-05', '0978901234', '�s�_���T�l��7��', GETDATE(), NULL, '�x�W', '����', 1, 'LINE789012'),
(8, '�d�Q', '�k', '1991-08-15', '0989012345', '�򶩥����R��8��', GETDATE(), NULL, '�x�W', '����', 0, 'LINE890123'),
(9, '�G�Q�@', '�k', '1994-09-25', '0990123456', '��饫����9��', GETDATE(), NULL, '�x�W', '����', 1, 'LINE901234'),
(10, '�¤Q�G', '�k', '1989-10-30', '0911234567', '�s�˥��F��10��', GETDATE(), NULL, '�x�W', '����', 0, 'LINE012345');

-- �Ы�
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
('��X�M��','�@�i���H��(150cmX200cm)',92,'���ä����t�D��','�W�ߪ��F�o�ϩM�p�H���x�f�t���a���A����������@���L��',1,2,2,3,2000.0,2000,2000.0,40),
('�i���M��','�@�i���H��(170cmX200cm)',157,'���ä����t�D��','�ȩФ���ηŷx��t���C�A���ɽ�P�Ϊ^��P�C�����i���P���Ū��l�i�ۤ����M�A���P�z�����C�@�B�ӭM�C',1,2,2,4,3000.0,3000,3000.0,30),
('�ѻڮM��','��i���H��(150cmX200cm)',230,'���دD�Ǥ������ۤj�z�ۯD��','�D���j�U�P�e�����u�@�ϡA�W�ߨp�H���x�N�������ѻڽu�ɦ������C',1,4,2,6,6000.0,3000,3000.0,20);



INSERT INTO [hotel].[dbo].[employee] 
    ([full_name], [profile_picture], [address], [date_of_birth], [email], [gender], 
     [join_date], [password], [phone_number], [role], [status], [updated_at])
VALUES 
    
    ('���j��', '', '�x�_�������ϩ����F���@�q1��', '1985-07-12', 'staff1@4newlife.com', '�k', '2023-01-10', '123', '0912-345-678', 'STAFF', 'ACTIVE', '2023-05-20'),
    ('������', '', '����������ϸθ۸�200��', '1995-11-30', 'reservationist1@4newlife.com', '�k', '2023-07-01', '123', '0956-789-012', 'RESERVATIONIST', 'ACTIVE', '2023-08-25'),
    ('�B�ө�', '', '�s�_���O���Ϥ�Ƹ��G�q5��', '1992-02-14', 'merchandiser1@4newlife.com', '�k', '2022-06-25', '123', '0967-890-123', 'MERCHANDISER', 'ACTIVE', '2023-09-05'),
    ('�d�v��', '', '�y�������s�����q77��', '1993-12-25', 'manager1@4newlife.com', '�k', '2021-12-30', '123', '0922-234-567', 'MANAGER', 'ACTIVE', '2024-02-05'),

    ('�i����', '', '�x������ٰϥx�W�j�D�T�q100��', '1988-04-18', 'staff2@4newlife.com', '�k', '2023-03-20', '123', '0934-567-890', 'STAFF', 'RESIGNATION', '2023-07-10'),
    ('�G����', '', '�x�n���F�ϪF���88��', '1994-08-07', 'reservationist2@4newlife.com', '�k', '2023-09-15', '123', '0989-012-345', 'RESERVATIONIST', 'LEAVE', '2023-11-20'),
    ('���h��', '', '�򶩥����R�ϷR�T��66��', '1989-03-03', 'merchandiser2@4newlife.com', '�k', '2022-04-10', '123', '0990-123-456', 'MERCHANDISER', 'ACTIVE', '2023-12-01'),
    ('���ا�', '', '�s�˥��F�ϥ��_���G�q150��', '1990-10-10', 'manager2@4newlife.com', '�k', '2023-07-14', '123', '0943-345-678', 'MANAGER', 'ACTIVE', '2025-01-20'),

    ('���ا�', '', '��饫���c�Ϥ��s��50��', '1987-05-22', 'staff3@4newlife.com', '�k', '2021-10-10', '123', '0978-901-234', 'STAFF', 'ACTIVE', '2023-10-12'),
    ('���p��', '', '�x�_���H�q�ϫH�q�����q20��', '1990-09-23', 'reservationist3@4newlife.com', '�k', '2022-12-15', '123', '0923-456-789', 'RESERVATIONIST', 'ACTIVE', '2023-06-15'),
    ('�P�ߩ�', '', '�s�˥��_�ϭ��~��12��', '1991-06-19', 'merchandiser3@4newlife.com', '�k', '2023-05-05', '123', '0911-123-456', 'MERCHANDISER', 'ACTIVE', '2024-01-10'),
    ('�L���P', '', '�x�n���ñd�Ϥ�����99��', '1983-04-21', 'manager3@4newlife.com', '�k', '2020-11-05', '123', '0944-456-789', 'MANAGER', 'ACTIVE', '2024-04-10');

INSERT INTO product_category (category_name) VALUES ('�N�᭹�~');
INSERT INTO product_category (category_name) VALUES ('�����N�᭹�~');

-- ���]�N�᭹�~���O�� ID �� 1�A�����N�᭹�~���O�� ID �� 2
INSERT INTO product (product_name, sku, brand_name, product_unit_price, discount, product_description, created_date, last_updated_date, capacity, stock_quantity, seller_name, seller_phone, seller_email, seller_address, product_category_id) VALUES
('������', 'SKU011', '���׫~�P', 65.00, 5.00, '���������״��ѡA�A�X�H�N���Ѯ�', GETDATE(), GETDATE(), 1, 100, '��aK', '0912345679', 'sellerK@example.com', '�x�_��K��1��', 1),
('�����', 'SKU012', '�����~�P', 120.00, 15.00, '�ǲΪ������A�t�h�جõ}����', GETDATE(), GETDATE(), 1, 50, '��aL', '0922345680', 'sellerL@example.com', '�x�_��L��2��', 1),
('����', 'SKU013', '�����~�P', 45.00, 0.00, '�@�������״��A�i���S����', GETDATE(), GETDATE(), 1, 80, '��aM', '0932345681', 'sellerM@example.com', '�x�_��M��3��', 1),
('��l', 'SKU014', '��l�~�P', 50.00, 0.00, '��u�s�@��������l�A�ֳt�K�Q', GETDATE(), GETDATE(), 1, 150, '��aN', '0942345682', 'sellerN@example.com', '�x�_��N��4��', 1),
('ī�G��', 'SKU015', '���~�~�P', 30.00, 2.00, '�s�Aī�G�s�@���������A�������̳]�p', GETDATE(), GETDATE(), 1, 100, '��aO', '0952345683', 'sellerO@example.com', '�x�_��O��5��', 2);

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
