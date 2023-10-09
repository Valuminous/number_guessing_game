#!/bin/bash
# script to randomly generate a number that users have to guess
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
echo -e "\n~~~~Number guessing game~~~~\n"


echo -e "\nEnter your username:"
read USERNAME
PLAYER_USERNAME=$($PSQL "SELECT username FROM players WHERE username = '$USERNAME'")
# if customer doesn't exist
if [[ -z $PLAYER_USERNAME ]]
then
echo -e "Welcome, $USERNAME! It looks like this is your first time here."
# insert new player in db
INSERT_PLAYER_USERNAME=$($PSQL "INSERT INTO players(username) VALUES('$USERNAME')")
else
# get player id
PLAYER_ID=$($PSQL "SELECT player_id FROM players WHERE username = '$USERNAME'")
#get player's games data
GAMES_PLAYED=$($PSQL "SELECT COUNT(game_id) FROM games WHERE player_id = $PLAYER_ID")
BEST_GAME=$($PSQL "SELECT MIN(number_of_guesses) FROM games WHERE player_id = $PLAYER_ID")
echo -e "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

# generate random number between 1 and 1000
RANDOM_NUMBER=$(( RANDOM % 1000 + 1 ))
# variable to store number of guesses/tries
GUESS_COUNT=0

# prompt first guess
echo -e "\nGuess the secret number between 1 and 1000:"
read PLAYER_GUESS

# loop to prompt player to guess until correct
until [[ $PLAYER_GUESS == $RANDOM_NUMBER ]]
do
    # check if guess is a number
  if [[ ! $PLAYER_GUESS =~ ^[0-9]+$ ]]
    then
      # request valid guess
      echo -e "\nThat is not an integer, guess again:"
      read PLAYER_GUESS
      # update number of guesses
      ((GUESS_COUNT++))
    
    # if valid guess
    else
      # check if guess is less or more
      if [[ $PLAYER_GUESS < $RANDOM_NUMBER ]]
        then
          echo "It's higher than that, guess again:"
          read PLAYER_GUESS
                   # update guess count
          ((GUESS_COUNT++))
        else 
          echo "It's lower than that, guess again:"
          read PLAYER_GUESS
          #update guess count
          ((GUESS_COUNT++))
      fi  
  fi
done

#when number is guessed 
((GUESS_COUNT++))

#update db with results
PLAYER_ID=$($PSQL "SELECT player_id FROM players WHERE username = '$USERNAME'")
INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(player_id, secret_number, number_of_guesses) VALUES ($PLAYER_ID, $RANDOM_NUMBER, $GUESS_COUNT)")
echo -e "\nYou guessed it in $GUESS_COUNT tries. The secret number was $RANDOM_NUMBER. Nice job!"