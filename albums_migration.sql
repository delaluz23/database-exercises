USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE albums (
    id int UNSIGNED NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (id),
    artist VARCHAR(35) NOT NULL ,
    name varchar(100) NOT NULL ,
    release_date DATE NOT NULL ,
    sales FLOAT NOT NULL ,
    genre varchar(25) NOT NULL
)