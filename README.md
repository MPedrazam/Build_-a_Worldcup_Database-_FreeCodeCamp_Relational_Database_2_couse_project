# Building a World Cup Database: FreeCodeCamp Relational Database course_project

This is the second required project in the FreeCodeCamp Relational Database certification
https://www.freecodecamp.org/learn/relational-database/build-a-world-cup-database-project/build-a-world-cup-database

The project aim to buld a relational databse by using Bash script and PSQL querries.

The taks to accomplish are:

    You should create a database named worldcup

    You should connect to your worldcup database and then create teams and games tables

    Your teams table should have a team_id column that is a type of SERIAL and is the primary key, and a name column that has to be UNIQUE

    Your games table should have a game_id column that is a type of SERIAL and is the primary key, a year column of type INT, and a round column of type VARCHAR

    Your games table should have winner_id and opponent_id foreign key columns that each reference team_id from the teams table

    Your games table should have winner_goals and opponent_goals columns that are type INT

    All of your columns should have the NOT NULL constraint

    Your two script (.sh) files should have executable permissions. Other tests involving these two files will fail until permissions are correct. When these permissions are enabled, the tests will take significantly longer to run

    When you run your insert_data.sh script, it should add each unique team to the teams table. There should be 24 rows

    When you run your insert_data.sh script, it should insert a row for each line in the games.csv file (other than the top line of the file). There should be 32 rows. Each row should have every column filled in with the appropriate info. Make sure to add the correct ID's from the teams table (you cannot hard-code the values)
