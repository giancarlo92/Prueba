SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Billy Arredondo
-- Create date: 26-oct-2019
-- Description:	Lists Typologies
-- =============================================
CREATE PROCEDURE [dbo].[USP_READ_TYPOLOGIES]
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT		TP.[IDTypology] AS [IDTypology],
				TP.[Description] AS [Description]
	FROM		[TB_Typology] AS TP;

END
GO
