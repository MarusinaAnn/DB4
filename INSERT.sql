insert into performer
values (1,'BONES'),
       (2,'Kordhell'),
       (3,'Rezz'),
       (4,'Hugeloud'),
       (5,'Pulsedriver'),
       (6,'Bad Smith'),
       (7,'Pastel Ghost'),
       (8,'Senkya'),
       (9,'Hiko');

insert into genre
values (1,'phonk'),
       (2,'dance music'),
       (3,'hip-hop'),
       (4,'trance'),
       (5,'electronic music'),
       (6,'pop');
       
insert into album
values (1,'The Best', 2019),
     (2,'Split', 2022),
     (3,'Personalities', 2018),
     (4,'Freestyle', 2011),
     (5,'Moon',2021),
     (6,'Season 6', 2015),
     (7,'Wanna sleep', 2016),
     (8,'Idk', 2017),
     (9,'Slay',2022);
     
insert into track
values(1, 1,'FIND', 2.21),
      (2, 9,'MYWAY', 3.59),
      (3, 8,'High', 1.5),
      (4, 7,'Circus', 4.18),
      (5, 6,'Hearts', 3.20),
      (6, 5,'Who we are', 1.01),
      (7, 4,'Tainted love', 3.21),
      (8, 3,'Matrix', 8.10),
      (9, 2,'Bombay', 4.15),
      (10, 1,'Need', 2.56),
      (11, 5,'Flash', 1.20),
      (12, 9,'Bad', 2.45),
      (13, 3,'Pharmacy', 5.00),
      (14, 7,'Sleepwell', 7.15),
      (15, 2,'The Sign', 5.04);

insert into music_collection 
values (1,'Mood',2022),
       (2,'Vibe', 2021),
       (3,'atmosphere', 2019),
       (4,'reason why', 2020),
       (5,'backtoschool', 2022),
       (6,'nearest future', 2021),
       (7,'pumpKING',2019),
       (8,'spoky season', 2022);

update performer 
set alias = 'myhiko'
where performerid = 9;

update track 
set track_title = 'mybad'
where trackid = 12;

INSERT INTO genreperformer
VALUES (3,1),
       (1,2),
       (5,2),
       (2,2),
       (5,3),
       (4,4),
       (6,5),
       (3,6),
       (4,7),
       (6,8),
       (1,9),
       (5,9);
      
INSERT INTO performeralbum
VALUES (1,1),
       (1,2),
       (2,3),
       (3,4),
       (4,6),
       (5,5),
       (6,7),
       (7,8),
       (8,9),
       (9,2);
      
 -- 1 и 11 трек не входят в сборники      
INSERT INTO trackcollection
VALUES (2,3),
       (2,4),
       (3,3),
       (3,1),
       (4,2),
       (5,5),
       (6,5),
       (7,6),
       (8,6),
       (12,6),
       (9,7),
       (10,7),
       (13,8),
       (14,8),
       (15,4);