-- this view is only ran once on the instance of a database
-- it automatically creates the weekly views by designed

Use eplanalytics  --SoccerAnalysis

--drop view if exists _PlayerPerformanceRecentPBI 
go
alter view _PlayerPerformanceRecentPBI AS
SELECT *
FROM _PlayerPerformanceRecent
WHERE "Round" = (SELECT 'MW_' + CAST(MAX(CAST(SUBSTRING("Round", CHARINDEX('_', "Round") + 1, LEN("Round") - CHARINDEX('_', "Round")) AS INT)) AS VARCHAR(10)) FROM _PlayerPerformanceRecent WHERE "Season" = '2024/2025')
AND "Season" = '2024/2025'


--drop view if exists _PlayerPerformanceRecentGranPBI
go
alter view _PlayerPerformanceRecentGranPBI as
select * from _PlayerPerformanceRecentGran
WHERE "Round" = (SELECT 'MW_' + CAST(MAX(CAST(SUBSTRING("Round", CHARINDEX('_', "Round") + 1, LEN("Round") - CHARINDEX('_', "Round")) AS INT)) AS VARCHAR(10)) FROM _PlayerPerformanceRecent WHERE "Season" = '2024/2025')
AND "Season" = '2024/2025'

--drop view if exists _StandtablePBI
go
--create[replace] view _StandtablePBI as
alter view _StandtablePBI as
select * from _Standtable
WHERE "Round" = (SELECT 'MW_' + CAST(MAX(CAST(SUBSTRING("Round", CHARINDEX('_', "Round") + 1, LEN("Round") - CHARINDEX('_', "Round")) AS INT)) AS VARCHAR(10)) FROM _PlayerPerformanceRecent WHERE "Season" = '2024/2025')
AND "Season" = '2024/2025'


--drop view if exists FixturesStatPBI
go
alter view FixturesStatPBI as
select * from FixturesStat
WHERE "Round" = (SELECT 'MW_' + CAST(MAX(CAST(SUBSTRING("Round", CHARINDEX('_', "Round") + 1, LEN("Round") - CHARINDEX('_', "Round")) AS INT)) AS VARCHAR(10)) FROM _PlayerPerformanceRecent WHERE "Season" = '2024/2025')
AND "Season" = '2024/2025'




--drop view if exists Next7FixturesPBI
go
alter view Next7FixturesPBI as
select * from Next7Fixtures
WHERE "Round" = (SELECT 'MW_' + CAST(MAX(CAST(SUBSTRING("Round", CHARINDEX('_', "Round") + 1, LEN("Round") - CHARINDEX('_', "Round")) AS INT)) AS VARCHAR(10)) FROM _PlayerPerformanceRecent WHERE "Season" = '2024/2025')
AND "Season" = '2024/2025'

--drop view if exists NextweekFixturesPBI
go
alter view NextweekFixturesPBI as
select * from NextweekFixtures
WHERE "Round" = (SELECT 'MW_' + CAST(MAX(CAST(SUBSTRING("Round", CHARINDEX('_', "Round") + 1, LEN("Round") - CHARINDEX('_', "Round")) AS INT)) AS VARCHAR(10)) FROM _PlayerPerformanceRecent WHERE "Season" = '2024/2025')
AND "Season" = '2024/2025'


--drop view if exists PlayerAdvancedGoalkeepingStatPBI
go
alter view PlayerAdvancedGoalkeepingStatPBI as
select * from PlayerAdvancedGoalkeepingStat
WHERE "Round" = (SELECT 'MW_' + CAST(MAX(CAST(SUBSTRING("Round", CHARINDEX('_', "Round") + 1, LEN("Round") - CHARINDEX('_', "Round")) AS INT)) AS VARCHAR(10)) FROM _PlayerPerformanceRecent WHERE "Season" = '2024/2025')
AND "Season" = '2024/2025'

--drop view if exists PlayerChancesStatPBI
go
alter view PlayerChancesStatPBI as
select * from PlayerChancesStat
WHERE "Round" = (SELECT 'MW_' + CAST(MAX(CAST(SUBSTRING("Round", CHARINDEX('_', "Round") + 1, LEN("Round") - CHARINDEX('_', "Round")) AS INT)) AS VARCHAR(10)) FROM _PlayerPerformanceRecent WHERE "Season" = '2024/2025')
AND "Season" = '2024/2025'

--drop view if exists PlayerDefensiveactionStatPBI
go
alter view PlayerDefensiveactionStatPBI as
select * from PlayerDefensiveactionStat
WHERE "Round" = (SELECT 'MW_' + CAST(MAX(CAST(SUBSTRING("Round", CHARINDEX('_', "Round") + 1, LEN("Round") - CHARINDEX('_', "Round")) AS INT)) AS VARCHAR(10)) FROM _PlayerPerformanceRecent WHERE "Season" = '2024/2025')
AND "Season" = '2024/2025'


--drop view if exists PlayerGoalkeepingStatPBI
go
alter view PlayerGoalkeepingStatPBI as
select * from PlayerGoalkeepingStat
WHERE "Round" = (SELECT 'MW_' + CAST(MAX(CAST(SUBSTRING("Round", CHARINDEX('_', "Round") + 1, LEN("Round") - CHARINDEX('_', "Round")) AS INT)) AS VARCHAR(10)) FROM _PlayerPerformanceRecent WHERE "Season" = '2024/2025')
AND "Season" = '2024/2025'

--drop view if exists PlayerMiscellaneousStatPBI
go
alter view PlayerMiscellaneousStatPBI as
select * from PlayerMiscellaneousStat
WHERE "Round" = (SELECT 'MW_' + CAST(MAX(CAST(SUBSTRING("Round", CHARINDEX('_', "Round") + 1, LEN("Round") - CHARINDEX('_', "Round")) AS INT)) AS VARCHAR(10)) FROM _PlayerPerformanceRecent WHERE "Season" = '2024/2025')
AND "Season" = '2024/2025'

--drop view if exists PlayerPassingStatPBI
go
alter view PlayerPassingStatPBI as
select * from PlayerPassingStat
WHERE "Round" = (SELECT 'MW_' + CAST(MAX(CAST(SUBSTRING("Round", CHARINDEX('_', "Round") + 1, LEN("Round") - CHARINDEX('_', "Round")) AS INT)) AS VARCHAR(10)) FROM _PlayerPerformanceRecent WHERE "Season" = '2024/2025')
AND "Season" = '2024/2025'

--drop view if exists PlayerPasstypeStatPBI
go
alter view PlayerPasstypeStatPBI as
select * from PlayerPasstypeStat
WHERE "Round" = (SELECT 'MW_' + CAST(MAX(CAST(SUBSTRING("Round", CHARINDEX('_', "Round") + 1, LEN("Round") - CHARINDEX('_', "Round")) AS INT)) AS VARCHAR(10)) FROM _PlayerPerformanceRecent WHERE "Season" = '2024/2025')
AND "Season" = '2024/2025'

--drop view if exists PlayerPlayingtimeStatPBI
go
alter view PlayerPlayingtimeStatPBI as
select * from PlayerPlayingtimeStat
WHERE "Round" = (SELECT 'MW_' + CAST(MAX(CAST(SUBSTRING("Round", CHARINDEX('_', "Round") + 1, LEN("Round") - CHARINDEX('_', "Round")) AS INT)) AS VARCHAR(10)) FROM _PlayerPerformanceRecent WHERE "Season" = '2024/2025')
AND "Season" = '2024/2025'

--drop view if exists PlayerPossessionStatPBI
go
alter view PlayerPossessionStatPBI as
select * from PlayerPossessionStat
WHERE "Round" = (SELECT 'MW_' + CAST(MAX(CAST(SUBSTRING("Round", CHARINDEX('_', "Round") + 1, LEN("Round") - CHARINDEX('_', "Round")) AS INT)) AS VARCHAR(10)) FROM _PlayerPerformanceRecent WHERE "Season" = '2024/2025')
AND "Season" = '2024/2025'

--drop view if exists PlayerShootingStatPBI
go
alter view PlayerShootingStatPBI as
select * from PlayerShootingStat
WHERE "Round" = (SELECT 'MW_' + CAST(MAX(CAST(SUBSTRING("Round", CHARINDEX('_', "Round") + 1, LEN("Round") - CHARINDEX('_', "Round")) AS INT)) AS VARCHAR(10)) FROM _PlayerPerformanceRecent WHERE "Season" = '2024/2025')
AND "Season" = '2024/2025'

--drop view if exists PlayerStandardStatPBI
go
alter view PlayerStandardStatPBI as
select * from PlayerStandardStat
WHERE "Round" = (SELECT 'MW_' + CAST(MAX(CAST(SUBSTRING("Round", CHARINDEX('_', "Round") + 1, LEN("Round") - CHARINDEX('_', "Round")) AS INT)) AS VARCHAR(10)) FROM _PlayerPerformanceRecent WHERE "Season" = '2024/2025')
AND "Season" = '2024/2025'


--drop view if exists SquadAdvancedGoalkeepingStatPBI
go
alter view SquadAdvancedGoalkeepingStatPBI as
select * from SquadAdvancedGoalkeepingStat
WHERE "Round" = (SELECT 'MW_' + CAST(MAX(CAST(SUBSTRING("Round", CHARINDEX('_', "Round") + 1, LEN("Round") - CHARINDEX('_', "Round")) AS INT)) AS VARCHAR(10)) FROM _PlayerPerformanceRecent WHERE "Season" = '2024/2025')
AND "Season" = '2024/2025'

--drop view if exists SquadChancesStatPBI
go
alter view SquadChancesStatPBI as
select * from SquadChancesStat
WHERE "Round" = (SELECT 'MW_' + CAST(MAX(CAST(SUBSTRING("Round", CHARINDEX('_', "Round") + 1, LEN("Round") - CHARINDEX('_', "Round")) AS INT)) AS VARCHAR(10)) FROM _PlayerPerformanceRecent WHERE "Season" = '2024/2025')
AND "Season" = '2024/2025'



--drop view if exists SquadDefensiveactionStatPBI
go
alter view SquadDefensiveactionStatPBI as
select * from SquadDefensiveactionStat
WHERE "Round" = (SELECT 'MW_' + CAST(MAX(CAST(SUBSTRING("Round", CHARINDEX('_', "Round") + 1, LEN("Round") - CHARINDEX('_', "Round")) AS INT)) AS VARCHAR(10)) FROM _PlayerPerformanceRecent WHERE "Season" = '2024/2025')
AND "Season" = '2024/2025'


--drop view if exists SquadGoalkeepingStatPBI
go
alter view SquadGoalkeepingStatPBI as
select * from SquadGoalkeepingStat
WHERE "Round" = (SELECT 'MW_' + CAST(MAX(CAST(SUBSTRING("Round", CHARINDEX('_', "Round") + 1, LEN("Round") - CHARINDEX('_', "Round")) AS INT)) AS VARCHAR(10)) FROM _PlayerPerformanceRecent WHERE "Season" = '2024/2025')
AND "Season" = '2024/2025'
--drop view if exists SquadMiscellaneousStatPBI
go
alter view SquadMiscellaneousStatPBI as
select * from SquadMiscellaneousStat
WHERE "Round" = (SELECT 'MW_' + CAST(MAX(CAST(SUBSTRING("Round", CHARINDEX('_', "Round") + 1, LEN("Round") - CHARINDEX('_', "Round")) AS INT)) AS VARCHAR(10)) FROM _PlayerPerformanceRecent WHERE "Season" = '2024/2025')
AND "Season" = '2024/2025'

--drop view if exists SquadPassingStatPBI
go
alter view SquadPassingStatPBI as
select * from SquadPassingStat
WHERE "Round" = (SELECT 'MW_' + CAST(MAX(CAST(SUBSTRING("Round", CHARINDEX('_', "Round") + 1, LEN("Round") - CHARINDEX('_', "Round")) AS INT)) AS VARCHAR(10)) FROM _PlayerPerformanceRecent WHERE "Season" = '2024/2025')
AND "Season" = '2024/2025'
AND "Season" = '2024/2025'

--drop view if exists SquadPasstypeStatPBI
go
alter view SquadPasstypeStatPBI as
select * from SquadPasstypeStat
WHERE "Round" = (SELECT 'MW_' + CAST(MAX(CAST(SUBSTRING("Round", CHARINDEX('_', "Round") + 1, LEN("Round") - CHARINDEX('_', "Round")) AS INT)) AS VARCHAR(10)) FROM _PlayerPerformanceRecent WHERE "Season" = '2024/2025')
AND "Season" = '2024/2025'

--drop view if exists SquadPlayingtimeStatPBI
go
alter view SquadPlayingtimeStatPBI as
select * from SquadPlayingtimeStat
WHERE "Round" = (SELECT 'MW_' + CAST(MAX(CAST(SUBSTRING("Round", CHARINDEX('_', "Round") + 1, LEN("Round") - CHARINDEX('_', "Round")) AS INT)) AS VARCHAR(10)) FROM _PlayerPerformanceRecent WHERE "Season" = '2024/2025')
AND "Season" = '2024/2025'

--drop view if exists SquadPossessionStatPBI
go
alter view SquadPossessionStatPBI as
select * from SquadPossessionStat
WHERE "Round" = (SELECT 'MW_' + CAST(MAX(CAST(SUBSTRING("Round", CHARINDEX('_', "Round") + 1, LEN("Round") - CHARINDEX('_', "Round")) AS INT)) AS VARCHAR(10)) FROM _PlayerPerformanceRecent WHERE "Season" = '2024/2025')
AND "Season" = '2024/2025'

--drop view if exists SquadShootingStatPBI
go
alter view SquadShootingStatPBI as
select * from SquadShootingStat
WHERE "Round" = (SELECT 'MW_' + CAST(MAX(CAST(SUBSTRING("Round", CHARINDEX('_', "Round") + 1, LEN("Round") - CHARINDEX('_', "Round")) AS INT)) AS VARCHAR(10)) FROM _PlayerPerformanceRecent WHERE "Season" = '2024/2025')
AND "Season" = '2024/2025'

--drop view if exists SquadStandardStatPBI
go
alter view SquadStandardStatPBI as
select * from SquadStandardStat
WHERE "Round" = (SELECT 'MW_' + CAST(MAX(CAST(SUBSTRING("Round", CHARINDEX('_', "Round") + 1, LEN("Round") - CHARINDEX('_', "Round")) AS INT)) AS VARCHAR(10)) FROM _PlayerPerformanceRecent WHERE "Season" = '2024/2025')
AND "Season" = '2024/2025'
