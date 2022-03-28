insert into  Executor 
	values
	(1, 'Choi'),
	(2, 'Miyagi'),
	(3, 'Polina Gagarina'),
	(4, 'Alla Pugacheva'),
	(5, 'Leps'),
	(6, 'Artik & Asti'),
	(7, 'Scriptonite'),
	(8, 'Zivert'),
	(9, 'Bi-2');
	
insert into Genre
	values 
	(1, 'classic'),
	(2, 'pop'),
	(3, 'rock'),
	(4, 'R&B'),
	(5, 'hip-hop'),
	(6, 'chanson'),
	(7, 'stage'),
	(8, 'rhythm and blues');

insert into Album
	values 
	(1, 'This is not love', 1985), 
	(2, 'Mirror of love', 1977),
	(3, 'Dubsitution of concepts', 2021), 
	(4, 'Millennium', 2021), 
	(5, 'A star called the sun', 1989),
	(6, 'Yamakasi', 2020),
	(7, 'Bsd habits', 2021), 
	(8, 'River tram', 2001), 
	(9, 'Above the head', 2018), 
	(10, 'Shine', 2018),
	(11, 'Buster Keaton', 2019), 
	(12, 'THE BEST', 2018),
	(13, 'Bi-2', 2000);


insert into Track
	values 
	(1, 'Wave music', 520, 1),
	(2, 'Song without words', 307, 5), 
	(3, 'Daughter', 258, 8),
	(4, 'Go and see', 274, 3),
	(5, 'She is not me', 214, 4), 
	(6, 'Sonnet', 207, 2), 
	(7, 'Green waves', 223, 10), 
	(8, 'This is not love', 208, 1),
	(9, 'I listened to the rain', 330, 12),
	(10, 'Above the head', 238, 9), 
	(11, 'I am spinning my head', 185, 4), 
	(12, 'Wheredoes childhood go', 291, 2), 
	(13, 'Sorry', 194, 11), 
	(14, 'Next to me', 230, 1), 
	(15, 'Tantra', 255, 6), 
	(16, 'Tour', 124, 7), 
	(17, 'Angel', 202, 11), 
	(18, 'All the best', 285, 3),
	(19, 'My friend', 291, 13);
	

insert into Compilation
	values 
	(1, 'Music 2021', 2022),
	(2, 'Chanson', 2020),
	(3, 'Music 2018', 2018),
	(4, 'Alla Pugacheva', 2000),
	(5, 'About love', 2021),
	(6, 'Music 20v', 1999),
	(7, 'Rap', 2021),
	(8, 'Summer songs', 2021);


insert into ExecutorGenre
	values 
	(1, 1, 3),
	(2, 2, 5),
	(3, 3, 2),
	(4, 4, 7),
	(5, 5, 3),
	(6, 5, 6),
	(7, 6, 2),
	(8, 6, 8),
	(9, 7, 4),
	(10, 7, 5),
	(11, 8, 2),
	(12, 9, 3);
	
insert into ExecutorAlbum
	values 
	(1, 1, 1),
	(2, 1, 5),
	(3, 2, 6),
	(4, 2, 11),
	(5, 3, 9),
	(6, 4, 2),
	(7, 4, 8),
	(8, 5, 3),
	(9, 5, 12),
	(10, 6, 4),
	(11, 7, 7),
	(12, 8, 10),
	(13, 9, 13);

insert into CompilationTrack
	values 
	(1, 1, 4),
	(2, 1, 5),
	(3, 1, 11),
	(4, 1, 16),
	(5, 1, 18),
	(6, 2, 4),
	(7, 2, 9),
	(8, 2, 18),
	(9, 3, 7),
	(10, 3, 9),
	(11, 3, 10),
	(12, 4, 6),
	(13, 4, 12),
	(14, 4, 3),
	(15, 5, 4),
	(16, 5, 17),
	(17, 5, 15),
	(18, 5, 5),
	(19, 6, 1),
	(20, 6, 8),
	(21, 6, 2),
	(22, 6, 6),
	(23, 6, 12),
	(24, 6, 14),
	(25, 7, 17),
	(26, 7, 13),
	(27, 7, 15),
	(28, 8, 13),
	(29, 8, 15),
	(30, 6, 19);
	
