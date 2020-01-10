SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Billy Arredondo
-- Create date: 18-oct-2019
-- Description:	Lists Cities
-- =============================================
CREATE PROCEDURE [dbo].[USP_READ_CITIES]
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT		CT.[IDCity] AS [IDCity],
				CT.[Description] AS [Description]
	FROM		[TB_City] AS CT;

END
GO
