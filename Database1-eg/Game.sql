CREATE TABLE [dbo].[Game]
(
	[DateTimeStarted] DATETIME NOT NULL PRIMARY KEY, 
    [Username] NVARCHAR(50) NOT NULL, 
    [DateTimeFinished] DATETIME NULL, 
    [NumTurns] INT NOT NULL
    primary key (DateTimeStarted, Username)
    foreign key (Username) references Player, 
   
)
