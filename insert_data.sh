#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo $($PSQL "TRUNCATE teams, games")

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do

# Inserting the teams (winners and opponents) info into table teams.
  if [[ $WINNER != "winner" ]]
  then
   # get team_id
    TEAM_ID_1=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    TEAM_ID_2=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
  
    # if no found
    if [[ -z $TEAM_ID_1 ]]
    # insert team
    then
        INSERT_WIN=$($PSQL "INSERT INTO teams(name) VALUES ('$WINNER')")   
    fi

    if [[ -z $TEAM_ID_2 ]]
    then
      INSERT_OPP=$($PSQL "INSERT INTO teams(name) VALUES ('$OPPONENT')")
    fi
  fi

  # Inseting the data of the games table
  if [[ $YEAR != "year" ]]

  then
    TEAM_ID_1=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    TEAM_ID_2=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
    INSERT_GAMES_DATA=$($PSQL "INSERT INTO games(year, round, opponent_goals, winner_goals, winner_id, opponent_id) VALUES ($YEAR, '$ROUND', $OPPONENT_GOALS, $WINNER_GOALS, $TEAM_ID_1, $TEAM_ID_2)")
  fi
done
