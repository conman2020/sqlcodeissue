-- DROP DATABASE lamas_db;
-- CREATE DATABASE lamas_db;
-- \c lamas_db;

-- CREATE TABLE users4 (id SERIAL PRIMARY KEY, username VARCHAR(15) UNIQUE NOT NULL, password VARCHAR(20) NOT NULL);
-- INSERT INTO users4 (username, password) VALUES ('graylady', 'dododo'), ('steviechicks', 'lalalal');
-- CREATE TABLE comments2 (id SERIAL PRIMARY KEY, user_id INTEGER REFERENCES users4 ON DELETE CASCADE, comment_text TEXT NOT NULL);
-- CREATE TABLE subreddits4 (id SERIAL PRIMARY KEY, user_id INTEGER REFERENCES users4 ON DELETE SET NULL, name VARCHAR(15) NOT NULL, description TEXT, subscribers INTEGER CHECK (subscribers > 0) DEFAULT 1, is_private BOOLEAN DEFAULT false);


CREATE TABLE subreddits (id SERIAL, name VARCHAR(15), description TEXT, subscribers INTEGER, is_private BOOLEAN);


-- INSERT INTO subreddits4 (name, user_id ) VALUES ('chickens' , 2), ('waterluvers', 1);