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
ls Databases/$x
cd Databases/$x
echo "Enter the table name: "
read table_name
header=$(cat $table_name.table |head -1)
echo $header
IFS="," read -a header_array <<< $header
x=$(cut -d "," -f 1  $table_name.table)
IFS=$'\n' read -a prim <<< $x

z=0
row=""
correct=0
for column in "${header_array[@]}"
do 
echo $column
read column_value

if [[ $z -eq 0 ]]
then
if [[ " ${prim[*]} " =~ " $column_value " ]]
then
echo "The primary key constraint"
break
else 
row=$column_value
z=5
continue
fi
fi
if [[ $z -eq 5 ]]
then  
row+=",$column_value"
fi 

done
echo $row >> $table_name.table 
cat $table_name.table
fi
fi




