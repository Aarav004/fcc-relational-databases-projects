
PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"


SYMBOL=$1
if [[ -z $SYMBOL ]]
then
  echo -e "Please provide an element as an argument."
else
  #check if the symbol is a number or not
  if [[ ! $SYMBOL =~ ^[0-9]+$ ]]
  then
    if [[ $(expr length "$SYMBOL") -gt 2 ]]
    then
      #get data using name of the element
      
      GET_SYMBOL=$($PSQL "SELECT symbol FROM elements WHERE name = '$SYMBOL'")
      GET_NUMBER=$($PSQL "SELECT atomic_number FROM elements WHERE name = '$SYMBOL'")
      GET_TYPE=$($PSQL "SELECT types.type FROM properties LEFT JOIN types using(type_id) WHERE atomic_number = $GET_NUMBER ")
      GET_MASS=$($PSQL "SELECT atomic_mass FROM properties WHERE atomic_number = $GET_NUMBER ")
      GET_MELTING=$($PSQL "SELECT melting_point_celsius FROM properties WHERE atomic_number = $GET_NUMBER")
      GET_BOILING=$($PSQL "SELECT boiling_point_celsius FROM properties WHERE atomic_number = $GET_NUMBER")
      if [[ -z $GET_NUMBER ]]
      then
        echo "I could not find that element in the database."
      else
        echo -e "The element with atomic number $GET_NUMBER is $SYMBOL ($GET_SYMBOL). It's a $GET_TYPE, with a mass of $GET_MASS amu. $SYMBOL has a melting point of $GET_MELTING celsius and a boiling point of $GET_BOILING celsius."
      fi
      
    else
      
      #get data using symbol of the element
      GET_NUMBER=$($PSQL "SELECT atomic_number FROM elements WHERE symbol = '$SYMBOL'")
      GET_NAME=$($PSQL "SELECT name FROM elements WHERE symbol = '$SYMBOL'")
      GET_TYPE=$($PSQL "SELECT types.type FROM properties LEFT JOIN types using(type_id) WHERE atomic_number = $GET_NUMBER ")
      GET_MASS=$($PSQL "SELECT atomic_mass FROM properties WHERE atomic_number = $GET_NUMBER ")
      GET_MELTING=$($PSQL "SELECT melting_point_celsius FROM properties WHERE atomic_number = $GET_NUMBER")
      GET_BOILING=$($PSQL "SELECT boiling_point_celsius FROM properties WHERE atomic_number = $GET_NUMBER")

      if [[ -z $GET_NUMBER ]]
      then
        echo "I could not find that element in the database."
      else
        echo -e "The element with atomic number $GET_NUMBER is $GET_NAME ($SYMBOL). It's a $GET_TYPE, with a mass of $GET_MASS amu. $GET_NAME has a melting point of $GET_MELTING celsius and a boiling point of $GET_BOILING celsius."
      fi
      
    fi
    

  else
    
    #get data using the atomic number
    GET_SYMBOL=$($PSQL "SELECT symbol FROM elements WHERE  atomic_number = $SYMBOL")
    GET_NAME=$($PSQL "SELECT name FROM elements WHERE atomic_number = $SYMBOL")
    GET_TYPE=$($PSQL "SELECT types.type FROM properties LEFT JOIN types using(type_id) WHERE atomic_number = $SYMBOL ")
    GET_MASS=$($PSQL "SELECT atomic_mass FROM properties WHERE atomic_number = $SYMBOL ")
    GET_MELTING=$($PSQL "SELECT melting_point_celsius FROM properties WHERE atomic_number = $SYMBOL")
    GET_BOILING=$($PSQL "SELECT boiling_point_celsius FROM properties WHERE atomic_number = $SYMBOL")

    if [[ -z $GET_NAME ]]
    then
      echo "I could not find that element in the database."
    else
      echo -e "The element with atomic number $SYMBOL is $GET_NAME ($GET_SYMBOL). It's a $GET_TYPE, with a mass of $GET_MASS amu. $GET_NAME has a melting point of $GET_MELTING celsius and a boiling point of $GET_BOILING celsius."
    fi
  fi
  

fi




