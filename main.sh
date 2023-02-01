echo "Hello $whoami , Please type what to u want from the list"
select x in "Create Database user" "Delete a Database user" "Create new Database" "Delete a database" "Create a new table" "insert a new row" "select data from table" "delete row"
do 
if [[ $x == "Create Database user" ]]
then
bash create_user.sh
elif [[ $x == "Delete a Database user" ]]
then
bash number2.sh 
elif [[ $x == "Create new Database" ]]
then 
bash number3.sh
elif [[ $x == "Delete a database" ]]
then 
bash number4.sh
elif [[ $x == "Create a new table" ]]
then
bash fifth.sh 
elif [[ $x == "insert a new row" ]]
then 
bash sixth.sh
elif [[ $x == "select data from table" ]]
then 
bash seventh.sh
elif [[ $x == "delete row" ]]
then 
bash last.sh
fi 
done 
