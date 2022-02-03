CREATE DATABASE IF NOT EXISTS CategorizerDb;
USE CategorizerDb;

CREATE TABLE IF NOT EXISTS Person (
    person_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    PRIMARY KEY (person_id)
);

CREATE TABLE IF NOT EXISTS Interest (
    interest_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    PRIMARY KEY (interest_id)
);

CREATE TABLE IF NOT EXISTS InterestMap (
    interest_id int not null,
    person_id int not null,
    primary key (interest_id, person_id),
    foreign key (interest_id) references Interest(interest_id),
    foreign key (person_id) references Person(person_id)
);

CREATE TABLE IF NOT EXISTS Photo (
    photo_id int not null AUTO_INCREMENT,
    photo_url VARCHAR(500) not null,
    primary key (photo_id)
);

CREATE TABLE IF NOT EXISTS Profile (
    person_id int not null,
    avatar_id int,
    primary key (person_id),
    foreign key (person_id) references Person(person_id),
    foreign key (avatar_id) references Photo(photo_id)
);
