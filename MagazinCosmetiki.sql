CREATE DATABASE MagazinCosmetiki;

USE MagazinCosmetiki;

CREATE TABLE Categories (
    CategoriiID INT PRIMARY KEY IDENTITY(1,1),
    CategoriiName NVARCHAR(50) NOT NULL
);

CREATE TABLE Country (
    CountryID INT PRIMARY KEY IDENTITY(1,1),
    CountryName NVARCHAR(50) NOT NULL
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY IDENTITY(1,1),
    ProductName NVARCHAR(50) NOT NULL,
    CategoriiID INT NOT NULL,
    CountryID INT NOT NULL,
    Price DECIMAL(10, 2),
    CONSTRAINT FK_Category_Product FOREIGN KEY (CategoriiID) REFERENCES Categories(CategoriiID),
    CONSTRAINT FK_Country_Product FOREIGN KEY (CountryID) REFERENCES Country(CountryID)
);

INSERT INTO Categories (CategoriiName)
VALUES
('Глаза'),
('Губы'),
('Брови'),
('Ногти'),
('Кисти и спонжи для лица');

INSERT INTO Country (CountryName)
VALUES
('France'),
('USA'),
('Italy');

INSERT INTO Products (ProductName, CategoriiID, CountryID, Price)
VALUES
('VIVIENNE SABO cabaret premiere', 1, 1, 498.00),
('TALIKA smile code', 2, 2, 2925.00),
('TALIKA eyebrow lipocils ink', 3, 2, 950.00),
('Лак SOPHIN extra sos post-acrulic nail repair', 4, 3, 1100.00),
('SERDAR KAMBAROV s1', 5, 3, 7015.00);
