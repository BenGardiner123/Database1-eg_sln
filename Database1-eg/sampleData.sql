/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

--IF OBJECT_ID('Turn') IS NOT NULL
--DROP TABLE Turn;

--GO

--IF OBJECT_ID('Player') IS NOT NULL
--DROP TABLE Player;



--begin

--delete from Turn


--delete from Player

--insert the check game data valid here

--INSERT INTO Player(username) VALUES
--('César Augusto Sandino');


--INSERT INTO Game(DateTimeStarted, Username, NumTurns) VALUES
--('20200618 10:34:09 AM', 'César Augusto Sandino', 3);



--INSERT INTO Choice(OptionName) VALUES
--('Rock'), 
--('Paper'), 
--('Scissors'); 


--INSERT INTO Player(username) VALUES
--('César Augusto Sandino');


-- update Game 
--set ('20200618 10:34:09 AM', 'César Augusto Sandino', 3);


INSERT INTO Turn(DateTimeStarted, TurnNumber, Username, Outcome, p1Choice, p2Choice) VALUES
('20200618 10:34:09 AM','1', 'César Augusto Sandino','L', 'Rock', 'Paper');



--end