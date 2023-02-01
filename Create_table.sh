user=$(whoami)

var=$(cat DB_admins.db | grep $user)
if [[ ! -z $var ]]

then
admin=1
else
        echo "You are not resigtered as admin"
fi
if [[ admin -eq 1 ]]
then 
ls Databases
echo "Enter the database name: " 
read x
if [[ ! -z $(cat Databases/$x/owner.txt  | grep $user) ]]

then  
echo "Type the name of the table:"
read table_name 
echo "Number of the columns:"
read no_columns
if [[ ! -z $(ls Databases/$x  | grep $table_name) ]] 
then 
echo "This table is already created"
else 
cd Databases/$x/
touch "$table_name.table"
columns=""
for (( c=1; c<=$no_columns; c++ ))
do
echo "Name of the columns"
read y  
if [[ $c -eq 1 ]]
then 
columns="$y"
else 
columns+=",$y"
fi
done
echo $columns >> $table_name.table
cat $table_name.table
fi
else
echo "you must be the owner of the database to add table"
fi

fi



