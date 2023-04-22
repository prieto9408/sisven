USE [SISVEN]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 22/04/2023 17:49:55 ******/
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
/****** Object:  Table [dbo].[Cliente]    Script Date: 22/04/2023 17:49:55 ******/
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
/****** Object:  Table [dbo].[Empleado]    Script Date: 22/04/2023 17:49:55 ******/
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
/****** Object:  Table [dbo].[Parametros]    Script Date: 22/04/2023 17:49:55 ******/
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
/****** Object:  Table [dbo].[Persona]    Script Date: 22/04/2023 17:49:55 ******/
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
/****** Object:  Table [dbo].[Productos]    Script Date: 22/04/2023 17:49:55 ******/
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
/****** Object:  Table [dbo].[Usuario]    Script Date: 22/04/2023 17:49:55 ******/
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
/****** Object:  Table [dbo].[Venta]    Script Date: 22/04/2023 17:49:55 ******/
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
/****** Object:  Table [dbo].[VentaDetalle]    Script Date: 22/04/2023 17:49:55 ******/
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
/****** Object:  StoredProcedure [dbo].[InsertarPersona]    Script Date: 22/04/2023 17:49:55 ******/
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
END
GO
/****** Object:  StoredProcedure [dbo].[ListarPersona]    Script Date: 22/04/2023 17:49:55 ******/
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
