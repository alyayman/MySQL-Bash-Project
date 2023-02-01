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
	echo "Enter the database name: " 
	read x
	mkdir -p Databases/$x
	cd Databases/$x
	touch 'owner.txt'
	echo "User $user create this database $x">owner.txt
fi



