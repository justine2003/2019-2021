CREATE DATABASE[Examentrimestral-justin]
ON PRIMARY
(
NAME = 'Examentrimestral-justin',
FILENAME = 'C:\DB\Examentrimestral-justin.mdf',
SIZE =6144KB,
MAXSIZE = UNLIMITED, 
FILEGROWTH = 1024KB
)
LOG ON
(
NAME = 'Examentrimestral_justin-log',
FILENAME = 'C:\DB\Examentrimestral-justin_log.ldf',
SIZE = 8192KB,
MAXSIZE = 2048GB,
FILEGROWTH = 10%
)
GO

CREATE TABLE Cliente
(
IDCliente int not null,
NombreCliente nvarchar(20),
Direccion nvarchar(20),
PorDesCLiente nvarchar(20),
FechaRegistroClien nvarchar(20),
FechaModiClien nvarchar(20),
EstadoCliente varchar(20)
)

CREATE TABLE Productos
(
IDProducto int not null,
Nombreproducto nvarchar(20),
FechaRegistroProduc nvarchar(20),
FechaModiProduc nvarchar(20),
Estado nvarchar(20)
)

CREATE TABLE EncFactura
(
IDEncFactura int not null,
IDCliente int not null,
Impuesto nvarchar(20),
Descuento nvarchar(20),
Monto nvarchar(20) 
)


CREATE TABLE DetFactura
(
IDEncFactura int not null,
IDProducto int not null,
Cantidad nvarchar(20),
Precio nvarchar(20),
Descuento nvarchar(20)
)

ALTER TABLE Cliente ADD CONSTRAINT PK_IDCliente Primary key(IDCliente)
ALTER TABLE EncFactura ADD CONSTRAINT PK_IDEncFactura  Primary Key(IDEncFactura)
ALTER TABLE Productos ADD CONSTRAINT PK_IDProducto  Primary Key(IDProducto)

ALTER TABLE Cliente DROP CONSTRAINT PK_IDCliente
ALTER TABLE EncFactura DROP CONSTRAINT PK_IDEncFactura
ALTER TABLE Productos DROP CONSTRAINT PK_IDProducto

ALTER TABLE EncFactura  ADD CONSTRAINT FK_IDCliente FOREIGN KEY(IDCliente) References Cliente(IDCliente)  
ALTER TABLE DetFactura ADD CONSTRAINT FK_IDEncFactura FOREIGN KEY(IDEncFactura) References  EncFactura(IDEncFactura)  
ALTER TABLE DetFactura ADD CONSTRAINT FK_IDProducto FOREIGN KEY(IDproducto) References Productos(IDProducto)  

ALTER TABLE EncFactura DROP FK_IDCliente
ALTER TABLE DetFactura DROP FK_IDEncFactura
ALTER TABLE DetFactura DROP FK_IDProducto

INSERT INTO Cliente VALUES('1','Cliente#1','Dirección#1','0,10','18/04/2021','1/5/2021','Activo')
INSERT INTO Cliente values('2','Cliente#2','Dirección#2','0,11','8/2/2021','9/3/2021','Activo')
INSERT INTO Cliente values('3','Cliente#3','Dirección#3','0,12','5/1/2021','4/5/2021','Inactivo')
insert into Cliente values('4','Cliente#4','Dirección#4','0,15','5/3/2021','4/5/2021','Activo')

INSERT INTO Productos values('1','Producto#1','18/04/2021','1/5/2021','Activo')
INSERT INTO Productos values('2','Producto#2','8/2/2021','9/3/2021','Activo')
INSERT INTO Productos values('3','Producto#3','5/1/2021','4/5/2021','Activo')
INSERT INTO Productos values('4','Producto#4','2/3/2021','1/5/2021','Inactivo')
INSERT INTO Productos values('5','Producto#5','3/5/2021','4/5/2021','Activo')
INSERT INTO Productos values('6','Producto#6','1/5/2021','4/5/2021','Inactivo')
INSERT INTO Productos values('7','Producto#7','2/3/2021','8/4/2021','Inactivo')


INSERT INTO EncFactura values('1','1','100','10','1000')
INSERT INTO EncFactura values('2','1','200','20','2000')
INSERT INTO EncFactura values('3','1','300','30','3000')
INSERT INTO EncFactura values('4','2','400','40','4000')
INSERT INTO EncFactura values('5','2','500','50','5000')
INSERT INTO EncFactura values('6','2','600','60','6000')
INSERT INTO EncFactura values('7','3','700','70','7000')
INSERT INTO EncFactura values('8','3','800','80','8000')
INSERT INTO EncFactura values('9','3','900','90','9000')

INSERT INTO DetFactura values('1','1','1','100','10')
INSERT INTO DetFactura values('1','2','2','200','20')
INSERT INTO DetFactura values('2','3','3','300','30')
INSERT INTO DetFactura values('2','4','4','400','40')
INSERT INTO DetFactura values('2','5','5','500','50')
INSERT INTO DetFactura values('3','6','6','600','60')
INSERT INTO DetFactura values('3','7','7','700','70')
INSERT INTO DetFactura values('3','1','8','800','80')
INSERT INTO DetFactura values('3','2','9','900','90')
INSERT INTO DetFactura values('4','3','10','1000','100')
INSERT INTO DetFactura values('4','4','11','1100','110')
INSERT INTO DetFactura values('5','5','12','1200','120')
INSERT INTO DetFactura values('5','6','13','1300','130')
INSERT INTO DetFactura values('6','7','14','1400','140')
INSERT INTO DetFactura values('7','1','15','1500','150')
INSERT INTO DetFactura values('8','2','16','1600','160')

update Cliente set NombreCliente = 'Juan' where IDCliente = 1
update Cliente set NombreCliente = 'Pedro' where IDCliente = 2
update Cliente set NombreCliente = 'Catalina' where IDCliente = 3 

update Productos set Nombreproducto = 'Pastas' where IDProducto = 1
update Productos set Nombreproducto = 'Tomates' where IDProducto = 5
update Productos set Nombreproducto = 'Chile Picante' where IDProducto = 3 
update Productos set Nombreproducto = 'Pescado' where IDProducto = 7

DELETE from Cliente where IDCliente = 4

DELETE from Productos where IDProducto = 8
DELETE from Productos where IDProducto = 9


--Lista de clientes ordenados por nombre
select* from Cliente order by NombreCliente

--Lista de clientes ordenados por Id
select * from Cliente order by IDCliente

--consulta donde se muestra el numero de clientes
select sum(IDCliente) from Cliente

--consulta donde se muestra el numeo de productos
select * from Productos order by Nombreproducto

