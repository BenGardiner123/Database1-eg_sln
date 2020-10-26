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

begin

delete from Turn


delete from Player


INSERT INTO Player(username) VALUES
('César Augusto Sandino'),
('Humberto Ortega');

INSERT INTO Turn(username, TurnID, playerChoice, aiChoice) VALUES
('César Augusto Sandino', '20200618 10:34:09 AM', 'Rock', 'Paper'),
('Humberto Ortega', '20200617 10:34:09 AM', 'Scissors', 'Paper'),
('César Augusto Sandino', '20200917 10:34:09 AM', 'Rock', 'Scissors');

end