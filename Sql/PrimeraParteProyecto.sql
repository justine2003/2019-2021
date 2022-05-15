--Creación de una BD

CREATE DATABASE [PRUEBADB] 
ON PRIMARY 
( NAME = 'PRUEBADB', 
 FILENAME = 'C:\DB\PRUEBADB.mdf' , 
 SIZE = 6144KB , 
 MAXSIZE = UNLIMITED, 
FILEGROWTH = 1024KB )
LOG ON 
( NAME = 'PRUEBADB_log', 
 FILENAME = 'C:\DB\PRUEBADB_log.ldf' , 
 SIZE = 8192KB , 
 MAXSIZE = 2048GB , 
FILEGROWTH = 10%)
GO

--CREACIÓN DE TABLAS

CREATE TABLE Libro
(
idLibro int PRIMARY KEY,
nombre nvarchar(50),
fechaRegistro nvarchar(30),
monto money,
estado nvarchar(10)
)--Agregar la columna idAutor y idTema a la tabla LibroALTER TABLE Libro ADD idAutor intALTER TABLE Libro ADD idTema intCREATE TABLE Autor
(
idAutor int PRIMARY KEY,
nombre nvarchar(50),
fechaRegistro nvarchar(30),
estado nvarchar(10)
)CREATE TABLE Tema
(
idTema int PRIMARY KEY,
nombre nvarchar(50),
fechaRegistro nvarchar(30),
estado nvarchar(10)
)


--Realización de INSERTS o Registros en las tablas

INSERT INTO Autor values(1,'Joaquin Gutierrez','06/04/2021','Activo')
INSERT INTO Autor values(2,'JK ROWLING','06/04/2021','Activo')

INSERT INTO Tema values(1,'Aventura','13/04/2021','Activo')
INSERT INTO Tema values(2,'Fantasia','13/04/2021','Activo')

INSERT INTO Libro values(1,'Cocori','13/04/2021',5000,'Activo',1,1)
INSERT INTO Libro values(2,'Harry Potter','13/04/2021',10000,'Activo',2,2)

--Realización de SELECTS o Consultas de las tablas
--Select *: significa seleccionar todo de la tabla
SELECT * from Autor
SELECT * from Tema
SELECT * from Libro

--Consultar por identificador único o Primary Key

--Consulta de los datos del registro 1 de Autor
Select * from Autor where idAutor = 1

--Consulta de los datos del registro Joaquin Gutierrez de Autor
Select * from Autor where nombre = 'Joaquin Gutierrez'

--Consulta de los datos fechaRegistro y estado del resgistro 2 de Autor
Select idAutor,fechaRegistro,estado from Autor where idAutor = 2

--*-*-*-UPDATES*-*-*-*--

--Actualizar el estado a 'Inactivo' del resgistro 1 de Autor
update Autor set estado = 'Inactivo' where idAutor = 1