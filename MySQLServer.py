import mysql.connector
from mysql.connector import Error

# Establishes a connection using the connect method, and retrieves some server information using get_server_info

try:
    mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="pinrobi20",    
    )

    print(mydb.get_server_info())

    mycursor = mydb.cursor()
    mycursor.execute("SELECT SCHEMA_NAME FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME = 'alx_book_store'")
    database_exists = mycursor.fetchone()

    if not database_exists:
        mycursor.execute("CREATE DATABASE alx_book_store")
        print("Database 'alx_book_store' created successfully.")
    else:
        print("Database 'alx_book_store' already exists.")

    # Close connections
    mycursor.close()
    mydb.close()

    print("Database connection closed.")

except Error as e:
    print(f"Error: '{e}'")