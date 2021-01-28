CREATE DATABASE LaptopProvider
GO

DROP DATABASE LaptopProvider
GO

USE LaptopProvider
GO

CREATE TABLE ProviderInfo(
ProviderID int,
ProviderName varchar(10),
Address varchar(10),
Telephone bigint
)
GO

INSERT INTO ProviderInfo (ProviderID, ProviderName, Address, Telephone) VALUES (123, 'ASUS', 'USA', 987654789);
INSERT INTO ProviderInfo (ProviderID, ProviderName, Address, Telephone) VALUES (124, 'DELL', 'GERMANY', 123456789);
INSERT INTO ProviderInfo (ProviderID, ProviderName, Address, Telephone) VALUES (125, 'ACER', 'ITALY', 456789123);
GO

DROP TABLE ProviderInfo
GO

SELECT * FROM ProviderInfo
GO

CREATE TABLE ProductInfo(
STT int,
ProductID varchar(10),
Description nvarchar(50),
Unit nvarchar(10),
Price money,
Qty int
)
GO

INSERT INTO ProductInfo(STT, ProductID, Description, Unit, Price, Qty) VALUES (1, 'T450', N'MÁY NHẬP CŨ', N'CHIẾC', 1000, 10);
INSERT INTO ProductInfo(STT, ProductID, Description, Unit, Price, Qty) VALUES (2, 'NOKIA5670', N'ĐIỆN THOẠI ĐANG HOT', N'CHIẾC', 200, 200);
INSERT INTO ProductInfo(STT, ProductID, Description, Unit, Price, Qty) VALUES (3, 'SAMSUNG450', N'MÁY IN ĐANG LOẠI BÌNH', N'CHIẾC', 100, 10);
GO

SELECT * FROM ProductInfo
GO

CREATE TABLE OrderInfo(
OrderID int UNIQUE,
ProviderName varchar(10),
Qty int,
Price money,
CustomerName varchar(50)
)
GO

INSERT INTO OrderInfo (OrderID, ProviderName, Qty, Price, CustomerName) VALUES (11, 'ASUS', 4, 100, 'NGUYEN HUY THUAT');
INSERT INTO OrderInfo (OrderID, ProviderName, Qty, Price, CustomerName) VALUES (22, 'DELL', 6, 300, 'NGO THI THAO');
INSERT INTO OrderInfo (OrderID, ProviderName, Qty, Price, CustomerName) VALUES (33, 'ACER', 8, 200, 'MYLA NGUYEN');
GO

SELECT * FROM OrderInfo
GO

DROP TABLE OrderInfo
GO