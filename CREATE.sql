create table if not exists genre (
  genreID INTEGER primary key,
  name VARCHAR(40) not null
);

create table if not exists performer (
  performerID INTEGER primary key,
  alias VARCHAR(40) not null
);

create table if not exists album (
  albumID INTEGER primary key,
  album_title VARCHAR(80) not null,
  release_year INTEGER not null
);

create table if not exists genreperformer (
  genreID INTEGER references genre(genreID),
  performerID INTEGER references performer(performerID),
  constraint pk_genreperformer primary key (genreID, performerID)
);

create table if not exists performeralbum (
  albumID INTEGER references album(albumID),
  performerID INTEGER references performer(performerID),
  constraint pk_performeralbum primary key (albumID, performerID)
);

create table if not exists track (
  trackID INTEGER primary key,
  albumID INTEGER references album(albumID),
  track_title VARCHAR(80) not null,
  duration INTEGER not NULL
);

create table if not exists music_collection (
  collectionID INTEGER primary key,
  collection_title VARCHAR(80) not null,
  release_year INTEGER not null
);

create table if not exists trackcollection (
  trackID INTEGER references track(trackID),
  collectionID INTEGER references music_collection(collectionID),
  constraint pk_trackcollection primary key (trackID, collectionID)
);