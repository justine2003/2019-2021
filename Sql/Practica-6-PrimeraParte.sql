
CREATE DATABASE [PRUEBADB] 
ON PRIMARY 
( NAME = 'PRUEBA6', 
 FILENAME = 'C:\DB\PRUEBA6.mdf' , 
 SIZE = 6144KB , 
 MAXSIZE = UNLIMITED, 
FILEGROWTH = 1024KB )
LOG ON 
( NAME = 'PRUEBA6_log', 
 FILENAME = 'C:\DB\PRUEBA6_log.ldf' , 
 SIZE = 8192KB , 
 MAXSIZE = 2048GB , 
FILEGROWTH = 10%)
GO

CREATE TABLE Profesores
(
Nombre nvarchar(10)not null, 
Apellidos nvarchar(10),
Asignature nvarchar(10),
HoraAtencionPadres nvarchar(10),
)

CREATE TABLE Alumnos
(
Nombre nvarchar(10)not null,
Dirección nvarchar(10),
Teléfono nvarchar(10),
)

CREATE TABLE Cursos
(
NumAula nvarchar(10)not null,
NumTotalAlumnos nvarchar(10),
Ubicacion nvarchar(10)
)

ALTER TABLE Profesores ADD CONSTRAINT PK_Nombre Primary Key(Nombre)
ALTER TABLE Alumnos ADD CONSTRAINT PK_Nombre Primary Key(Nombre)
ALTER TABLE Cursos ADD CONSTRAINT PK_NumAula Primary Key(NumAula)

ALTER TABLE Profesores ADD CONSTRAINT FK_Nombre FOREIGN KEY(Nombre) References Alumnos(Nombre)



