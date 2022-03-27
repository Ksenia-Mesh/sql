create table if not exists Executor(
	id serial primary key,
	executor_name varchar(100) not null
);

create table if not exists Album (
	id serial primary key,
	album_name varchar(100) not null,
	year_of_issue integer not null
);

create table if not exists Track(
	id serial primary key,
	track_name varchar(100) not null,
	duration integer not null,
	album1_id integer references album(id)
);

create table if not exists Genre (
	id serial primary key,
	genre_name varchar(100) not null
);

create table if not exists Compilation (
	id serial primary key,
	compilation_name varchar(100) not null,
	year_of_issue integer not null
);

create table if not exists ExecutorGenre (
	id serial primary key,
	executor_id integer not null references executor(id),
	genre_id integer not null references genre(id)
);


create table if not exists ExecutorAlbum (
	id serial primary key,
	executor_id integer not null references executor(id),
	album_id integer not null references album(id)
);

create table if not exists CompilationTrack (
	id serial primary key,
	compilation_id integer not null references compilation(id),
	track_id integer not null references track(id)
);

