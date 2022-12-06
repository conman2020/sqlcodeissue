
DROP DATABASE movies_db;
CREATE DATABASE movies_db;



\c movies_db;

CREATE TABLE movies (id SERIAL PRIMARY KEY, title TEXT NOT NULL, release_year INTEGER NOT NULL);
CREATE TABLE actors (id SERIAL PRIMARY KEY, first_name TEXT NOT NULL, last_name TEXT, birth_date DATE NOT NULL);
CREATE TABLE roles (id SERIAL PRIMARY KEY, movie_id INTEGER REFERENCES movies ON DELETE CASCADE);
