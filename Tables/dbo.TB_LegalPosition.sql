CREATE TABLE [dbo].[TB_LegalPosition]
(
[IDLegalPosition] [uniqueidentifier] NOT NULL CONSTRAINT [DF_TB_LegalPosition_IDLegalPosition] DEFAULT (newid()),
[Description] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TB_LegalPosition] ADD CONSTRAINT [PK_TB_LegalPosition] PRIMARY KEY CLUSTERED  ([IDLegalPosition]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [Idx_Description] ON [dbo].[TB_LegalPosition] ([Description]) ON [PRIMARY]
GO
