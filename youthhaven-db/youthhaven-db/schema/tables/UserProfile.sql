CREATE TABLE [dbo].[UserProfile]
(
	[ProfileID] INT NOT NULL PRIMARY KEY IDENTITY, 
    [UserID] INT NOT NULL, 
    [FirstName] NVARCHAR(50) NOT NULL, 
    [MiddleName] NVARCHAR(50) NULL, 
    [LastName] NVARCHAR(50) NOT NULL, 
    [DateOfBirth] DATE NOT NULL,
    [Biography] NVARCHAR(300) NULL, 
    [CountryCode] NCHAR(5) NOT NULL, 
    [Phone] NCHAR(10) NOT NULL, 
    CONSTRAINT [FK_UserProfile_User] FOREIGN KEY ([UserID]) REFERENCES [User]([UserID]),
    CONSTRAINT [UQ_UserProfile_UserID] UNIQUE (UserID)
)
