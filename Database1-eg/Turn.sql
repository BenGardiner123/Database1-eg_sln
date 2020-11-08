CREATE TABLE [dbo].[Turn]
(
	[Username] nvarchar(50) NOT NULL, 
	[DateTimeStarted] DATETIME NOT NULL,
    [TurnNumber] INT NOT NULL,
    [Outcome] NVARCHAR(1) NOT NULL, 
    [p1Choice] NVARCHAR(12) NOT NULL, 
    [p2Choice] NVARCHAR(12) NOT NULL, 
    primary key (DateTimeStarted, Username,  TurnNumber, p1Choice, p2Choice),
	Foreign key (DateTimeStarted, Username) references GAME(DateTimeStarted, Username),
    Foreign key (p1Choice) references Choice(OptionName),
    Foreign key (p2Choice) references Choice(OptionName),
	CONSTRAINT [CK_Outcome_Column] CHECK (Outcome in('W', 'L', 'D')) 

)
