----Formitive Assignment 1

--1. Team Name: 
-----//ER Diagram and Relational Schema separately

--2. List all the player_attributes of player id 163222. 1 mark
select * from player_attributes where id = '163222';

--3. List all the player names which have a letter X in their name. 1 mark
Select player_name from player where player_name like '%x%' or player_name like '%X%';

--4. Count the matches with more than 6 goals scored. 1 mark
select count(ID) as matches from match where (home_team_goal + away_team_goal) > 6;

--5. Count the matches with more than 6 goals scored and a draw result.
select count(ID) as matches from match where (home_team_goal + away_team_goal) > 6 and home_team_goal = away_team_goal;

--6. What is league name for each country? 1 mark
select a.name as CountryName, b.name as LeagueName
from country a join league b
on a.id = b.country_id;

--7. Count all the matches from England. Use a join, rather than manually looking up England id. 1 mark
Select count(*) from match m join country c on m.country_id = c.id
where c.name = 'England';

--8. Count all of matches from Bundesliga. Use a join, rather than manually looking up Bundesliga id. 1 mark
Select count(*) from match m join country c on m.country_id = c.id join league l on l.country_id = c.id
where l.name like '%Bundesliga%';

--9. List the match with the maximum amount of goals. 1 mark
select * from match where ( home_team_goal + away_team_goal ) = ( select max( home_team_goal + away_team_goal ) from match where match.id = id );

--10. List the matches with the maximum amount of goals per country. 1 mark
Select c.name Country, m.id Match, ( home_team_goal + away_team_goal ) MaxGoals from match m join country c on m.country_id = c.id 
where ( home_team_goal + away_team_goal ) = ( select max( home_team_goal + away_team_goal ) from match where country_id = c.id) ;

--11. List all of the players which have played in Switzerland League. 1 mark
Select p.id, player_name from player p where exists ( select * from match m join league l on l.id = m.league_id where l.name like '%Switzerland%' 
and p.player_api_id in ( m.home_player_1, m.home_player_2, m.home_player_3, m.home_player_4, m.home_player_5, m.home_player_6, m.home_player_7, m.home_player_8, m.home_player_9, m.home_player_10, m.home_player_11,
m.away_player_1, m.away_player_2, m.away_player_3, m.away_player_4, m.away_player_5, m.away_player_6, m.away_player_7, m.away_player_8, m.away_player_9, m.away_player_10, m.away_player_11 ) ) 
order by player_name ;