
CREATE TABLE [dbo].[Clientes](
	[id_cliente] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](50) NOT NULL,
	[telefono] [nvarchar](50) NULL,
	[fecha_creacion] [datetime] NOT NULL,
	[estatus] [nvarchar](50) NOT NULL,
	[genero] [char](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[Servicios](
	[id_servicio] [int] IDENTITY(1,1) NOT NULL,
	[cantidad] [int] NOT NULL,
	[id_tipo_servicio] [int] NOT NULL,
	[fecha_creacion] [datetime] NOT NULL,
	[pagado] [float] NOT NULL,
	[id_cliente] [int] NOT NULL)
 CONSTRAINT [PK_Servicios] PRIMARY KEY CLUSTERED 
(
	[id_servicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
CREATE TABLE [dbo].[Tipo_Servicios](
	[id_tipo_servicio] [int] IDENTITY(1,1) NOT NULL,
	[prenda] [nvarchar](50) NOT NULL,
	[arreglo] [nvarchar](50) NOT NULL,
	[valor] [float] NOT NULL)
PRIMARY KEY CLUSTERED 
(
	[id_tipo_servicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
CREATE VIEW Reporte 
AS
SELECT
Clientes.id_cliente,
nombre,
telefono,
estatus,
genero,
id_servicio,
cantidad,
prenda,
valor,
pagado
FROM Clientes 
LEFT JOIN Servicios
ON Clientes.id_cliente = Servicios.id_cliente
LEFT JOIN Tipo_Servicios
ON Servicios.id_servicio = Tipo_Servicios.id_tipo_servicio


SELECT * FROM REPORTE
USE [Mariacositas]
GO

--------------------------------------------

INSERT INTO [dbo].[Clientes]
           ([nombre]
           ,[telefono]
           ,[fecha_creacion]
           ,[estatus]
           ,[genero])
     VALUES
           (<nombre, nvarchar(50),>
           ,<telefono, nvarchar(50),>
           ,<fecha_creacion, datetime,>
           ,<estatus, nvarchar(50),>
           ,<genero, char(10),>)
GO













