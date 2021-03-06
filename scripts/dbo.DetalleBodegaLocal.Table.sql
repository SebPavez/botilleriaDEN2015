IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_DetalleBodegaLocal_Bebida]') AND parent_object_id = OBJECT_ID(N'[DetalleBodegaLocal]'))
ALTER TABLE [DetalleBodegaLocal] DROP CONSTRAINT [FK_DetalleBodegaLocal_Bebida]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_DetalleBodegaLocal_Bodega]') AND parent_object_id = OBJECT_ID(N'[DetalleBodegaLocal]'))
ALTER TABLE [DetalleBodegaLocal] DROP CONSTRAINT [FK_DetalleBodegaLocal_Bodega]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[DetalleBodegaLocal]') AND type in (N'U'))
BEGIN
CREATE TABLE [DetalleBodegaLocal](
	[id_bodega_fk] [int] NOT NULL,
	[id_bebida_fk] [int] NOT NULL,
	[cantidad] [int] NOT NULL
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_DetalleBodegaLocal_Bebida]') AND parent_object_id = OBJECT_ID(N'[DetalleBodegaLocal]'))
ALTER TABLE [DetalleBodegaLocal]  WITH CHECK ADD  CONSTRAINT [FK_DetalleBodegaLocal_Bebida] FOREIGN KEY([id_bebida_fk])
REFERENCES [Bebida] ([id_bebida])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_DetalleBodegaLocal_Bebida]') AND parent_object_id = OBJECT_ID(N'[DetalleBodegaLocal]'))
ALTER TABLE [DetalleBodegaLocal] CHECK CONSTRAINT [FK_DetalleBodegaLocal_Bebida]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_DetalleBodegaLocal_Bodega]') AND parent_object_id = OBJECT_ID(N'[DetalleBodegaLocal]'))
ALTER TABLE [DetalleBodegaLocal]  WITH CHECK ADD  CONSTRAINT [FK_DetalleBodegaLocal_Bodega] FOREIGN KEY([id_bodega_fk])
REFERENCES [Bodega] ([id_bodega])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_DetalleBodegaLocal_Bodega]') AND parent_object_id = OBJECT_ID(N'[DetalleBodegaLocal]'))
ALTER TABLE [DetalleBodegaLocal] CHECK CONSTRAINT [FK_DetalleBodegaLocal_Bodega]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[DetalleBodegaLocal]') AND type in (N'U'))
BEGIN
CREATE TABLE [DetalleBodegaLocal](
	[id_bodega_fk] [int] NOT NULL,
	[id_bebida_fk] [int] NOT NULL,
	[cantidad] [int] NOT NULL
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_DetalleBodegaLocal_Bebida]') AND parent_object_id = OBJECT_ID(N'[DetalleBodegaLocal]'))
ALTER TABLE [DetalleBodegaLocal]  WITH CHECK ADD  CONSTRAINT [FK_DetalleBodegaLocal_Bebida] FOREIGN KEY([id_bebida_fk])
REFERENCES [Bebida] ([id_bebida])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_DetalleBodegaLocal_Bebida]') AND parent_object_id = OBJECT_ID(N'[DetalleBodegaLocal]'))
ALTER TABLE [DetalleBodegaLocal] CHECK CONSTRAINT [FK_DetalleBodegaLocal_Bebida]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_DetalleBodegaLocal_Bodega]') AND parent_object_id = OBJECT_ID(N'[DetalleBodegaLocal]'))
ALTER TABLE [DetalleBodegaLocal]  WITH CHECK ADD  CONSTRAINT [FK_DetalleBodegaLocal_Bodega] FOREIGN KEY([id_bodega_fk])
REFERENCES [Bodega] ([id_bodega])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_DetalleBodegaLocal_Bodega]') AND parent_object_id = OBJECT_ID(N'[DetalleBodegaLocal]'))
ALTER TABLE [DetalleBodegaLocal] CHECK CONSTRAINT [FK_DetalleBodegaLocal_Bodega]
GO
