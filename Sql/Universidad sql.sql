

CREATE DATABASE [“nombreBD”] 
ON  PRIMARY 
( NAME = '“Universidad BD”', 
FILENAME = 'C:\DB\“Universidad BD”.mdf' , 
SIZE = 6144KB , 
MAXSIZE = UNLIMITED, 
FILEGROWTH = 1024KB )
LOG ON 
( NAME = '“ BD”_log', 
FILENAME = 'C:\DB\“Universidad BD”_log.ldf' , 
SIZE = 8192KB , 
MAXSIZE = 2048GB , 
FILEGROWTH = 10%)
GO

CREATE TABLE  Factura
(Codigo_universidad int PRIMARY KEY, 
CIT nvarchar(12),
Ubicacion nvarchar(30),
Cedula nvarchar(30),
Cantidad_departamentos int,
Funcionarios nvarchar(30),
Departamenos int,
Cursos int,
Estudiantes nvarchar(30),
Fecha_registro nvarchar(30),
Fecha_modificacion nvarchar(30),
Estado nvarchar(30) )


Create Table Funcionarios
(
Fucionarios nvarchar(30) primary key
n
)