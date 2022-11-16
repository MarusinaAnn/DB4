-- количество исполнителей в каждом жанре
select g.name, count(gp.performerid) from genreperformer gp
join genre g on gp.genreid = g.genreid 
group by g.name;

-- количество треков, вошедших в альбомы 2019-2020 годов
select a.album_title, count(t.trackid) amount from track t
join album a on t.albumid = a.albumid
where a.release_year = 2019 or a.release_year = 2020
group by a.album_title;

-- средняя продолжительность треков по каждому альбому
select a.album_title, avg(t.duration) average from track t
join album a on t.albumid = a.albumid 
group by a.album_title;

-- все исполнители, которые не выпустили альбомы в 2020 году
select p.alias, a.release_year from performer p
join performeralbum pa on p.performerid = pa.performerid 
join album a on pa.albumid = a.albumid 
where pa.performerid not in (select pa.performerid from performeralbum
where a.release_year = 2020);

-- названия сборников, в которых присутствует конкретный исполнитель (выберите сами)
select mc.collection_title, p.alias from performer p
join performeralbum pa on p.performerid = pa.performerid 
join album a on pa.albumid = a.albumid 
join track t on a.albumid = t.albumid 
join trackcollection tc on t.trackid = tc.trackid 
join music_collection mc on tc.collectionid = mc.collectionid 
where p.alias = 'Kordhell';

-- название альбомов, в которых присутствуют исполнители более 1 жанра
select a.album_title, p.alias from performer p
join performeralbum pa on p.performerid = pa.performerid 
join album a on pa.albumid = a.albumid 
join genreperformer gp on p.performerid = gp.performerid 
group by a.album_title, p.alias
having count(gp.genreid) > 1;

-- наименование треков, которые не входят в сборники
select t.track_title from track t
left join trackcollection tc on t.trackid = tc.trackid 
where tc.trackid is null;

-- исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько)
select alias from performer p
join performeralbum pa on p.performerid = pa.performerid 
join album a on pa.albumid = a.albumid 
join track t on a.albumid = t.albumid 
where t.duration in (select min(duration) from track);

-- название альбомов, содержащих наименьшее количество треков
select a.album_title, count(t.trackid) from album a
join track t on a.albumid = t.albumid 
group by a.album_title
having count(t.trackid) in (select count(t.trackid) from album a
join track t on a.albumid = t.albumid 
group by a.album_title
order by count(t.trackid)
limit 1);
