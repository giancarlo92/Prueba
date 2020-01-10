CREATE TABLE [auth].[TB_Profile]
(
[IDProfile] [uniqueidentifier] NOT NULL CONSTRAINT [DF_TB_Profile_IDProfile] DEFAULT (newid()),
[Description] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [auth].[TB_Profile] ADD CONSTRAINT [PK__TB_Profi__0968DE39AA7625A5] PRIMARY KEY NONCLUSTERED  ([IDProfile]) ON [PRIMARY]
GO
