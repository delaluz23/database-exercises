use codeup_test_db;

select * from albums
where release_date > 1991;

delete from albums
where release_date > 1991;

select * from albums
where release_date > 1991;

select * from albums
where genre = 'Disco';

delete from albums
where genre = 'Disco';

select * from albums
where genre = 'Disco';

select * from albums
where artist = 'Eagles';

delete from albums
where artist = 'Eagles';

select * from albums
where artist = 'Eagles';