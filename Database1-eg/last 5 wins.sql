CREATE FUNCTION last5wins()
RETURNS TABLE
AS	
Return
    SELECT top(5)
        Turn.Outcome
    FROM
        Turn
    group by Turn.Username
    order by turn.DateTimeStarted DESC
        
GO
