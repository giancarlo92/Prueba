SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Billy Arredondo
-- Create date: 18-oct-2019
-- Description:	Lists Document Types
-- =============================================
CREATE PROCEDURE [dbo].[USP_READ_DOCUMENTTYPES]
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT		DT.[IDDocumentType] AS [IDDocumentType],
				DT.[Description] AS [Description]
	FROM		[TB_DocumentType] AS DT;

END
GO
