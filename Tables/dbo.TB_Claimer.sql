CREATE TABLE [dbo].[TB_Claimer]
(
[IDClaimer] [uniqueidentifier] NOT NULL CONSTRAINT [DF_TB_Claimer_IDClaimer] DEFAULT (newid()),
[IDDocumentType] [uniqueidentifier] NULL,
[DocumentNumber] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Description] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CreateUser] [uniqueidentifier] NULL,
[CreateDate] [datetime] NULL,
[ModifyUser] [uniqueidentifier] NULL,
[ModifyDate] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TB_Claimer] ADD CONSTRAINT [PK_TB_Claimer] PRIMARY KEY CLUSTERED  ([IDClaimer]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [Idx_Description] ON [dbo].[TB_Claimer] ([Description]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [Idx_DocumentNumber] ON [dbo].[TB_Claimer] ([DocumentNumber]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TB_Claimer] ADD CONSTRAINT [FK_TB_Claimer_TB_DocumentType] FOREIGN KEY ([IDDocumentType]) REFERENCES [dbo].[TB_DocumentType] ([IDDocumentType])
GO
