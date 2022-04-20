USE master
GO

-- Determina si esta la base de datos Obligatorio
	if exists(SELECT * FROM SysDataBases WHERE name='Obligatorio')
	BEGIN
		--Borra la base de datos Obligatorio 
		DROP DATABASE Obligatorio
	END
	GO
	
CREATE DATABASE Obligatorio
GO

--Comando de creacion de Tablas
USE Obligatorio
GO

CREATE TABLE Periodista
(
	CodigoReg int NOT NULL PRIMARY KEY, 
	Nombre varchar (30) NOT NULL,
	Mail varchar (50) NOT NULL
)
GO

CREATE TABLE Noticias
(
	NroInt int IDENTITY (1, 1) PRIMARY KEY,
	FechaHora DateTime NOT NULL,
	Resumen varchar (100) NOT NULL,
	Contenido varchar (50) NOT NULL,
	Titulo varchar (30) NOT NULL,
	CodigoReg int NOT NULL FOREIGN KEY REFERENCES Periodista (CodigoReg)
)
GO

CREATE TABLE Internacional 
(
	NroInt int Foreign Key References Noticias(NroInt) PRIMARY KEY,
	PaisOrigen varchar (60) NOT NULL
)
GO

CREATE TABLE Secciones
(
	CodIntS varchar (3) NOT NULL PRIMARY KEY,
	Nombre varchar (60) NOT NULL
)
GO

CREATE TABLE Nacional
(
	NroInt int Foreign Key References Noticias(NroInt) PRIMARY KEY,
	CodIntS varchar (3) NOT NULL FOREIGN KEY REFERENCES Secciones (CodIntS)
)
GO


insert Periodista (CodigoReg, Nombre, Mail) Values (123000, 'Jorge', 'jorge@gmail.com')
insert Periodista (CodigoReg, Nombre, Mail) Values (456000, 'Maria', 'maria@gmail.com')
insert Periodista (CodigoReg, Nombre, Mail) Values (789000, 'Paula', 'paula@gmail.com')
insert Periodista (CodigoReg, Nombre, Mail) Values (101000, 'Jose', 'jose@gmail.com')
insert Periodista (CodigoReg, Nombre, Mail) Values (112000, 'Mario', 'mario@gmail.com')
insert Periodista (CodigoReg, Nombre, Mail) Values (131000, 'Ana', 'ana@gmail.com')
insert Periodista (CodigoReg, Nombre, Mail) Values (416800, 'Joaquin', 'joaquin@gmail.com')
insert Periodista (CodigoReg, Nombre, Mail) Values (113000, 'Elena', 'elena@gmail.com')
insert Periodista (CodigoReg, Nombre, Mail) Values (135000, 'Juan', 'juan@gmail.com')
insert Periodista (CodigoReg, Nombre, Mail) Values (416000, 'Ricardo', 'ricardo@gmail.comm')
GO


insert Noticias (FechaHora, Resumen, Contenido, Titulo, CodigoReg) Values ('20020210', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut dapibus ornare accumsan.', 'Lorem ipsum ', 'Lorem', 123000)
insert Noticias (FechaHora, Resumen, Contenido, Titulo, CodigoReg) Values ('20020209', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut dapibus ornare accumsan.', 'Lorem ipsum ', 'Lorem', 456000)
insert Noticias (FechaHora, Resumen, Contenido, Titulo, CodigoReg) Values ('20020208', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut dapibus ornare accumsan.', 'Lorem ipsum ', 'Lorem', 789000)
insert Noticias (FechaHora, Resumen, Contenido, Titulo, CodigoReg) Values ('20020207', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut dapibus ornare accumsan.', 'Lorem ipsum ', 'Lorem', 101000)
insert Noticias (FechaHora, Resumen, Contenido, Titulo, CodigoReg) Values ('20020206', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut dapibus ornare accumsan.', 'Lorem ipsum ', 'Lorem', 112000)
insert Noticias (FechaHora, Resumen, Contenido, Titulo, CodigoReg) Values ('20020205', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut dapibus ornare accumsan.', 'Lorem ipsum ', 'Lorem', 131000)
insert Noticias (FechaHora, Resumen, Contenido, Titulo, CodigoReg) Values ('20020204', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut dapibus ornare accumsan.', 'Lorem ipsum ', 'Lorem', 416000)
insert Noticias (FechaHora, Resumen, Contenido, Titulo, CodigoReg) Values ('20020203', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut dapibus ornare accumsan.', 'Lorem ipsum ', 'Lorem', 113000)
insert Noticias (FechaHora, Resumen, Contenido, Titulo, CodigoReg) Values ('20020202', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut dapibus ornare accumsan.', 'Lorem ipsum ', 'Lorem', 135000)
insert Noticias (FechaHora, Resumen, Contenido, Titulo, CodigoReg) Values ('20020201', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut dapibus ornare accumsan.', 'Lorem ipsum ', 'Lorem', 416800)
insert Noticias (FechaHora, Resumen, Contenido, Titulo, CodigoReg) Values ('20020201', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut dapibus ornare accumsan.', 'Lorem ipsum ', 'Lorem', 416800)
GO


insert Internacional (PaisOrigen, NroInt) Values ('Italia', 1)
insert Internacional (PaisOrigen, NroInt) Values ('Francia', 2)
insert Internacional (PaisOrigen, NroInt) Values ('España', 3)
insert Internacional (PaisOrigen, NroInt) Values ('Mexico', 4)
insert Internacional (PaisOrigen, NroInt) Values ('Chile', 5)
GO


insert Secciones (CodIntS, Nombre) Values ('123', 'POL')
insert Secciones (CodIntS, Nombre) Values ('456', 'LOC')
insert Secciones (CodIntS, Nombre) Values ('789', 'ANU')
insert Secciones (CodIntS, Nombre) Values ('101', 'BOL')
insert Secciones (CodIntS, Nombre) Values ('124', 'AGE')
insert Secciones (CodIntS, Nombre) Values ('423', 'ECO')
insert Secciones (CodIntS, Nombre) Values ('478', 'POR')
insert Secciones (CodIntS, Nombre) Values ('755', 'PAS')
insert Secciones (CodIntS, Nombre) Values ('455', 'RAD')
insert Secciones (CodIntS, Nombre) Values ('672', 'INF')
GO


insert Nacional (CodIntS, NroInt) Values ('123', 6)
insert Nacional (CodIntS, NroInt) Values ('478', 7)
insert Nacional (CodIntS, NroInt) Values ('755', 8)
insert Nacional (CodIntS, NroInt) Values ('455', 9)
insert Nacional (CodIntS, NroInt) Values ('672', 10)
insert Nacional (CodIntS, NroInt) Values ('789', 11)
GO


-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--Listado de Secciones
CREATE PROCEDURE ListarSecciones AS
BEGIN
	SELECT CodIntS, Nombre
	FROM Secciones
END
GO

--Listado de Periodistas
CREATE PROCEDURE ListarPeriodistas AS
BEGIN
	SELECT CodigoReg, Nombre, Mail
	FROM Periodista
END
GO


--Listado de Secciones con Noticias Nacionales Asociadas
CREATE PROCEDURE ListarSeccionesNoticias @CodIntS varchar(3) AS
BEGIN 
	SELECT *
	FROM   Noticias N inner join Nacional NA on N.NroInt = NA.NroInt
	WHERE NA.CodIntS = @CodIntS
END
GO


--Listado de Noticias Nacionales
CREATE PROCEDURE ListarNoticiasNacionales AS
BEGIN
	SELECT *
	FROM Nacional AS Na INNER JOIN Noticias AS N ON Na.NroInt = N.NroInt
END
GO


--Listado de Noticias Internacionales
CREATE PROCEDURE ListarNoticiasInter AS
BEGIN
	SELECT *
	FROM Internacional AS I INNER JOIN Noticias AS N ON I.NroInt = N.NroInt
END
GO


--Agregar Noticia Internacional
CREATE PROCEDURE AgregarNoticiaInter 
@PaisOrigen varchar(60), 
@FechaHora DateTime, 
@Resumen varchar(100), 
@Contenido varchar(50), 
@Titulo varchar(30), 
@CodigoReg int 

AS
BEGIN 
--valido que exista un periodista para la noticia 
	IF NOT exists(select * from Periodista where CodigoReg = @CodigoReg)
		return -1
		
	DECLARE @Error int
	BEGIN TRAN 

	INSERT Noticias(FechaHora ,Resumen ,Contenido ,Titulo ,CodigoReg) VALUES(@FechaHora, @Resumen, @Contenido ,@Titulo ,@CodigoReg) 
	SET @Error=@@ERROR;

	INSERT Internacional(NroInt, PaisOrigen) VALUES(ident_current ('Noticias'), @PaisOrigen)
	SET @Error=@@ERROR+@Error;

	IF(@Error=0)
	BEGIN
		COMMIT TRAN
		RETURN 1
	END
	ELSE
	BEGIN
		ROLLBACK TRAN
		RETURN -2
	END	
END
GO


--Agregar Noticia Nacional
CREATE PROCEDURE AgregarNoticiaNacional 
@FechaHora DateTime, 
@Resumen varchar(100), 
@Contenido varchar(50), 
@Titulo varchar(30), 
@CodigoReg int, 
@CodIntS varchar(3) 

AS
BEGIN 
--valido que exista un periodista para la noticia 
	IF NOT exists(select * from Periodista where CodigoReg = @CodigoReg)
		return -1

--valido que exista una seccion para la noticia
	if NOT EXISTS (SELECT * FROM Secciones WHERE CodIntS = @CodIntS)
		RETURN -2
		
	DECLARE @Error int
	BEGIN TRAN 

	INSERT Noticias(FechaHora ,Resumen ,Contenido ,Titulo ,CodigoReg) VALUES(@FechaHora, @Resumen, @Contenido ,@Titulo ,@CodigoReg) 
	SET @Error=@@ERROR;

	INSERT Nacional(CodIntS, NroInt) VALUES(@CodIntS, ident_current ('Noticias'))
	SET @Error=@@ERROR+@Error;

	IF(@Error=0)
	BEGIN
		COMMIT TRAN
		RETURN 1
	END
	ELSE
	BEGIN
		ROLLBACK TRAN
		RETURN -3
	END	
END
GO


----------------------------------------------------------------------------------------------------
------------------------------------ABM PERIODISTA--------------------------------------------------
----------------------------------------------------------------------------------------------------

-- Buscar Periodista
Create Procedure BuscoPeriodista 
@CodigoReg int
AS
Begin
	Select *
	from Periodista  
	where CodigoReg = @CodigoReg	
End
Go

--Eliminar Periodista
CREATE PROCEDURE BajaPeriodista 
@CodigoReg int

AS
BEGIN
	IF not exists(select CodigoReg from Periodista where CodigoReg = @CodigoReg)
		return -1 
	
	IF exists(select CodigoReg from Noticias where CodigoReg = @CodigoReg)
		return -2 

	delete from Periodista where CodigoReg = @CodigoReg
	if (@@ERROR = 0)
		return 1
	else
		return -3
	
END
GO


-- Modificar Periodista
CREATE PROCEDURE ModPeriodista 
@CodigoReg int, 
@Nombre varchar(30),
@Mail varchar (50) 
AS
BEGIN
	
	IF NOT (exists (SELECT CodigoReg FROM Periodista WHERE CodigoReg = @CodigoReg) )
	RETURN -1 --No existe el Periodista
	
	UPDATE Periodista SET Nombre = @Nombre, Mail = @Mail WHERE CodigoReg = @CodigoReg
	IF (@@ERROR = 0) 
			RETURN 1	
	ELSE
		RETURN 0 
END
GO


--Alta Periodista
CREATE PROCEDURE AltaPeriodista
@CodigoReg int,
@Nombre varchar(30),
@Mail varchar (50)
AS
BEGIN

	IF exists(select * from Periodista where CodigoReg = @CodigoReg)
		return -1

	INSERT Periodista values(@CodigoReg, @Nombre, @Mail)
	return 1
	
END
GO


----------------------------------------------------------------------------------------------------
------------------------------------ABM SECCIONES---------------------------------------------------
----------------------------------------------------------------------------------------------------
-- Buscar Secciones
Create Procedure BuscoSecciones 
@CodIntS  varchar (3)
AS
Begin
	Select *
	from Secciones  
	where CodIntS = @CodIntS 	
End
Go
 
 
-- Agregar Secciones
CREATE PROCEDURE AgregarSecc
@CodIntS varchar(3),
@Nombre varchar (60)

AS
BEGIN
	IF exists(select * from Secciones where CodIntS = @CodIntS)
		return -1 
		
	insert Secciones Values(@CodIntS, @Nombre)	
	return 1
END
GO


--Eliminar Secciones
CREATE PROCEDURE BajaSeccion
@CodIntS varchar(3)

AS
BEGIN

	IF NOT exists(select CodIntS from Secciones where CodIntS = @CodIntS)
		return -1 

	BEGIN TRAN
	delete from Nacional where CodIntS = @CodIntS 
	if (@@ERROR != 0)
	begin
		Rollback Tran 
		return -2
	end
	delete from Noticias where NroInt not in (select Noticias.NroInt
												from Nacional)  
								AND NroInt not in (select Noticias.NroInt
												from Internacional)
	if (@@ERROR != 0)
	begin
		Rollback Tran 
		return -3
	end

	delete from Secciones where CodIntS = @CodIntS
	if (@@ERROR != 0)
	begin
		Rollback Tran 
		return -4
	end
	
	
	Commit Tran
	return 1
END
GO


-- Modificar Secciones
CREATE PROCEDURE ModSec 
@CodIntS varchar (3), 
@Nombre varchar(60) 
AS
BEGIN
	
	IF NOT (exists (SELECT CodIntS FROM Secciones WHERE CodIntS = @CodIntS) )
	RETURN -1 --No existe la Seccion
	
	UPDATE Secciones SET Nombre = @Nombre WHERE CodIntS = @CodIntS
	IF (@@ERROR = 0) 
			RETURN 1	
	ELSE
		RETURN 0 
END
GO

