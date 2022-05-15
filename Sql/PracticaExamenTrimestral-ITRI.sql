
CREATE DATABASE [PracticaExamen] 
ON PRIMARY 
( NAME = 'PracticaExamen', 
 FILENAME = 'C:\DB\PracticaExamen.mdf' , 
 IISZE = 6144KB , 
 MAXSIZE = UNLIMITED, 
FILEGROWTH = 1024KB )
LOG ON 
( NAME = 'PracticaExamen_log', 
 FILENAME = 'C:\DB\PracticaExamen_log.ldf' , 
 SIZE = 8192KB , 
 MAXSIZE = 2048GB , 
FILEGROWTH = 10%)
GO

CREATE TABLE Prestamos
(
IDPrestamo int not null,
IDLector nvarchar(12)not null,
IDLibro nvarchar(5)not null,
MontoPrestamo nvarchar(10),
FechaPrestamo nvarchar(10),
FechaDevolucion nvarchar(10),
EstadoDevuelto nvarchar(10)
)


CREATE TABLE Estudiante
(
IDLector nvarchar(12)not null,
Nombre nvarchar(10),
Direccion nvarchar(10),
Carrera nvarchar(10),
Edad nvarchar(10),
FechaRegistro nvarchar(10),
Estado nvarchar(10)
)

CREATE TABLE Autor
(
IDAutor int not null,
Nombre nvarchar(10),
Nacionalidad nvarchar(10),
FechaRegistro nvarchar(10),
Estado nvarchar(10)
)

CREATE TABLE Categoria 
(
IDCategoria int not null,
Nombre nvarchar(10),
FechaRegistro nvarchar(10),
Estado nvarchar(10)
)

CREATE TABLE Libro
(
IDLibro nvarchar(5)not null,
Titulo nvarchar(10),
Descripcion nvarchar(10),
IDCategoria int not null,
IDAutor int not null,
Monto nvarchar(10),
FechaRegistro nvarchar(10),
Estado nvarchar(10)
)

ALTER TABLE Prestamos ADD CONSTRAINT PK_IDPrestamos Primary Key(IDPrestamo)
ALTER TABLE Estudiante ADD CONSTRAINT PK_IDLectro Primary Key(IDLector)
ALTER TABLE Autor ADD CONSTRAINT PK_IDAutor Primary Key(IDAutor)
ALTER TABLE Categoria ADD CONSTRAINT PK_IDCategoria Primary Key(IDCategoria)
ALTER TABLE Libro ADD CONSTRAINT PK_IDLibro Primary Key(IDLibro)

ALTER TABLE Prestamos ADD CONSTRAINT FK_IDLector FOREIGN KEY(IDLector) References Estudiante(IDLector)
ALTER TABLE Prestamos ADD CONSTRAINT FK_IDLibro FOREIGN KEY(IDLibro) References Libro(IDLibro)
ALTER TABLE Libro ADD CONSTRAINT FK_IDCategoria FOREIGN KEY(IDCategoria) References Categoria(IDCategoria)
ALTER TABLE Libro ADD CONSTRAINT FK_IDAutor FOREIGN KEY(IDAutor) References Autor(IDAutor)

Alter table Prestamos drop CONSTRAINT PK_IDPrestamos
Alter table Estudiante drop CONSTRAINT PK_IDLector
Alter table Autor drop CONSTRAINT PK_IDAutor
Alter table Categoria drop CONSTRAINT PK_IDCategoria
Alter table Libro drop CONSTRAINT PK_IDLibro

ALTER TABLE Prestamos drop CONSTRAINT FK_IDLector
ALTER TABLE Prestamos drop CONSTRAINT FK_IDLibro 
ALTER TABLE Libro drop CONSTRAINT FK_IDCategoria 
ALTER TABLE Libro drop CONSTRAINT FK_IDAutor 

INSERT INTO Prestamos VALUES('1234','12000','123456789','123456789','515151155515','4848448','1151551')
INSERT INTO Estudiante VALUES('1234','12000','123456789','123456789','515151155515','4848448','1151551')
INSERT INTO Autor VALUES('1234','12000','123456789','123456789','515151155515')
INSERT INTO Categoria VALUES('1234','12000','123456789','123456789')
INSERT INTO Libro VALUES('1234','12000','123456789','123456789','515151155515','4848448','1151551')

update Prestamos set MontoPrestamo = 'Activo' where IDPrestamo = 1
update Estudiante set Estado = 'Activo' where IDLector = 1
update Autor set estado = 'Inactivo' where idAutor = 1
UPDATE Categoria set Estado = 'Activo' where IDCategoria = 1
update Libro set Estado = 'Inactivo' where IDLibro = 1

Delete from Prestamos where IDPrestamo =  1
Delete from Estudiante where IDLector = 3
Delete from Autor where IDAutor = 2
Delete from Categoria where IDCategoria = 3
Delete from Libro where IDLibro = 2

