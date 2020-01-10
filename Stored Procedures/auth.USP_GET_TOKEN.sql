SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Billy Arredondo
-- Create date: 27-oct-2019
-- Description:	Valida credenciales y (si es correcto) devuelve Token
-- =============================================
CREATE PROCEDURE [auth].[USP_GET_TOKEN]
	@Username	NVARCHAR(200),
	@Password	NVARCHAR(200)
AS
BEGIN
	
	SET NOCOUNT ON;

	DECLARE @IDUser NVARCHAR(200);
	DECLARE @Nickname NVARCHAR(200);
	DECLARE @RealPassword NVARCHAR(200);
	DECLARE @Result NVARCHAR(200);
	DECLARE @Minutes INT;
	DECLARE @Token VARCHAR(200) = '';

	-- (1) Valida si existe usuario
	SELECT		@IDUser = U.[IDUser],
				@Nickname = U.Nickname,
				@RealPassword = U.[Password]
	FROM		[auth].[TB_User] AS U
	WHERE		U.[Username] = @Username;

	-- (2) Valida si coincide usuario y contraseña (autenticación). Si es válido, crea Token
    IF (@RealPassword IS NULL)
	BEGIN
		SET @Result = 'Invalid User';
		SET @Nickname = '';
	END
	ELSE IF (@RealPassword <> @Password)
	BEGIN
		SET @Result = 'Invalid Password';
		SET @Nickname = '';
	END
	ELSE
	BEGIN
		SET @Result = 'OK';
		SET @Minutes = 30; -- Debe obtenerse de alguna tabla (pero será luego)
		SET @Token = CONCAT(
				REPLACE(LOWER(NEWID()), '-', ''),
				REPLACE(LOWER(NEWID()), '-', ''),
				REPLACE(LOWER(NEWID()), '-', ''),
				REPLACE(LOWER(NEWID()), '-', ''),
				REPLACE(LOWER(NEWID()), '-', ''));

		-- SET TOKEN --
		INSERT	[auth].[TB_UserToken]
			(
				[IDUser],
				[IDToken],
				[Token],
				[Expiry]
			)
		VALUES
			(
				@IDUser,
				NEWID(),
				@Token,
				DATEADD(MINUTE, @Minutes, GETDATE())
			);
	END;

	PRINT '@IDUser = ' + ISNULL(@IDUser, '(NULL)');
	PRINT '@Password = ' + @Password;
	PRINT '@RealPassword = ' + ISNULL(@RealPassword, '(NULL)');
	PRINT '@Result = ' + @Result;
	
	SELECT		@Result AS [Result],
				@Nickname AS [Nickname],
				@Token AS [Token],
				@Minutes AS [Minutes];

END
GO
