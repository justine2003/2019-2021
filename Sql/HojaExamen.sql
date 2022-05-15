CREATE DATABASE[PracticaSQL]
ON PRIMARY
(
NAME = 'PracticaSQL',
FILENAME = 'C:\DB\PracticaSQL.mdf',
SIZE =6144KB,
MAXSIZE = UNLIMITED, 
FILEGROWTH = 1024KB
)
LOG ON
(
NAME = 'PracticaSQL_log',
FILENAME = 'C:\DB\PracticaSQL_log.ldf',
SIZE = 8192KB,
MAXSIZE = 2048GB,
FILEGROWTH = 10%
)
GO

CREATE TABLE Prestamos 
(
IDPrestamo int not null,
IDLector nvarchar(12) not null,
IDLibro nvarchar(5)not null,
MontoPrestamo nvarchar(30),
fecha_prestamo nvarchar(30),
fecha_devolucion nvarchar(30),
estadoDevuelto nvarchar(30)
)

CREATE TABLE Estudiante
(
IDLector nvarchar(12)not null,
nombre nvarchar(30),
direccion nvarchar(30),
carrera nvarchar(30),
edad nvarchar(30),
fechaRegistro nvarchar(30),
estado nvarchar(30)
)

CREATE TABLE Autor
(
IDAutor int not null,
nombre nvarchar(30),
nacionalidad nvarchar(30),
fechaRegistro nvarchar(30),
estado nvarchar(30)
)

CREATE TABLE Categoria
(
IDCategoria int not null,
nombre nvarchar(30),
fechaRegistro nvarchar(30),
estado nvarchar(30)
)

CREATE TABLE Libro
(
IDLibro nvarchar(5)not null,
titulo nvarchar(30),
descripcion nvarchar(30),
IDCategoria int not null,
IDAutor int not null,
monto nvarchar(30),
fechaRegistro nvarchar(30),
estado nvarchar(30)
)

ALTER TABLE Prestamos ADD CONSTRAINT PK_IDPrestamo Primary key(IDPrestamo)
ALTER TABLE Estudiante ADD CONSTRAINT PK_IDLector Primary Key(IDLector)
ALTER TABLE Categoria ADD CONSTRAINT PK_IDCategoria Primary Key(IDCategoria)
ALTER TABLE Autor ADD CONSTRAINT PK_IDAutor Primary Key(IDAutor)
ALTER TABLE Libro ADD CONSTRAINT PK_IDLibro Primary Key(IDLibro)

ALTER TABLE Prestamos DROP CONSTRAINT PK_IDPrestamo
ALTER TABLE Estudiante DROP CONSTRAINT PK_IDLector
ALTER TABLE Categoria DROP CONSTRAINT PK_IDCategoria
ALTER TABLE Autor DROP CONSTRAINT PK_IDAutor
ALTER TABLE Libro DROP CONSTRAINT PK_IDLibro

ALTER TABLE Prestamos ADD CONSTRAINT FK_IDLector FOREIGN KEY(IDLector) References Estudiante(IDLector)  
ALTER TABLE Prestamos ADD CONSTRAINT FK_IDLibro FOREIGN KEY(IDLibro) References Libro(IDLibro)
ALTER TABLE Libro ADD CONSTRAINT Fk_IDCategoria FOREIGN KEY(IDCategoria) References Categoria(IDCategoria)
ALTER TABLE Libro ADD CONSTRAINT Fk_IDAutor FOREIGN key(IDAutor) References Autor(IDAutor)  

ALTER TABLE Prestamos DROP FK_IDLector
ALTER TABLE Prestamos DROP FK_IDLibro
ALTER TABLE Libro DROP FK_IDCAtegoria
ALTER TABLE Libro DROP FK_IDAutor   

INSERT INTO Prestamos values('8406','987','65','5750','05/9/2021','10/09/2021','Activo')
INSERT INTO Estudiante values('9876','JUSTIN','Heredia','Progra','17','05/09/2021','Activo')
INSERT INTO Libro values('68','Pedro paramo','Novela','908','87','5750','05/09/2021','Activo')
INSERT INTO Autor values('8','Juan rulfo','Costarricence','06/12/1999','Activo')
INSERT INTO Categoria values('9','Novela','1999','Activo')

update Prestamos set estadoDevuelto = 'Inactivo' 
update Estudiante set estado = 'Inactivo'
update Libro set estado = 'Inactivo'
update Autor set estado = 'Inactivo'
update Categoria set estado = 'Inactivo'

DELETE Estudiante
DELETE Libro

SELECT * from Prestamos
SELECT * from Estudiante
SELECT * from Libro
SELECT * from Autor
SELECT * from Categoria
