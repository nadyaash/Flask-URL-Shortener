# Here you connect to a file called database.db that your program will create once you execute this program. This file is the database that will hold all of your application’s data. You then open the schema.sql file and run it using the executescript() method that executes multiple SQL statements at once. This will create the urls table. Finally, you commit the changes and close the connection.
import sqlite3

connection = sqlite3.connect('database.db')

with open('schema.sql') as f:
    connection.executescript(f.read())
    
connection.commit()
connection.close()
