CREATE SCHEMA testdb AUTHORIZATION DBA;

DROP TABLE IF Exists Game;
DROP TABLE IF Exists Match;
DROP TABLE IF Exists Player;

Create Table Player
(
    id        INTEGER IDENTITY PRIMARY KEY,
    firstName VARCHAR(50),
    lastName  VARCHAR(50)
);

Create Table Match
(
    id        INTEGER IDENTITY PRIMARY KEY,
    matchDate DATE,
    player1   INTEGER,
    player2   INTEGER
);

ALTER TABLE Match
    ADD CONSTRAINT fk_match_player1 FOREIGN KEY (player1) REFERENCES Player (id);
ALTER TABLE Match
    ADD CONSTRAINT fk_match_player2 FOREIGN KEY (player2) REFERENCES Player (id);

Create Table Game
(
    id           INTEGER IDENTITY PRIMARY KEY,
    matchId      INTEGER,
    scorePlayer1 INTEGER,
    scorePlayer2 INTEGER
);

Alter Table Game
    Add CONSTRAINT fk_game_match FOREIGN KEY (matchId) REFERENCES Match (id);


