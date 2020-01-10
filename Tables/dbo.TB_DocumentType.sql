CREATE TABLE [dbo].[TB_DocumentType]
(
[IDDocumentType] [uniqueidentifier] NOT NULL CONSTRAINT [DF_TB_DocumentType_IDAgency] DEFAULT (newid()),
[Description] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TB_DocumentType] ADD CONSTRAINT [PK_TB_DocumentType] PRIMARY KEY CLUSTERED  ([IDDocumentType]) ON [PRIMARY]
GO
