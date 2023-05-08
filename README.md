 # MySQL Bash Project

This project is a Bash script that simulates a MySQL database. It allows users to create and delete databases and database users, create tables and insert data into them, and select data from tables.
## Getting Started

To get started with this project, clone this repository to your local machine using the following command:

```bash

git clone https://github.com/yourusername/MySQL.git
```


### Prerequisites

This project requires the following:
- Bash shell
- MySQL command line client (for testing purposes only)
### Installing

No installation is required. Simply navigate to the cloned repository directory and run the `main.sh` script.

```bash

cd MySQL
./main.sh
```


## Usage

When the `main.sh` script is run, the screen will be cleared, and the user will be prompted to select an option from a menu by entering its corresponding number. Each option runs a specific script. 
1. **Create Database User:**  This option runs the `create_user.sh` script, which prompts the user to enter a username and password for the new database user. 
2. **Delete Database User:**  This option runs the `delete_user.sh` script, which prompts the user to enter the username of the database user to be deleted. 
3. **Create new Database:**  This option runs the `create_db.sh` script, which prompts the user to enter a name for the new database. 
4. **Delete an existing Database:**  This option runs the `delete_db.sh` script, which prompts the user to enter the name of the database to be deleted. 
5. **Create A new Table inside Database:**  This option runs the `create_table.sh` script, which prompts the user to enter the name of the database in which the new table will be created, as well as the name and data types of each column in the new table. 
6. **Insert A New Row in a Table:**  This option runs the `insert_row.sh` script, which prompts the user to enter the name of the database containing the table to which the new row will be added, the name of the table, and the values to be inserted into each column of the new row. 
7. **Select Data from Table:**  This option runs the `select_data.sh` script, which prompts the user to enter the name of the database containing the table from which data will be selected, the name of the table, and the columns to be selected.
## Testing

To test the functionality of this project, you can use the MySQL command line client to connect to a local MySQL server and run commands against it.
## Contributing

Contributions to this project are welcome. If you find a bug or have a feature request, please open an issue or submit a pull request.
## License

This project is licensed under the MIT License - see the [LICENSE.md](https://chat.openai.com/LICENSE.md)  file for details.
