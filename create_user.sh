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
echo "Enter the username"
read x
check=$(cat DB_admins.db | grep $x)
if [[  -z $check ]]
then
echo $x>>DB_admins.db
echo $x " is created"
else
echo "This user is resigtered before"
fi
fi
  
