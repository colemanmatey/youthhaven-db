CREATE TABLE [dbo].[User]
(
	[UserID] INT NOT NULL PRIMARY KEY IDENTITY, 
    [FirstName] NVARCHAR(50) NOT NULL, 
    [LastName] NVARCHAR(50) NOT NULL, 
    [Email] NVARCHAR(255) NOT NULL, 
    [Role] NVARCHAR(50) NOT NULL, 
    CONSTRAINT [CK_User_Role] CHECK (Role IN ('admin', 'editor', 'writer', 'subscriber'))
)
