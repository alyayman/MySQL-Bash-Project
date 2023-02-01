ls Databases
echo "Enter Database name : "
read Database_name 
ls Databases/$Database_name 
cd Databases/$Database_name
echo "Enter Table name : "
read table_name
cat $table_name.table 
echo "Enter the text"
read text

grep -v "$text" $table_name.table > tmp
cat tmp > $table_name.table
sed -i '/^$/d' $table_name.table
cat $table_name.table

