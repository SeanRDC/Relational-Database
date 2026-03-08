#!/bin/bash

# Define the PSQL variable to query the database
PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"

# 1. If no argument is provided
if [[ -z $1 ]]
then
  echo "Please provide an element as an argument."
else
  # 2 & 3. Determine if the argument is a number (atomic_number) or string (symbol/name)
  if [[ $1 =~ ^[0-9]+$ ]]
  then
    QUERY="SELECT elements.atomic_number, elements.name, elements.symbol, types.type, properties.atomic_mass, properties.melting_point_celsius, properties.boiling_point_celsius FROM elements JOIN properties USING(atomic_number) JOIN types USING(type_id) WHERE elements.atomic_number = $1;"
  else
    QUERY="SELECT elements.atomic_number, elements.name, elements.symbol, types.type, properties.atomic_mass, properties.melting_point_celsius, properties.boiling_point_celsius FROM elements JOIN properties USING(atomic_number) JOIN types USING(type_id) WHERE elements.symbol = '$1' OR elements.name = '$1';"
  fi

  # Execute the query
  RESULT=$($PSQL "$QUERY")

  # 4. If the element doesn't exist in the database
  if [[ -z $RESULT ]]
  then
    echo "I could not find that element in the database."
  else
    # Parse the piped result directly into variables and output the exact string
    IFS="|" read ATOMIC_NUMBER NAME SYMBOL TYPE MASS MELTING BOILING <<< "$RESULT"
    echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $MASS amu. $NAME has a melting point of $MELTING celsius and a boiling point of $BOILING celsius."
  fi
fi