﻿CREATE TABLE [dbo].[UserTokens]
(
	[UserId] UNIQUEIDENTIFIER NOT NULL,
	[LoginProvider] VARCHAR(128) NOT NULL,
	[Name] VARCHAR(128) NOT NULL,
	[Value] VARCHAR(MAX) NOT NULL,
    [SYS_CREATE_DATE] DATETIME  NOT NULL,
    [SYS_CREATE_USER_ID] VARCHAR(100) NOT NULL,
    [SYS_MODIFY_DATE] DATETIME  NOT NULL,
    [SYS_MODIFY_USER_ID] VARCHAR(100) NOT NULL,
    PRIMARY KEY ([UserId], [LoginProvider], [Name]),
	CONSTRAINT [FK_UserTokens_Users] FOREIGN KEY ([UserId]) REFERENCES [Users]([Id])
)