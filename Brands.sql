create database BrandShop

create table Categoriess(
Id int primary key identity,
Name nvarchar(100) not null
)

create table Brandss(
Id int primary key identity,
Name nvarchar(100) not null,
Categories_Id int foreign key references Categories(Id)
)
create table Markass(
Id int primary key identity,
Name nvarchar(100) not null,
Brands_Id int foreign key references Brands(Id)
)
create table Productss(
Id int primary key identity,
Name nvarchar(100) not null,
Price int not null,
Image nvarchar(100) not null,
[Count] int not null,
Color nvarchar(60) not null,
Markas_Id int foreign key references Markas(Id)
)
select Sum(p.Price) from Productss as p

select p.Price,p.Name,p.Image,p.Color,p.Count,m.Name from Productss as p
join Markass as m
on p.Markas_Id = m.Id
