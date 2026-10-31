create database spotify;
use spotify;

create table users (
  user_id int primary key,
  username varchar(50),
  email varchar(100),
  password varchar(100),
  registration_date date
);


create table playlists (
  playlist_id int primary key,
  playlist_name varchar(100),
  user_id int,
  created_at date,
  foreign key (user_id) references users(user_id)
);


create table tracks (
  track_id int primary key,
  track_name varchar(100),
  artist_name varchar(100),
  album_name varchar(100),
  duration int,
  release_date date
);


create table playlisttracks (
  playlist_id int,
  track_id int,
  position int,
  foreign key (playlist_id) references playlists(playlist_id),
  foreign key (track_id) references tracks(track_id)
);


insert into users (user_id, username, email, password, registration_date)
values
  (1, 'riyan', 'riyan@gmail.com', 'password123', '2022-01-10'),
  (2, 'sanjay', 'sanjay@yahoo.com', 'password456', '2022-02-15'),
  (3, 'amit', 'amit@gmail.com', 'password789', '2022-03-20'),
  (4, 'sheetal', 'sheetal@yahoo.com', 'password12', '2022-04-25'),
  (5, 'maahir', 'maahir@gmail.com', 'password34', '2022-05-30'),
  (6, 'prayan', 'prayan@gmail.com', 'password56', '2022-06-05'),
  (7, 'samarth', 'samarth@yahoo.com', 'password78', '2022-07-10'),
  (8, 'briti', 'briti@yahoo.com', 'password90', '2022-08-15'),
  (9, 'aabheri', 'aabheri@gmail.com', 'password123', '2022-09-20'),
  (10, 'anvika', 'anvika@yahoo.com', 'password12', '2022-10-25');


insert into playlists (playlist_id, playlist_name, user_id, created_at)
values
  (1, 'my favorites', 1, '2022-01-15'),
  (2, 'road trip mix', 2, '2022-02-20'),
  (3, 'party hits', 3, '2022-03-25'),
  (4, 'relaxing melodies', 4, '2022-04-30'),
  (5, 'late night vibes', 5, '2022-05-05'),
  (6, 'workout pump', 6, '2022-06-10'),
  (7, 'chill beats', 7, '2022-07-15'),
  (8, 'study jams', 8, '2022-08-20'),
  (9, 'throwback tunes', 9, '2022-09-25'),
  (10, 'weekend grooves', 10, '2022-10-30');

insert into tracks (track_id, track_name, artist_name, album_name, duration, release_date)
values
  (1, 'shape of you', 'ed sheeran', '÷ (divide)', 233, '2017-01-06'),
  (2, 'blinding lights', 'the weeknd', 'after hours', 200, '2019-11-29'),
  (3, 'dance monkey', 'tones and i', 'the kids are coming', 209, '2019-08-29'),
  (4, 'bad guy', 'billie eilish', 'when we all fall asleep, where do we go?', 194, '2019-03-29'),
  (5, 'rockstar', 'post malone ft. 21 savage', 'beerbongs & bentleys', 218, '2017-09-15'),
  (6, 'happier', 'ed sheeran', '÷ (divide)', 207, '2017-01-06'),
  (7, 'save your tears', 'the weeknd', 'after hours', 223, '2019-11-29'),
  (8, 'never seen the rain', 'tones and i', 'the kids are coming', 186, '2019-08-29'),
  (9, "when the party's over", 'billie eilish', 'when we all fall asleep', 194, '2019-03-29'),
  (10, 'circles', 'post malone', "hollywood's bleeding", 215, '2019-09-03'),
  (11, 'thinking out loud', 'ed sheeran', 'x', 281, '2014-06-20'),
  (12, "can't feel my fac", 'the weeknd', 'beauty behind the madness', 213, '2015-06-08'),
  (13, 'dance monkey', 'tones and i', 'the kids are coming', 209, '2019-08-29'),
  (14, 'ocean eyes', 'billie eilish', "don't smile at me", 180, '2016-11-18'),
  (15, 'sunflower', 'post malone ft. swae lee', 'spider-man: into the spider-verse', 158, '2018-10-18'),
  (16, 'photograph', 'ed sheeran', 'x', 258, '2014-06-20'),
  (17, 'starboy', 'the weeknd ft. daft punk', 'starboy', 230, '2016-11-24'),
  (18, 'dance monkey', 'tones and i', 'the kids are coming', 209, '2019-08-29'),
  (19, 'lovely', 'billie eilish ft. khalid', '13 reasons why (season 2)', 200, '2018-04-19'),
  (20, 'better now', 'post malone', 'beerbongs & bentleys', 231, '2018-04-27');

  

insert into playlisttracks (playlist_id, track_id, position)
values
  (1, 1, 1),
  (1, 2, 2),
  (1, 3, 3),
  (1, 11, 4),
  (1, 13, 5),
  (2, 4, 1),
  (2, 5, 2),
  (2, 12, 3),
  (2, 14, 4),
  (3, 1, 1),
  (3, 3, 2),
  (3, 5, 3),
  (4, 2, 1),
  (4, 4, 2),
  (5, 1, 1),
  (5, 3, 2),
  (5, 5, 3),
  (5, 15, 4),
  (5, 16, 5),
  (5, 17, 6),
  (6, 2, 1),
  (6, 4, 2),
  (7, 1, 1),
  (7, 5, 2),
  (7, 18, 3),
  (8, 3, 1),
  (8, 4, 2),
  (9, 1, 1),
  (9, 2, 2),
  (9, 3, 3),
  (9, 4, 4),
  (9, 5, 5),
  (9, 19, 6),
  (9, 20, 7),
  (10, 1, 1),
  (10, 3, 2),
  (10, 5, 3);

select * from users;
select * from playlists;
select * from tracks;
select * from playlisttracks;


#1. find all the distinct album names.
select distinct(album_name) from tracks;

#2. who is the artist of song 'never seen the rain'?
select track_name, artist_name 
from tracks 
where track_name='never seen the rain';

#3. name all the user & email, who have registered with gmail id.
select username, email
from users
where email like '%@gmail.com';

#4. list the name of users along with registration dates, who have registered after april-22.
select username, registration_date
from users
where registration_date > '2022-04-30';

#5. extract the name of tracks, artists, albums and release dates for tracks released in year 2017
select track_name, artist_name, album_name, release_date
from tracks
where year(release_date) = 2017;

#6. find the details of the users who have registed in between may and august.
select *
from users u
where registration_date between '2022-05-01' and '2022-08-31';

#7. count the number of playlists created by each user.
select u.username, count(p.playlist_id) as playlist_count
from users u
left join playlists p on u.user_id = p.user_id
group by u.username;

#8. find the track names and their durations for a specific album in the tracks table.
select track_name, duration
from tracks
where album_name = 'after hours';

#9. calculate the average duration of tracks in the tracks table.
select avg(duration) as average_duration 
from tracks;

#10. how many users have registered with yahoo.com id?
select count(*) 
from users
where email like '%@yahoo.com';


#11. find the playlist names and the number of tracks in each playlist created by users whose email addresses end with '@gmail.com'.
select playlist_name, count(*) as track_count
from playlists
join users on playlists.user_id = users.user_id
where users.email like '%@gmail.com'
group by playlist_name;

#12. write a query to retrieve the usernames and email addresses of users who have created playlists with more than 5 tracks and an average track duration greater than 200 seconds.
select u.username, u.email
from users u
inner join playlists p on u.user_id = p.user_id
inner join playlisttracks pt on p.playlist_id = pt.playlist_id
inner join tracks t on pt.track_id = t.track_id
group by u.username, u.email
having count(pt.track_id) > 5 and avg(t.duration) > 200;

#13. find the track and artist names of the tracks that have a duration greater than the average duration of all tracks in the 'tracks' table.
select track_name, artist_name
from tracks
where duration > (
  select avg(duration)
  from tracks
);

#14. find the users who have created playlists with tracks from all albums released in a specific year.
select u.username
from users u
inner join playlists p on u.user_id = p.user_id
inner join playlisttracks pt on p.playlist_id = pt.playlist_id
inner join tracks t on pt.track_id = t.track_id
where year(t.release_date) = 2017
group by u.username
having count(distinct t.album_name) = (select count(distinct album_name) from tracks where year(release_date) = 2017);

#15. name of playlist and their total durations, sorted by the number of tracks in descending order.
select p.playlist_name, sum(t.duration) as total_duration
from playlists p
inner join playlisttracks pt on p.playlist_id = pt.playlist_id
inner join tracks t on pt.track_id = t.track_id
group by p.playlist_name
order by count(pt.track_id) desc;

#16. find the playlists that have tracks with a duration longer than the average duration of all tracks.
select p.playlist_name
from playlists p
inner join playlisttracks pt on p.playlist_id = pt.playlist_id
inner join tracks t on pt.track_id = t.track_id
where t.duration > (select avg(duration) from tracks);

#17. find the top 3 playlists with the most tracks.
select p.playlist_name, count(pt.track_id) as track_count
from playlists p
inner join playlisttracks pt on p.playlist_id = pt.playlist_id
group by p.playlist_name
order by track_count desc
limit 3;

#18. calculate the average track duration for each user and display the results in descending order.
select u.username, avg(t.duration) as average_duration
from users u
inner join playlists p on u.user_id = p.user_id
inner join playlisttracks pt on p.playlist_id = pt.playlist_id
inner join tracks t on pt.track_id = t.track_id
group by u.username
order by average_duration desc;

#19. find the track names and artist names of the tracks that are included in at least two different playlists.
select track_name, artist_name
from tracks
where track_id in (select track_id
  from playlisttracks
  group by track_id
  having count(distinct playlist_id) >= 2);

#20.  find the playlist names and the total duration of each playlist. include only the playlists created by users who registered in the year 2022.
select playlist_name, sum(duration) as total_duration
from playlists
join playlisttracks on playlists.playlist_id = playlisttracks.playlist_id
join tracks on playlisttracks.track_id = tracks.track_id
where playlists.user_id in (select user_id from users where year(registration_date) = 2022)
group by playlists.playlist_id, playlist_name;


#21. find the track names and artist names of the tracks that are included in playlists created by users who registered before the average registration date of all users.
select track_name, artist_name
from tracks
where track_id in (
  select track_id
  from playlisttracks
  where playlist_id in (
    select playlist_id
    from playlists
    where user_id in (
      select user_id
      from users
      where registration_date < (
        select avg(registration_date)
        from users))));

#22. use subquery to retrieve the names of users who have created playlists containing tracks from both the album 'after hours' by the weeknd and the album 'when we all fall asleep, where do we go?' by billie eilish.
select username
from users
where user_id in (
  select user_id
  from playlists
  where playlist_id in (
    select playlist_id
    from playlisttracks
    where track_id in (
      select track_id
      from tracks
      where album_name = 'after hours' and artist_name = 'the weeknd'
    )
  ) and playlist_id in (
    select playlist_id
    from playlisttracks
    where track_id in (
      select track_id
      from tracks
      where album_name = 'when we all fall asleep, where do we go?' and artist_name = 'billie eilish'
    )
  )
);

#23. use subquery to extract names of the users who have created playlists containing tracks from the album '÷ (divide)' by ed sheeran.
select username
from users
where user_id in (
  select user_id
  from playlists
  where playlist_id in (
    select playlist_id
    from playlisttracks
    where track_id in (
      select track_id
      from tracks
      where album_name = '÷ (divide)' and artist_name = 'ed sheeran'
    )
  )
);
