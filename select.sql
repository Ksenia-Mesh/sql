select album_name, year_of_issue from Album
where year_of_issue = 2018;

select track_name, duration from Track
ORDER BY duration desc
limit 1;

select track_name from Track
where duration >= 185;

select compilation_name from Compilation
where year_of_issue between 2018 and 2020;

select executor_name from Executor
where executor_name not like '%% %%';

select track_name from Track
where track_name iLIKE '%%my%';
