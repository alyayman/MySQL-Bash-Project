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
rm -r Databases/$x
echo "Database $x is removed"
else 
echo "The owner only can remove the database"
fi
fi



