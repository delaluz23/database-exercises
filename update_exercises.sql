use codeup_test_db;
SELECT * from albums;
select * from albums
where release_date >=1980;
update albums
set artist = 'Peter Jackson'
where artist = 'Michael Jackson';
SELECT * from albums;
update albums
set artist = 'Michael Jackson'
    where artist = 'Peter Jackson';
SELECT * from albums;