﻿CREATE PROCEDURE USP_CHECK_DOCUMENT
	@Document CHAR(11)
AS
	SELECT CASE WHEN EXISTS (
		SELECT [Id]
		FROM [User]
		WHERE [Document] = @Document
	)
	THEN CAST(1 AS BIT)
	ELSE CAST(0 AS BIT) END
