--���������� ������������ � ������ �����;
select g.genre_name, count(e.executor_name) from genre g
left join executorgenre eg on g.id = eg.genre_id
left join executor e on eg.executor_id = e.id
group by g.genre_name
order by count(e.id) desc;


--���������� ������, �������� � ������� 2019-2020 �����;
select t.track_name, a.year_of_issue from album a
left join track t on t.album1_id = a.id
where (a.year_of_issue >= 2019) and (a.year_of_issue <= 2020);


--������� ����������������� ������ �� ������� �������;
select a.album_name, AVG(t.duration) from album a
left join track t on t.album1_id = a.id
group by a.album_name
order by AVG(t.duration);

--��� �����������, ������� �� ��������� ������� � 2020 ����;
select distinct e.executor_name from executor e
where e.executor_name not in (
    select distinct e.executor_name from executor e
    left join executoralbum ea on e.id = ea.executor_id
    left join album a on a.id = ea.album_id
    where a.year_of_issue = 2020)
order by e.executor_name;


--�������� ���������, � ������� ������������ ���������� ����������� (Miyagi);
select distinct c.compilation_name from compilation c
left join compilationtrack ct on c.id = ct.compilation_id
left join track t on t.id = ct.track_id
left join album a on a.id = t.album1_id
left join executoralbum ea on ea.album_id = a.id
left join executor e on e.id = ea.executor_id
where e.executor_name like '%%Miyagi%%'
order by c.compilation_name;

--�������� ��������, � ������� ������������ ����������� ����� 1 �����;
select a.album_name from album a
left join executoralbum ea on a.id = ea.album_id
left join executor e on e.id = ea.executor_id
left join ExecutorGenre eg on e.id = eg.executor_id
left join genre g on g.id = eg.genre_id
group by a.album_name
having count(distinct g.genre_name) > 1
order by a.album_name;

--������������ ������, ������� �� ������ � ��������;
select t.track_name from track t
left join compilationtrack ct on t.id = ct.track_id
where ct.track_id is null;


--�����������(-��) ����������� ����� �������� �� ����������������� ����
select e.executor_name, t.duration from track t
left join album a on a.id = t.album1_id
left join executoralbum ea on ea.album_id = a.id
left join executor e on e.id = ea.executor_id
group by e.executor_name, t.duration
having t.duration = (select min(duration) from track)
order by e.executor_name;


--�������� ��������, ���������� ���������� ���������� ������.
select distinct a.album_name from album a
left join track t on t.album1_id = a.id
where t.album1_id in (
    select a.id from track
    group by a.id
    having count(id) = (
        select count(id) from track
        group by a.id
        order by count
        limit 1)
  )
order by a.album_name








