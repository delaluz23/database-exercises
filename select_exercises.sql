use codeup_test_db;
select * from albums
where artist = 'Pink Floyd';
select * from albums;
select release_date from albums
where name = 'Sgt. Peppers Lonely Hearts Club Band';
select genre from albums
where name = 'Nevermind';
select * from albums
where release_date between 1990 and 1999;
select * from albums
where sales <= 20;
select * from albums
where genre = 'Rock';
