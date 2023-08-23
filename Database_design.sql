CREATE DATABASE IF NOT EXISTS database_design_db;
use database_design_db;
CREATE TABLE IF NOT EXISTS user
(
    id         INT PRIMARY KEY auto_increment not null,
    username   VARCHAR(50)                    not null,
    email      VARCHAR(150)                   not null,
    password   VARCHAR(50)                    not null,
    first_name varchar(50)                    not null,
    last_name  varchar(75)                    not null
);
CREATE TABLE IF NOT EXISTS ads
(
    title       varchar(255)                   not null,
    description text default null,
    category    varchar(200)                   not null,
    user_id     int                            not null,
    id          int primary key auto_increment not null
);
CREATE TABLE IF NOT EXISTS cat_ads
(
    ad_id  int not null,
    cat_id int not null
);
CREATE TABLE IF NOT EXISTS category
(
    cat_item varchar(255)                   not null,
    id       int primary key auto_increment not null
);


insert into user (username, email, password, first_name, last_name)
values ('jmoney', 'jmoney@email.com', 'password', 'j', 'money'),
       ('kurtsuhhhtin', 'kurty@email.com', 'password', 'kurt', 'suhh dude'),
       ('discoDonnie', 'theDON@email.com', 'password', 'donald', 'twitter');

insert into ads(title, category, user_id)
values ('this is a title i swear to god', 'goods', 1),
       ('skateboards', 'toys', 2),
       ('Harry Potter', 'books', 3),
       ('bikes', 'toys', 2),
       ('Lord Of The Rings', 'books', 3);
insert into category (cat_item)
values ('goods'),
       ('toys'),
       ('books');
insert into cat_ads (ad_id, cat_id)
values (1, 1),
       (2, 2),
       (3, 3),
       (4, 2),
       (5, 3);
# For a given ad, what is the email address of the user that created it?
select email
from user
where id in (select user_id
             from ads
             where title = 'bikes');
# For a given ad, what category, or categories, does it belong to?
select cat_item
from category
where id in (select cat_id
             from cat_ads
             where ad_id = 2);
#For a given category, show all the ads that are in that category.
select *
from ads
where id in (select ad_id
             from cat_ads
             where cat_id = 2);
# For a given user, show all the ads they have posted
select *
from ads
where user_id in (select user_id
                  from user
                  where user_id = 3);


