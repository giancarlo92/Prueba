CREATE TABLE [dbo].[TB_Typology]
(
[IDTypology] [uniqueidentifier] NOT NULL CONSTRAINT [DF_TB_Typology_IDTypology] DEFAULT (newid()),
[Description] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TB_Typology] ADD CONSTRAINT [PK_TB_Typology] PRIMARY KEY CLUSTERED  ([IDTypology]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [Idx_Description] ON [dbo].[TB_Typology] ([Description]) ON [PRIMARY]
GO
