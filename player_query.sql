

/* Query a player and identify them as a pitcher or hitter*/
Use MLB;

set @firstname = 'Shohei';
set @lastname = 'Ohtani';


CREATE TEMPORARY TABLE TempTable (playerID varchar(25), nameFirst TEXT, nameLast TEXT, years INTEGER, total_games_pitched INT, total_games INT);

INSERT INTO TempTable
select p.playerID, p.nameFirst, p.nameLast, count(a.yearID), sum(a.G_p), sum(a.G_all)
from People p
left join Appearances a
	on p.playerID=a.playerID
where nameFirst = @firstname and nameLast = @lastname
group by a.playerID;


select playerID, nameFirst, nameLast,
	case 
    when total_games_pitched/total_games > 0.9 THEN 'pitcher'
    when total_games_pitched/total_games < 0.9 and total_games_pitched > 10 THEN 'two-way'
    else 'hitter'
    END AS pos
from TempTable;



select app.PlayerID, app.lgID, app.G_all, app.GS, app.G_batting, app.G_defense, app.G_p, b.AB, b.R, b.H, b.twoB, b.threeB, b.HR, b.RBI, p.W, p.L, p.G, p.GS, p.IPouts, p.H as pitches_hit, p.ER as earned_runs, p.BB, p.SO, pr.*, br.*
from TempTable t
	inner join Appearances app
	on app.playerID = t.playerID
    left join Batting b
    on app.playerID = b.playerID and app.yearID = b.yearID
    left join Batting ba
		on app.yearID = ba.yearID
    left join Pitching p
		on app.playerID = p.playerID and app.yearID = p.yearID
    left join PitchingRank pr
		on app.playerID = pr.playerID and app.yearID = pr.yearID
	left join BattingRank br
		on app.playerID = br.playerID and app.yearID = br.yearID
    group by app.playerID, app.yearID;


DROP TABLE TempTable;
