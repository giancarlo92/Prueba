SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Billy Arredondo
-- Create date: 18-oct-2019
-- Description:	Lists Claimers
-- =============================================
CREATE PROCEDURE [dbo].[USP_READ_CLAIMERS]
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT		CM.[IDClaimer] AS [IDClaimer],
				CM.[Description] AS [Description],
				CM.[CreateUser] AS [CreateUser],
				CM.[CreateDate] AS [CreateDate],
				CM.[ModifyUser] AS [ModifyUser],
				CM.[ModifyDate] AS [ModifyDate]
	FROM		[TB_Claimer] AS CM;

END
GO
