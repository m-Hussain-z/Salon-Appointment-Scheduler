#! /bin/bash
PSQL="psql --username=freecodecamp --dbname=salon --no-align --tuples-only -c"

echo -e "\n~~~~~ MY SALON ~~~~~\n"
echo -e "Welcome to My Salon, how can I help you?\n"
SERVICE=$($PSQL "SELECT * FROM services")

CUSTOMER()
{
  #get CUSTOMER_PHONE
  echo -e "\nWhat's your phone number?"
  read CUSTOMER_PHONE
    
  CUSTOMER=$($PSQL "SELECT customer_id,name FROM customers WHERE phone = '$CUSTOMER_PHONE'")

  #if not CUSTOMER_PHONE
  if [[ -z $CUSTOMER ]]
  then
    #get CUSTOMER_NAME 
    echo -e "\nI don't have a record for that phone number, what's your name?"
    read CUSTOMER_NAME

    #add CUSTOMER_NAME
    INSERT_CUSTOMER=$($PSQL "INSERT INTO customers(name,phone) VALUES('$CUSTOMER_NAME','$CUSTOMER_PHONE')")
   
    CREATE_APPOINTMENT

  else   
    CREATE_APPOINTMENT
  fi
}

CREATE_APPOINTMENT()
{
  
  CUST_NAME=$($PSQL "SELECT name FROM customers WHERE phone = '$CUSTOMER_PHONE'")
  CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone = '$CUSTOMER_PHONE'")
  CUSTOMER_FORMATTED_NAME=$(echo "$CUST_NAME" | sed 's/^ *//;s/ *$//')
  SERVICE_FORMATTED_NAME=$(echo "$SERVICE_NAME" | sed 's/^ *//;s/ *$//')

  echo -e "\nWhat time would you like your $SERVICE_FORMATTED_NAME, $CUSTOMER_FORMATTED_NAME?"
  read SERVICE_TIME
  echo -e "\nI have put you down for a $SERVICE_NAME at $SERVICE_TIME, $CUST_NAME."

  SERVICE=$($PSQL "INSERT INTO appointments(customer_id,service_id,time) VALUES($CUSTOMER_ID,$SERVICE_ID_SELECTED,'$SERVICE_TIME')")

}

MAIN_MENU()
{
  if [[ $1 ]]
  then
   echo -e "\n$1"
  fi

  echo "$SERVICE" | while IFS='|' read SERVICE_ID NAME 
  do
    echo "$SERVICE_ID) $NAME" 
  done

  read SERVICE_ID_SELECTED
  
  if [[ ! $SERVICE_ID_SELECTED  =~ ^[0-9]+$ ]]
  then
    #send main menu   
    MAIN_MENU "I could not find that service. What would you like today?"
  else
    SERVICE_NAME=$($PSQL "SELECT name FROM services WHERE service_id=$SERVICE_ID_SELECTED")
    if [[ -z $SERVICE_NAME ]]
    then
      #send main menu   
      MAIN_MENU "I could not find that service. What would you like today?"
    else
      CUSTOMER
    fi
  fi
 
}

MAIN_MENU
