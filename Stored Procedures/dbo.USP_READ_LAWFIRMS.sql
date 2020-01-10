SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Billy Arredondo
-- Create date: 18-oct-2019
-- Description:	Lists Law Firms
-- =============================================
CREATE PROCEDURE [dbo].[USP_READ_LAWFIRMS]
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT		LF.[IDLawFirm] AS [IDLawFirm],
				LF.[Description] AS [Description]
	FROM		[TB_LawFirm] AS LF;

END
GO
