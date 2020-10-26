CREATE VIEW Leaderboard as 

SELECT played.Username as Player, (cast(wins.numwins as float)/cast(played.numplayed as float)) AS Winratio, played.numplayed as Turnsplayed
FROM 
(	select username, count(*) as numwins
	from Turn
	where
	(playerChoice = 'Rock' and aiChoice = 'Scissors'
	 or playerChoice = 'Scissors' and aiChoice = 'Paper'
	 or playerChoice = 'Paper' and aiChoice = 'Rock')
	 group by username 
	) wins
INNER JOIN
(	select username, count(*) as numplayed
	from Turn
	group by username
) played 
on wins.username = played.username
go