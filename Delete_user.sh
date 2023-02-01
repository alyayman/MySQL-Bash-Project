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
echo $(cat DB_admins.db)
echo "Enter the username you want to delet" 
read x
if [[  $x == "Oracle" ]]
then
echo "Oracle can't be deleted"
else
sed -i "/$x/d" DB_admins.db
sed -i '/^$/d' DB_admins.db
cat DB_admins.db
echo "User $x is deleted"
fi
fi

