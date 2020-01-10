SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Billy Arredondo
-- Create date: 18-oct-2019
-- Description:	Lists Legal Position
-- =============================================
CREATE PROCEDURE [dbo].[USP_READ_LEGALPOSITIONS]
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT		LP.[IDLegalPosition] AS [IDLegalPosition],
				LP.[Description] AS [Description]
	FROM		[TB_LegalPosition] AS LP;

END
GO
