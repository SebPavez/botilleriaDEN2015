IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_detalle_venta_Bebida]') AND parent_object_id = OBJECT_ID(N'[detalle_venta]'))
ALTER TABLE [detalle_venta] DROP CONSTRAINT [FK_detalle_venta_Bebida]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_detalle_venta_Venta]') AND parent_object_id = OBJECT_ID(N'[detalle_venta]'))
ALTER TABLE [detalle_venta] DROP CONSTRAINT [FK_detalle_venta_Venta]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[detalle_venta]') AND type in (N'U'))
BEGIN
CREATE TABLE [detalle_venta](
	[cantidad] [int] NOT NULL,
	[id_bebida_fk] [int] NOT NULL,
	[id_venta_fk] [int] NOT NULL
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_detalle_venta_Bebida]') AND parent_object_id = OBJECT_ID(N'[detalle_venta]'))
ALTER TABLE [detalle_venta]  WITH CHECK ADD  CONSTRAINT [FK_detalle_venta_Bebida] FOREIGN KEY([id_bebida_fk])
REFERENCES [Bebida] ([id_bebida])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_detalle_venta_Bebida]') AND parent_object_id = OBJECT_ID(N'[detalle_venta]'))
ALTER TABLE [detalle_venta] CHECK CONSTRAINT [FK_detalle_venta_Bebida]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_detalle_venta_Venta]') AND parent_object_id = OBJECT_ID(N'[detalle_venta]'))
ALTER TABLE [detalle_venta]  WITH CHECK ADD  CONSTRAINT [FK_detalle_venta_Venta] FOREIGN KEY([id_venta_fk])
REFERENCES [Venta] ([id_venta])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_detalle_venta_Venta]') AND parent_object_id = OBJECT_ID(N'[detalle_venta]'))
ALTER TABLE [detalle_venta] CHECK CONSTRAINT [FK_detalle_venta_Venta]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[detalle_venta]') AND type in (N'U'))
BEGIN
CREATE TABLE [detalle_venta](
	[cantidad] [int] NOT NULL,
	[id_bebida_fk] [int] NOT NULL,
	[id_venta_fk] [int] NOT NULL
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_detalle_venta_Bebida]') AND parent_object_id = OBJECT_ID(N'[detalle_venta]'))
ALTER TABLE [detalle_venta]  WITH CHECK ADD  CONSTRAINT [FK_detalle_venta_Bebida] FOREIGN KEY([id_bebida_fk])
REFERENCES [Bebida] ([id_bebida])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_detalle_venta_Bebida]') AND parent_object_id = OBJECT_ID(N'[detalle_venta]'))
ALTER TABLE [detalle_venta] CHECK CONSTRAINT [FK_detalle_venta_Bebida]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_detalle_venta_Venta]') AND parent_object_id = OBJECT_ID(N'[detalle_venta]'))
ALTER TABLE [detalle_venta]  WITH CHECK ADD  CONSTRAINT [FK_detalle_venta_Venta] FOREIGN KEY([id_venta_fk])
REFERENCES [Venta] ([id_venta])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_detalle_venta_Venta]') AND parent_object_id = OBJECT_ID(N'[detalle_venta]'))
ALTER TABLE [detalle_venta] CHECK CONSTRAINT [FK_detalle_venta_Venta]
GO
