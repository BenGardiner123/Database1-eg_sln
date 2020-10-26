CREATE TABLE [dbo].[Turn]
(
	[username] nvarchar(50) NOT NULL, 
	[TurnID] datetime NOT NULL, 
	[playerChoice] nvarchar(12) NOT NULL,
	[aiChoice] nvarchar(50) NOT NULL, 
	primary key (username, TurnID), 
	foreign key (username) references Player, 
    CONSTRAINT [CK_playerChoice_Column] CHECK (playerChoice in('Rock', 'Paper', 'Scissors')), 
	CONSTRAINT [CK_aiChoice_Column] CHECK (aiChoice in('Rock', 'Paper', 'Scissors')) 
)
