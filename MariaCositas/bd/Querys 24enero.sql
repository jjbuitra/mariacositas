
CREATE TABLE [dbo].[Clientes](
	[id_cliente] int primary key identity NOT NULL,
	[nombre] [nvarchar](50) NOT NULL,
	[telefono] [nvarchar](50) NULL,
	[fecha_creacion] [datetime] NOT NULL,
	[estatus] [nvarchar](50) NOT NULL,
	[genero] [char](10) NOT NULL)

	CREATE TABLE [dbo].[Servicios](
	[id_servicio] [int] IDENTITY(1,1) NOT NULL,
	[cantidad] [int] NOT NULL,
	[id_tipo_servicio] [int] NOT NULL,
	[fecha_creacion] [datetime] NOT NULL,
	[pagado] [float] NOT NULL,
	[id_cliente] [int] NOT NULL)

	CREATE TABLE [dbo].[Tipo_Servicios](
	[id_tipo_servicio] [int] IDENTITY(1,1) NOT NULL,
	[prenda] [nvarchar](50) NOT NULL,
	[arreglo] [nvarchar](50) NOT NULL,
	[valor] [float] NOT NULL)

	
insert into Clientes values(
'Maria puentes',
'3146744530',
getdate(),
'Activo',
'Femenina'
),(
'Sergio Buitrago',
'3146736276',
getdate(),
'Activo',
'Masculino'),(
'Samuel Buitrago',
'3246589687',
getdate(),
'Activo',
'Masculino'),(
'Deisy Noriega',
'3128569874',
getdate(),
'Activo',
'Femenino')

select * from Clientes

insert into Servicios values(
2,
1,
getdate(),
1,
1),(
1,
2,
getdate(),
2,
2),(
3,
1,
getdate(),
2,
3),(
3,
2,
getdate(),
2,
4)

SELECT * FROM Servicios

insert into Tipo_Servicios values(
'Camisa',
'Tiro',
10000),(
'Pantalon',
'Tiro Alto',
9000),(
'Camisa',
'Cortar Manga',
12000),(
'Blusa',
'Hacer',
30000)

select * from Tipo_Servicios
