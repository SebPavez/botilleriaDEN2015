IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_Venta_Usuario]') AND parent_object_id = OBJECT_ID(N'[Venta]'))
ALTER TABLE [Venta] DROP CONSTRAINT [FK_Venta_Usuario]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Venta]') AND type in (N'U'))
BEGIN
CREATE TABLE [Venta](
	[id_venta] [int] NOT NULL,
	[fecha] [date] NOT NULL,
	[total_precio] [numeric](7, 0) NOT NULL,
	[id_usuario_fk] [int] NOT NULL,
 CONSTRAINT [PK_Venta] PRIMARY KEY CLUSTERED 
(
	[id_venta] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_Venta_Usuario]') AND parent_object_id = OBJECT_ID(N'[Venta]'))
ALTER TABLE [Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_Usuario] FOREIGN KEY([id_usuario_fk])
REFERENCES [Usuario] ([id_usuario])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_Venta_Usuario]') AND parent_object_id = OBJECT_ID(N'[Venta]'))
ALTER TABLE [Venta] CHECK CONSTRAINT [FK_Venta_Usuario]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Venta]') AND type in (N'U'))
BEGIN
CREATE TABLE [Venta](
	[id_venta] [int] NOT NULL,
	[fecha] [date] NOT NULL,
	[total_precio] [numeric](7, 0) NOT NULL,
	[id_usuario_fk] [int] NOT NULL,
 CONSTRAINT [PK_Venta] PRIMARY KEY CLUSTERED 
(
	[id_venta] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_Venta_Usuario]') AND parent_object_id = OBJECT_ID(N'[Venta]'))
ALTER TABLE [Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_Usuario] FOREIGN KEY([id_usuario_fk])
REFERENCES [Usuario] ([id_usuario])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_Venta_Usuario]') AND parent_object_id = OBJECT_ID(N'[Venta]'))
ALTER TABLE [Venta] CHECK CONSTRAINT [FK_Venta_Usuario]
GO
