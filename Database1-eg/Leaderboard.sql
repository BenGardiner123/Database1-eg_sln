CREATE VIEW Leaderboard as 

SELECT TOP(3) played.Username as Player, (cast(wins.numwins as float)/cast(played.numplayed as float)) AS Winratio, 
played.numplayed as Turnsplayed
FROM 
(	select username, count(*) as numwins
from Turn
where
(p1Choice = 'Rock' and p2Choice = 'Scissors'
 or p1Choice = 'Scissors' and p2Choice = 'Paper'
 or p1Choice = 'Paper' and p2Choice = 'Rock')
 group by username 
 ) as wins
INNER JOIN
(	select username, count(*) as numplayed
from Turn
group by username
) as played 
on wins.username = played.username

go