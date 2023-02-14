--CREATE DATABASE ONLINE_SHOP_MANAGEMENT
--USE ONLINE_SHOP_MANAGEMENT
--DROP DATABASE ONLINE_SHOP_MANAGEMENT

create table Users
(
	UName nvarchar(255) primary key,
	UPassword nvarchar(255),
	Decentralization decimal
)

create table Customer
(
	Customer_ID nvarchar(255) primary key,
	CName nvarchar(255),
	Gender nvarchar(255),
	Phone varchar(12),
	Birthday date,
	Email nvarchar(255),	
	CAddress nvarchar(255),
	accountNumber decimal	
)

create table Seller
(
	Seller_ID nvarchar(255) primary key,
	SName nvarchar(255),
	Gender nvarchar(255),
	Phone varchar(12),
	Birthday date,
	Email nvarchar(255),	
	SAddress nvarchar(255),
	accountNumber decimal	
)

create table Manager
(
	Manager_ID nvarchar(255) primary key,
	MName nvarchar(255),
	Gender nvarchar(255),
	Phone varchar(12),
	Birthday date,
	Email nvarchar(255),	
	SAddress nvarchar(255),
	accountNumber decimal
)

create table Product
(
	Product_ID nvarchar(255) primary key,
	PName nvarchar(255),
	Category_ID nvarchar(255),
	Category nvarchar(255),
	Brand_ID nvarchar(255),
	Brand nvarchar(255),
	Price decimal,
	importDate date,
)

create table Invoice
(
	Invoice_ID nvarchar(255) primary key,
	purchaseDate date,
	totalPrice decimal,
	paidMethod nvarchar(255),
	IName nvarchar(255),
	IPhone nvarchar(12),
	IAddress nvarchar(255),
)

create table Coupon
(
	Coupon_ID nvarchar(255) primary key,
	expDate date,
	couponCode nvarchar(255)
)


insert into Users values('admin','123',0)
insert into Users values('mana1','123',1)
insert into Users values('sell1','123',2)
insert into Users values('sell2','123',2)
insert into Users values('sell3','123',2)
insert into Users values('cus1','123',3)
insert into Users values('cus2','123',3)
insert into Users values('cus3','123',3)
insert into Users values('cus4','123',3)

insert into Customer values('cus001', 'Hutao', 'Female', '0912345678', '08/22/2001', 'abc123@gmail.com', 'HCM', 123456789012)
insert into Customer values('cus002', 'Chon Xina', 'Male', '0943565483', '06/23/1980', 'xina236@gmail.com', 'Ha Noi', 065478329017)
insert into Customer values('cus003', 'Luu Tri', 'Male', '0942565692', '10/22/2001', 'noriu22102001@gmail.com', 'Phan Thiet', 060250331031)
insert into Customer values('cus004', 'Tokisaki Kurumi', 'Female', '09345762687', '04/13/1999', 'krm456@gmail.com', 'HCM', 094657382946)

insert into Seller values('sell001', 'Do Gia Bao', 'Male', '0945869386', '12/06/2001', 'dgb123@gmail.com', 'HCM', 098679098567)
insert into Seller values('sell002', 'Giga Chad', 'Male', '0947583956', '05/16/1996', 'chad234@gmail.com', 'HCM', 093748596712)
insert into Seller values('sell003', 'Babara', 'Female', '0967584930', '11/09/2000', 'bigboba988@gmail.com', 'HCM', 098767679021)

insert into Manager values('mana001', 'Tom Allan', 'Male', '09623456779', '09/09/1970', 'daboz999@gmail.com', 'HCM', 096368594832)

insert into Product values('pro001', 'Black n white t-shirt', 'cat001', 'Tops', 'brand001', 'Nike', 110000, '01/01/2022')
insert into Product values('pro002', 'Blank tank tops', 'cat001', 'Tops', 'brand001', 'Nike', 80000, '01/01/2022')
insert into Product values('pro003', 'Red t-shirt', 'cat001', 'Tops', 'brand002', 'Adidas', 135000, '01/01/2022')
insert into Product values('pro004', 'Drak shorts', 'cat002', 'Bottoms', 'brand002', 'Adidas', 95000, '01/01/2022')
insert into Product values('pro005', 'Navy jeans', 'cat002', 'Bottoms', 'brand003', 'Gucci', 200000, '01/01/2022')
insert into Product values('pro006', 'Gray jogger', 'cat002', 'Bottoms', 'brand001', 'Nike', 120000, '01/01/2022')
insert into Product values('pro007', 'White hoodie', 'cat003', 'Outwear', 'brand002', 'Adidas', 155000, '01/01/2022')
insert into Product values('pro008', 'Green sweater', 'cat003', 'Outwear', 'brand003', 'Gucci', 450000, '01/01/2022')
insert into Product values('pro009', 'Brown jacket', 'cat003', 'Outwear', 'brand004', 'Dolce', 650000, '01/01/2022')
insert into Product values('pro010', 'White underwear', 'cat004', 'Innerwear', 'brand006', 'Boxing', 50000, '01/01/2022')
insert into Product values('pro011', 'Black underwear', 'cat004', 'Innerwear', 'brand005', 'Calvin Klein', 45000, '01/01/2022')
insert into Product values('pro012', 'Rainbow underwear', 'cat004', 'Innerwear', 'brand005', 'Calvin Klein', 65000, '01/01/2022')
insert into Product values('pro013', 'Jordan 1', 'cat005', 'Shoe', 'brand001', 'Nike', 1200000, '01/01/2022')
insert into Product values('pro014', 'Ultra bounce', 'cat005', 'Shoe', 'brand002', 'Adidas', 2500000, '01/01/2022')
insert into Product values('pro015', 'Kyrie 6', 'cat005', 'Shoe', 'brand001', 'Nike', 2000000, '01/01/2022')

insert into Invoice values('inv001', '01/05/2022', 3500000, 'COD', 'Tokisaki Kurumi', '09345762687', 'q7-HCM')
insert into Invoice values('inv002', '01/06/2022', 5000000, 'banking', 'Chon Xina', '0943565483', 'Thanh Xuan-Ha Noi')
insert into Invoice values('inv003', '01/09/2022', 250000, 'COD', 'Hutao', '0912345678', 'q1-HCM')

insert into Coupon values('cou001', '12/31/2022', 'ZXCVB-678')
insert into Coupon values('cou002', '12/31/2022', 'FJTHN-986')
insert into Coupon values('cou003', '12/31/2022', 'VNPFQ-386')
insert into Coupon values('cou004', '08/31/2022', 'MKOPL-121')
insert into Coupon values('cou005', '08/31/2022', 'GHTUI-901')