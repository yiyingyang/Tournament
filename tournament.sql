-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.


-- initiate the database
DROP DATABASE IF EXISTS tournament;
DROP TABLE IF EXISTS players CASCADE;
DROP TABLE IF EXISTS matches CASCADE;
CREATE DATABASE tournament;

-- create the table
\c tournament

CREATE TABLE players (ID serial PRIMARY KEY, PLAYER_NAME text, WIN integer, MATCHES integer, LOSE integer, SCORE decimal);
CREATE TABLE matches (NUMBER serial PRIMARY KEY, PLAYER_1 integer, PLAYER_2 integer, WIN_SIDE integer);

-- create views
CREATE VIEW show_players as SELECT * FROM players;
CREATE VIEW show_matches as SELECT * FROM matches;

-- show views
SELECT * from show_players;
SELECT * from show_matches;
