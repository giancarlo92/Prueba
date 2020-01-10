CREATE TABLE [dbo].[TB_Claim]
(
[IDClaim] [uniqueidentifier] NOT NULL CONSTRAINT [DF__TB_Claim__IDClai__45F365D3] DEFAULT (newid()),
[IDLawFirm] [uniqueidentifier] NULL,
[FileNumber] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NotifyDate] [datetime] NULL,
[DueDate] [datetime] NULL,
[IDAgency] [uniqueidentifier] NULL,
[ReceptionDate] [datetime] NULL,
[IDCity] [uniqueidentifier] NULL,
[IDProcessType] [uniqueidentifier] NULL,
[IDClaimer] [uniqueidentifier] NULL,
[IDTypology] [uniqueidentifier] NULL,
[IDLegalPosition] [uniqueidentifier] NULL,
[CreateUser] [uniqueidentifier] NULL,
[CreateDate] [datetime] NULL,
[ModifyUser] [uniqueidentifier] NULL,
[ModifyDate] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TB_Claim] ADD CONSTRAINT [PK_TB_Claim] PRIMARY KEY CLUSTERED  ([IDClaim]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [Idx_FileNumber] ON [dbo].[TB_Claim] ([FileNumber]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TB_Claim] ADD CONSTRAINT [FK_TB_Claim_TB_Agency] FOREIGN KEY ([IDAgency]) REFERENCES [dbo].[TB_Agency] ([IDAgency])
GO
ALTER TABLE [dbo].[TB_Claim] ADD CONSTRAINT [FK_TB_Claim_TB_City] FOREIGN KEY ([IDCity]) REFERENCES [dbo].[TB_City] ([IDCity])
GO
ALTER TABLE [dbo].[TB_Claim] ADD CONSTRAINT [FK_TB_Claim_TB_Claimer] FOREIGN KEY ([IDClaimer]) REFERENCES [dbo].[TB_Claimer] ([IDClaimer])
GO
ALTER TABLE [dbo].[TB_Claim] ADD CONSTRAINT [FK_TB_Claim_TB_LawFirm] FOREIGN KEY ([IDLawFirm]) REFERENCES [dbo].[TB_LawFirm] ([IDLawFirm])
GO
ALTER TABLE [dbo].[TB_Claim] ADD CONSTRAINT [FK_TB_Claim_TB_LegalPosition] FOREIGN KEY ([IDLegalPosition]) REFERENCES [dbo].[TB_LegalPosition] ([IDLegalPosition])
GO
ALTER TABLE [dbo].[TB_Claim] ADD CONSTRAINT [FK_TB_Claim_TB_ProcessType] FOREIGN KEY ([IDProcessType]) REFERENCES [dbo].[TB_ProcessType] ([IDProcessType])
GO
ALTER TABLE [dbo].[TB_Claim] ADD CONSTRAINT [FK_TB_Claim_TB_Typology] FOREIGN KEY ([IDTypology]) REFERENCES [dbo].[TB_Typology] ([IDTypology])
GO
