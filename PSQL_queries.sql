--psql --username=freecodecamp --dbname=postgres   ---  \c

CREATE TABLE teams(team_id SERIAL NOT NULL PRIMARY KEY, name VARCHAR UNIQUE NOT NULL);

CREATE TABLE games(game_id SERIAL NOT NULL PRIMARY KEY, year INT NOT NULL, round VARCHAR NOT NULL, winner_goals INT NOT NULL, opponent_goals INT NOT NULL, winner_id INT NOT NULL, opponent_id INT NOT NULL, CONSTRAINT FK_opponent_game FOREIGN KEY (opponent_id) REFERENCES teams(team_id), CONSTRAINT FK_winner_game FOREIGN KEY (winner_id) REFERENCES teams(team_id));
