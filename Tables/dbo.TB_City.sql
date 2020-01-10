CREATE TABLE [dbo].[TB_City]
(
[IDCity] [uniqueidentifier] NOT NULL CONSTRAINT [DF_TB_City_IDCity] DEFAULT (newid()),
[Description] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CityCode] [nvarchar] (50) COLLATE Modern_Spanish_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TB_City] ADD CONSTRAINT [PK_TB_City] PRIMARY KEY CLUSTERED  ([IDCity]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [Idx_Description] ON [dbo].[TB_City] ([Description]) ON [PRIMARY]
GO
