﻿CREATE TABLE [dbo].[Roles]
(
	[Id] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY,
	[Name] VARCHAR(150) NOT NULL,
	[Description] VARCHAR(300) NULL,
	[SYS_STATUS] VARCHAR(5) NOT NULL,
	[SYS_CREATE_DATE] DATETIME NOT NULL,
	[SYS_CREATE_USER_ID] VARCHAR(150) NOT NULL,
	[SYS_MODIFY_DATE] DATETIME NOT NULL,
	[SYS_MODIFY_USER_ID] VARCHAR(150) NOT NULL
)