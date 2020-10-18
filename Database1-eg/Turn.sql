CREATE TABLE [dbo].[Turn]
(
	[Username] nvarchar(50) NOT NULL, 
	[TurnID] datetime NOT NULL, 
	[playerChoice] nvarchar(12) NOT NULL,
	[aiChoice] nvarchar(50) NOT NULL, 
	primary key (Username, TurnID), 
	foreign key (Username) references Player
)
