ls Databases
echo "Enter Database name : "
read Database_name 
ls Databases/$Database_name 
echo "Enter Table name : "
read table_name 
select i in "Whole text" "specific text"
do
if [[ $i == "Whole text" ]]
then 
cat Databases/$Database_name/$table_name.table
break
else 
echo "Enter the text"
read x
grep "$x"  Databases/$Database_name/$table_name.table
break
fi 
done
