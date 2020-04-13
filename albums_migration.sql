USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50) DEFAULT 'Undefined',
    name VARCHAR(100) NOT NULL,
    release_date YEAR NOT NULL,
    sales FLOAT NOT NULL,
    genre VARCHAR(20) DEFAULT 'Undefined',
    PRIMARY KEY (id)
);