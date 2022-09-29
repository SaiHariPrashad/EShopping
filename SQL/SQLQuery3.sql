CREATE DATABASE EShopping
GO
USE EShopping
GO

CREATE TABLE Tbl_Category(
CategoryId INT IDENTITY PRIMARY KEY,
CategoryName VARCHAR(500) UNIQUE,
IsActive BIT NULL,
IsDelete BIT NULL
)

CREATE TABLE Tbl_Product(
ProductId INT IDENTITY PRIMARY KEY,
ProductName VARCHAR(500) UNIQUE,
CategoryId INT,
IsActive BIT NULL,
IsDelete BIT NULL,
CreatedDate DATETIME NULL,
ModifiedDate DATETIME NULL,
Description DATETIME NULL,
ProductImage VARCHAR(MAX),
IsFeatured BIT NULL,
Quantity INT,
FOREIGN KEY (CategoryId) references Tbl_Category(CategoryId)
)

CREATE TABLE Tbl_CartStatus(
CartStatusId INT IDENTITY PRIMARY KEY,
CartStatus VARCHAR(500),
)

CREATE TABLE Tbl_Members(
MemberId INT IDENTITY PRIMARY KEY,
FirstName VARCHAR(200),
LastName VARCHAR(200) UNIQUE,
EmailId VARCHAR(500) UNIQUE,
Password VARCHAR(500),
IsActive BIT NULL,
IsDelete BIT NULL,
CreatedOn DATETIME,
ModifiedOn DATETIME
)

CREATE TABLE Tbl_ShippingDetails(
ShippingDetailId INT IDENTITY PRIMARY KEY,
MemberId INT,
Address VARCHAR(500),
City VARCHAR(500),
State VARCHAR(500),
Country VARCHAR(50),
ZipCode VARCHAR(50),
OrderId INT,
AmountPaind DECIMAL,
PaymentType VARCHAR(50),
FOREIGN KEY(MemberId) REFERENCES Tbl_Members(MemberId)
)

CREATE TABLE Tbl_Roles(
RoleId INT IDENTITY PRIMARY KEY,
RoleName VARCHAR(200) UNIQUE
)

CREATE TABLE Tbl_Cart(
CartId INT IDENTITY PRIMARY KEY,
ProductId INT,
MemberId INT,
CartStatusId INT,
FOREIGN KEY (ProductId) REFERENCES Tbl_Product(ProductId)
)

CREATE TABLE Tbl_MemberRole(
MemberRoleID INT IDENTITY PRIMARY KEY,
MemberId INT,
RoleId INT
)

CREATE TABLE Tbl_SlideImage(
SlideId INT IDENTITY PRIMARY KEY,
SlideTitle VARCHAR(500),
SlideImage VARCHAR(MAX)
)





