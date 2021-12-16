﻿CREATE TABLE [dbo].[Users]
(
	[Id] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY,
	[Username] VARCHAR(100) NOT NULL,
	[NormalizedUsername] VARCHAR(100) NOT NULL,
	[PreferredName] VARCHAR(256) NOT NULL,
	[Email] VARCHAR(256) NOT NULL,
	[NormalizedEmail] VARCHAR(256) NOT NULL,
	[EmailConfirmed] BIT NOT NULL,
	[PasswordHash] VARCHAR(MAX) NOT NULL,
	[SecurityStamp] VARCHAR(MAX) NOT NULL,
	[ConcurrencyStamp] VARCHAR(MAX) NOT NULL,
	[LockoutEnabled] BIT NOT NULL,
	[LockoutEnd] DATETIMEOFFSET NULL,
	[AccessFailedCount] INT NOT NULL,
    [SYS_STATUS] VARCHAR(5) NOT NULL,
    [SYS_CREATE_DATE] DATETIME  NOT NULL,
    [SYS_CREATE_USER_ID] VARCHAR(100) NOT NULL,
    [SYS_MODIFY_DATE] DATETIME  NOT NULL,
    [SYS_MODIFY_USER_ID] VARCHAR(100) NOT NULL
)