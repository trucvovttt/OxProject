Create database OxDatabase;
go
Use OxDatabase;
go
Create table Categories
(
	CategoryID int primary key identity(1,1),
	CategoryName nvarchar(100),
	CategoryDescription nvarchar(2000)
);
go
Create table Products
(
	ProductID int primary key identity(1,1),
	ProductName nvarchar(100),
	ProductAuthor nvarchar(100),
	ProductDate date,
	ProductDescription nvarchar(2000),
	ProductStatus bit
);
go
Create table Details
(
	CategoryID int,
	ProductID int,
	primary key (CategoryID, ProductID)
);
go
ALTER TABLE Details ADD CONSTRAINT FK_Details_Categories FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID);
ALTER TABLE Details ADD CONSTRAINT FK_Details_Products FOREIGN KEY (ProductID) REFERENCES Products(ProductID);

Drop database OxDatabase;