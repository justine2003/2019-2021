CREATE DATABASE[PracticaSQL2.0]
ON PRIMARY
(
NAME = 'PracticaSQL2.0',
FILENAME = 'C:\DB\PracticaSQL2.0.mdf',
SIZE =6144KB,
MAXSIZE = UNLIMITED, 
FILEGROWTH = 1024KB
)
LOG ON
(
NAME = 'PracticaSQL2.0_log',
FILENAME = 'C:\DB\PracticaSQL2.0_log.ldf',
SIZE = 8192KB,
MAXSIZE = 2048GB,
FILEGROWTH = 10%
)
GO

CREATE TABLE Notas
(
IDNotas int not null,
IDAprovados int not null,
NombreEstdiantes nvarchar(20),
NotasEstudiantes nvarchar(20),
PorcentajeEstudiante nvarchar(20)
)

CREATE TABLE Aprobados
(
IDAprovados int not null,
IDReprobados int not null,
NombreEstdiantes nvarchar(20),
EstadoEstudiante nvarchar(20),
Nota int
)

CREATE TABLE Reprobados 
(
IDReprobados int not null,
NombreEstudiante nvarchar(20),
EstadoEstudiante nvarchar(20),
Nota int
)

ALTER TABLE Notas ADD CONSTRAINT PK_IDNotas Primary key(IDNotas)
ALTER TABLE Aprobados ADD CONSTRAINT PK_IDAprovados Primary key(IDAprovados)
ALTER TABLE Reprobados ADD CONSTRAINT PK_IDReprobados Primary key(IDReprobados)

ALTER TABLE Notas DROP CONSTRAINT PK_IDNotas
ALTER TABLE Aprobados DROP CONSTRAINT PK_IDAprovados
ALTER TABLE Reprobados DROP CONSTRAINT PK_IDReprobados

ALTER TABLE Notas ADD CONSTRAINT FK_IDAprovados FOREIGN KEY(IDAprovados) References Aprobados(IDAprovados)  
ALTER TABLE Aprobados ADD CONSTRAINT FK_IDReprobados FOREIGN KEY(IDReprobados) References Reprobados(IDReprobados) 

ALTER TABLE Notas DROP FK_IDAprovados  
ALTER TABLE Aprobados DROP FK_IDReprobados 

INSERT INTO Notas VALUES('84','8','Justin','90','5')
INSERT INTO Aprobados VALUES('8','4','Justin','Aprobado','20')
INSERT INTO Reprobados VALUES('4','justin','Aprobado','40')

INSERT INTO Notas VALUES('87','5','Carlos','76','6')

INSERT INTO Aprobados VALUES('5','1','Carlos','Reprovado','30')
INSERT INTO Aprobados VALUES('4','1','Juan','Aprovado','90')
INSERT INTO Aprobados VALUES('1','1','Sebastian','Reprovado','60')
INSERT INTO Aprobados VALUES('2','1','Pablo','Reprovado','50')

INSERT INTO Reprobados VALUES('1','Carlos','Reprovado','10')

update Aprobados set EstadoEstudiante   = 'Reprobado'
update Reprobados set EstadoEstudiante = 'Aprovado'

DELETE Notas
DELETE Aprobados
DELETE Reprobados

select * from Notas
select * from Aprobados
select * from Reprobados

select sum(Nota) as suma from Aprobados
select sum(Nota) as nota from Reprobados

select count(Nota) as numero from Aprobados 
where Nota < 90;
