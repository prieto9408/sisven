USE [master]
GO
/****** Object:  Database [SISVEN]    Script Date: 23/04/2023 13:01:01 ******/
CREATE DATABASE [SISVEN]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SISVEN', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\SISVEN.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SISVEN_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\SISVEN_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [SISVEN] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SISVEN].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SISVEN] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SISVEN] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SISVEN] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SISVEN] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SISVEN] SET ARITHABORT OFF 
GO
ALTER DATABASE [SISVEN] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SISVEN] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SISVEN] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SISVEN] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SISVEN] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SISVEN] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SISVEN] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SISVEN] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SISVEN] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SISVEN] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SISVEN] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SISVEN] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SISVEN] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SISVEN] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SISVEN] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SISVEN] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SISVEN] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SISVEN] SET RECOVERY FULL 
GO
ALTER DATABASE [SISVEN] SET  MULTI_USER 
GO
ALTER DATABASE [SISVEN] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SISVEN] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SISVEN] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SISVEN] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SISVEN] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SISVEN] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [SISVEN] SET QUERY_STORE = ON
GO
ALTER DATABASE [SISVEN] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [SISVEN]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 23/04/2023 13:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[IdCategoria] [int] IDENTITY(1,1) NOT NULL,
	[NombreCategoria] [nvarchar](50) NULL,
	[Detalle] [nvarchar](100) NULL,
	[Situacion] [int] NULL,
	[FechaCreacion] [datetime] NULL,
	[UsuarioCreacion] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 23/04/2023 13:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[IdCliente] [int] NULL,
	[RUC] [nvarchar](11) NULL,
	[Estado] [int] NULL,
	[FechaCreacion] [datetime] NULL,
	[UsuarioCreacion] [nvarchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 23/04/2023 13:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[IdEmpleado] [int] NULL,
	[Cargo] [nvarchar](50) NULL,
	[OFicina] [nvarchar](100) NULL,
	[Salario] [decimal](9, 2) NULL,
	[Email] [nvarchar](20) NULL,
	[FechaCreacion] [datetime] NULL,
	[UsuarioCreacion] [nvarchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Parametros]    Script Date: 23/04/2023 13:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parametros](
	[IdParametro] [int] NULL,
	[NombreParametro] [nvarchar](20) NULL,
	[Grupo] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Persona]    Script Date: 23/04/2023 13:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persona](
	[IdPersona] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[ApellidoPaterno] [nvarchar](50) NULL,
	[ApellidoMaterno] [nvarchar](50) NULL,
	[NroDocumento] [nvarchar](8) NULL,
	[Sexo] [nvarchar](10) NULL,
	[FechaNacimiento] [date] NULL,
	[Direccion] [nvarchar](100) NULL,
	[FechaCreacion] [datetime] NULL,
	[UsuarioCreacion] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 23/04/2023 13:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[IdProducto] [int] IDENTITY(1,1) NOT NULL,
	[IdCategoria] [int] NULL,
	[NombreProducto] [nvarchar](50) NULL,
	[Detalle] [nvarchar](100) NULL,
	[Precio] [decimal](9, 2) NULL,
	[Stock] [int] NULL,
	[Situacion] [int] NULL,
	[FechaCreacion] [datetime] NULL,
	[UsuarioCreacion] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 23/04/2023 13:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[IdPersona] [int] NULL,
	[CodigoUsuario] [nvarchar](20) NULL,
	[Contrasena] [nvarchar](20) NULL,
	[FechaCreacion] [datetime] NULL,
	[UsuarioCreacion] [nvarchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 23/04/2023 13:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venta](
	[IdVenta] [int] IDENTITY(1,1) NOT NULL,
	[IdCliente] [int] NULL,
	[IdEmpleado] [int] NULL,
	[FechaVenta] [datetime] NULL,
	[NroDoc] [int] NULL,
	[TipoDoc] [int] NULL,
	[MontoTotal] [decimal](9, 2) NULL,
	[Situacion] [int] NULL,
	[FechaCreacion] [datetime] NULL,
	[UsuarioCreacion] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VentaDetalle]    Script Date: 23/04/2023 13:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VentaDetalle](
	[IdVenta] [int] NULL,
	[IdProducto] [int] NULL,
	[PrecionUnit] [decimal](9, 2) NULL,
	[Cantidad] [int] NULL,
	[UnidaMed] [nvarchar](10) NULL,
	[FechaCreacion] [datetime] NULL,
	[UsuarioCreacion] [nvarchar](20) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Persona] ON 

INSERT [dbo].[Persona] ([IdPersona], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [NroDocumento], [Sexo], [FechaNacimiento], [Direccion], [FechaCreacion], [UsuarioCreacion]) VALUES (1, N'FRANCIS', N'LOPEZ', N'PEREZ', N'05245478', N'MASCULINO', CAST(N'2000-05-25' AS Date), N'AV PARTICIPACION', CAST(N'2023-04-14T21:02:34.507' AS DateTime), N'ADMIN')
INSERT [dbo].[Persona] ([IdPersona], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [NroDocumento], [Sexo], [FechaNacimiento], [Direccion], [FechaCreacion], [UsuarioCreacion]) VALUES (2, N'JORGE', N'GARCIA', N'PEREZ', N'05454787', N'MASCULINO', CAST(N'2002-05-25' AS Date), N'CALLE SGTO LORES', CAST(N'2023-04-14T21:12:51.520' AS DateTime), N'ADMIN')
INSERT [dbo].[Persona] ([IdPersona], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [NroDocumento], [Sexo], [FechaNacimiento], [Direccion], [FechaCreacion], [UsuarioCreacion]) VALUES (3, N'LUIS', N'VALDIVIA', N'LOZANO', N'78454787', N'MASCULINO', CAST(N'2004-05-25' AS Date), N'AV PERU', CAST(N'2023-04-14T00:00:00.000' AS DateTime), N'ADMIN')
INSERT [dbo].[Persona] ([IdPersona], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [NroDocumento], [Sexo], [FechaNacimiento], [Direccion], [FechaCreacion], [UsuarioCreacion]) VALUES (4, N'PEPITO', N'VALDIVIA', N'LOZANO', N'78454787', N'MASCULINO', CAST(N'2004-05-25' AS Date), N'AV PERU', CAST(N'2023-04-14T21:35:23.323' AS DateTime), N'ADMIN')
INSERT [dbo].[Persona] ([IdPersona], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [NroDocumento], [Sexo], [FechaNacimiento], [Direccion], [FechaCreacion], [UsuarioCreacion]) VALUES (5, N'carlos', N'perez', N'lopez', N'05787478', N'masculino', CAST(N'2000-02-25' AS Date), N'av quiñomnes', CAST(N'2023-04-16T13:21:40.080' AS DateTime), N'admin')
INSERT [dbo].[Persona] ([IdPersona], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [NroDocumento], [Sexo], [FechaNacimiento], [Direccion], [FechaCreacion], [UsuarioCreacion]) VALUES (6, N'jorge', N'perez', N'gomez', N'02584878', N'Masculino', CAST(N'2023-04-18' AS Date), N'av qui', CAST(N'2023-04-18T19:29:07.923' AS DateTime), N'ADMIN')
INSERT [dbo].[Persona] ([IdPersona], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [NroDocumento], [Sexo], [FechaNacimiento], [Direccion], [FechaCreacion], [UsuarioCreacion]) VALUES (7, N'FRANCIS', N'AMARINGO', N'PEREZ', N'02457874', N'Femenino', CAST(N'2023-04-04' AS Date), N'CALLE SRTO LORES', CAST(N'2023-04-18T19:33:11.527' AS DateTime), N'ADMIN')
INSERT [dbo].[Persona] ([IdPersona], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [NroDocumento], [Sexo], [FechaNacimiento], [Direccion], [FechaCreacion], [UsuarioCreacion]) VALUES (8, N'adas', N'asdasd', N'adasda', N'0215478', N'Masculino', CAST(N'2023-04-05' AS Date), N'adadadadsd', CAST(N'2023-04-18T19:54:25.037' AS DateTime), N'ADMIN')
INSERT [dbo].[Persona] ([IdPersona], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [NroDocumento], [Sexo], [FechaNacimiento], [Direccion], [FechaCreacion], [UsuarioCreacion]) VALUES (9, N'FRANCIS', N'PEREZ', N'GARCIA', N'05457874', N'FEMENINO', CAST(N'1998-02-02' AS Date), N'CLLE COLINAS', CAST(N'2023-04-23T12:44:26.000' AS DateTime), N'ADMIN')
INSERT [dbo].[Persona] ([IdPersona], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [NroDocumento], [Sexo], [FechaNacimiento], [Direccion], [FechaCreacion], [UsuarioCreacion]) VALUES (10, N'dfsfsd', N'dfsfd', N'sdfsdf', N'0545787', N'MASCULINO', CAST(N'2023-04-22' AS Date), N'dfsdfdf', CAST(N'2023-04-23T12:47:08.133' AS DateTime), N'ADMIN')
INSERT [dbo].[Persona] ([IdPersona], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [NroDocumento], [Sexo], [FechaNacimiento], [Direccion], [FechaCreacion], [UsuarioCreacion]) VALUES (11, N'sdsds', N'sds', N'sdsdsd', N'2154578', N'FEMENINO', CAST(N'2023-04-11' AS Date), N'sdsdsd', CAST(N'2023-04-23T12:49:48.320' AS DateTime), N'ADMIN')
INSERT [dbo].[Persona] ([IdPersona], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [NroDocumento], [Sexo], [FechaNacimiento], [Direccion], [FechaCreacion], [UsuarioCreacion]) VALUES (12, N'sfddfs', N'sdfsdfs', N'sfdsdf', N'20254574', N'MASCULINO', CAST(N'2023-04-05' AS Date), N'sdfsfsdf', CAST(N'2023-04-23T12:51:45.413' AS DateTime), N'ADMIN')
INSERT [dbo].[Persona] ([IdPersona], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [NroDocumento], [Sexo], [FechaNacimiento], [Direccion], [FechaCreacion], [UsuarioCreacion]) VALUES (13, N'fddf', N'fdsdf', N'sdfsdfsdf', N'4545544', N'MASCULINO', CAST(N'2023-03-28' AS Date), N'sdfsfsd', CAST(N'2023-04-23T12:54:59.117' AS DateTime), N'ADMIN')
INSERT [dbo].[Persona] ([IdPersona], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [NroDocumento], [Sexo], [FechaNacimiento], [Direccion], [FechaCreacion], [UsuarioCreacion]) VALUES (14, N'adasdasd', N'asdasdsad', N'asdasdasd', N'45454544', N'MASCULINO', CAST(N'2023-03-28' AS Date), N'dadsad', CAST(N'2023-04-23T12:55:35.100' AS DateTime), N'ADMIN')
SET IDENTITY_INSERT [dbo].[Persona] OFF
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Persona] ([IdPersona])
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD FOREIGN KEY([IdEmpleado])
REFERENCES [dbo].[Persona] ([IdPersona])
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[Categoria] ([IdCategoria])
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD FOREIGN KEY([IdPersona])
REFERENCES [dbo].[Persona] ([IdPersona])
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Persona] ([IdPersona])
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD FOREIGN KEY([IdEmpleado])
REFERENCES [dbo].[Persona] ([IdPersona])
GO
ALTER TABLE [dbo].[VentaDetalle]  WITH CHECK ADD FOREIGN KEY([IdProducto])
REFERENCES [dbo].[Productos] ([IdProducto])
GO
ALTER TABLE [dbo].[VentaDetalle]  WITH CHECK ADD FOREIGN KEY([IdVenta])
REFERENCES [dbo].[Venta] ([IdVenta])
GO
/****** Object:  StoredProcedure [dbo].[InsertarEmpleado]    Script Date: 23/04/2023 13:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[InsertarEmpleado](
@IdEmpleado int,
@Cargo nvarchar(100),
@OFicina nvarchar(200),
@Salario decimal(9,2),
@Email nvarchar (40),
@FechaCreacion datetime,
@UsuarioCreacion nvarchar(40)
)
as
begin
Insert into Empleado(IdEmpleado,Cargo,OFicina,Salario,
email,FechaCreacion,UsuarioCreacion)
values (@IdEmpleado,@Cargo,@OFicina,@Salario,@Email,
@FechaCreacion,@UsuarioCreacion)

end
GO
/****** Object:  StoredProcedure [dbo].[InsertarPersona]    Script Date: 23/04/2023 13:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarPersona](  
@Nombre nvarchar(100),  
@ApellidoPaterno nvarchar(100),  
@ApellidoMaterno nvarchar(100),  
@NroDocumento nvarchar(16),  
@Sexo nvarchar(20),  
@FechaNacimiento date,  
@Direccion nvarchar(200),  
@FechaCreacion datetime,  
@UsuarioCreacion nvarchar(40)  
)  
AS  
BEGIN  
insert into Persona(  
Nombre,ApellidoPaterno,ApellidoMaterno,  
NroDocumento,Sexo,FechaNacimiento,Direccion,  
FechaCreacion,UsuarioCreacion  
) values (@Nombre ,@ApellidoPaterno ,@ApellidoMaterno,  
@NroDocumento,@Sexo,@FechaNacimiento,@Direccion,GETDATE(),  
@UsuarioCreacion)  

SELECT SCOPE_IDENTITY()

END
GO
/****** Object:  StoredProcedure [dbo].[ListarPersona]    Script Date: 23/04/2023 13:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ListarPersona]
as
begin
select 
	IdPersona,
	Nombre,
	ApellidoPaterno,
	ApellidoMaterno,
	NroDocumento,
	Sexo, 
	FechaNacimiento, 
	Direccion, 
	FechaCreacion,
	UsuarioCreacion 
	from 
		Persona
end
GO
USE [master]
GO
ALTER DATABASE [SISVEN] SET  READ_WRITE 
GO
