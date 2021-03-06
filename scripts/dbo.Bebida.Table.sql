IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_Bebida_MarcaBebida]') AND parent_object_id = OBJECT_ID(N'[Bebida]'))
ALTER TABLE [Bebida] DROP CONSTRAINT [FK_Bebida_MarcaBebida]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_Bebida_TipoBebida]') AND parent_object_id = OBJECT_ID(N'[Bebida]'))
ALTER TABLE [Bebida] DROP CONSTRAINT [FK_Bebida_TipoBebida]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Bebida]') AND type in (N'U'))
BEGIN
CREATE TABLE [Bebida](
	[id_bebida] [int] NOT NULL,
	[nombre_producto] [char](15) NOT NULL,
	[precio] [real] NOT NULL,
	[tipo] [int] NOT NULL,
	[grados_alcohol] [real] NOT NULL,
	[volumen_litros] [real] NOT NULL,
	[es_retornable] [bit] NOT NULL,
	[comentario] [nvarchar](100) NOT NULL,
	[marca] [int] NOT NULL,
 CONSTRAINT [PK_Bebida] PRIMARY KEY CLUSTERED 
(
	[id_bebida] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_Bebida_MarcaBebida]') AND parent_object_id = OBJECT_ID(N'[Bebida]'))
ALTER TABLE [Bebida]  WITH CHECK ADD  CONSTRAINT [FK_Bebida_MarcaBebida] FOREIGN KEY([marca])
REFERENCES [MarcaBebida] ([id_marca])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_Bebida_MarcaBebida]') AND parent_object_id = OBJECT_ID(N'[Bebida]'))
ALTER TABLE [Bebida] CHECK CONSTRAINT [FK_Bebida_MarcaBebida]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_Bebida_TipoBebida]') AND parent_object_id = OBJECT_ID(N'[Bebida]'))
ALTER TABLE [Bebida]  WITH CHECK ADD  CONSTRAINT [FK_Bebida_TipoBebida] FOREIGN KEY([tipo])
REFERENCES [TipoBebida] ([id_tipo])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_Bebida_TipoBebida]') AND parent_object_id = OBJECT_ID(N'[Bebida]'))
ALTER TABLE [Bebida] CHECK CONSTRAINT [FK_Bebida_TipoBebida]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Bebida]') AND type in (N'U'))
BEGIN
CREATE TABLE [Bebida](
	[id_bebida] [int] NOT NULL,
	[nombre_producto] [char](15) NOT NULL,
	[precio] [real] NOT NULL,
	[tipo] [int] NOT NULL,
	[grados_alcohol] [real] NOT NULL,
	[volumen_litros] [real] NOT NULL,
	[es_retornable] [bit] NOT NULL,
	[comentario] [nvarchar](100) NOT NULL,
	[marca] [int] NOT NULL,
 CONSTRAINT [PK_Bebida] PRIMARY KEY CLUSTERED 
(
	[id_bebida] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_Bebida_MarcaBebida]') AND parent_object_id = OBJECT_ID(N'[Bebida]'))
ALTER TABLE [Bebida]  WITH CHECK ADD  CONSTRAINT [FK_Bebida_MarcaBebida] FOREIGN KEY([marca])
REFERENCES [MarcaBebida] ([id_marca])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_Bebida_MarcaBebida]') AND parent_object_id = OBJECT_ID(N'[Bebida]'))
ALTER TABLE [Bebida] CHECK CONSTRAINT [FK_Bebida_MarcaBebida]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_Bebida_TipoBebida]') AND parent_object_id = OBJECT_ID(N'[Bebida]'))
ALTER TABLE [Bebida]  WITH CHECK ADD  CONSTRAINT [FK_Bebida_TipoBebida] FOREIGN KEY([tipo])
REFERENCES [TipoBebida] ([id_tipo])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_Bebida_TipoBebida]') AND parent_object_id = OBJECT_ID(N'[Bebida]'))
ALTER TABLE [Bebida] CHECK CONSTRAINT [FK_Bebida_TipoBebida]
GO
