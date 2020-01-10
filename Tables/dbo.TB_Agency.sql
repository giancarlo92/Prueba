CREATE TABLE [dbo].[TB_Agency]
(
[IDAgency] [uniqueidentifier] NOT NULL CONSTRAINT [DF_TB_Agency_IDAgency] DEFAULT (newid()),
[Description] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TB_Agency] ADD CONSTRAINT [PK_TB_Agency] PRIMARY KEY CLUSTERED  ([IDAgency]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [Idx_Description] ON [dbo].[TB_Agency] ([Description]) ON [PRIMARY]
GO
