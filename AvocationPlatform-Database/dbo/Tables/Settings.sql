﻿CREATE TABLE [dbo].[Settings]
(
	[Id] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY,
	[Name] VARCHAR(150) NOT NULL,
	[Value] VARCHAR(MAX) NULL,
	[UserId] UNIQUEIDENTIFIER NOT NULL,
	[RoleId] UNIQUEIDENTIFIER NOT NULL,
	[SYS_STATUS] VARCHAR(5) NOT NULL,
	[SYS_CREATE_DATE] DATETIME NOT NULL,
	[SYS_CREATE_USER_ID] VARCHAR(150) NOT NULL,
	[SYS_MODIFY_DATE] DATETIME NOT NULL,
	[SYS_MODIFY_USER_ID] VARCHAR(150) NOT NULL, 
    CONSTRAINT [FK_Settings_Users] FOREIGN KEY ([UserId]) REFERENCES [Users]([Id]), 
    CONSTRAINT [FK_Settings_Roles] FOREIGN KEY ([RoleId]) REFERENCES [Roles]([Id])
)