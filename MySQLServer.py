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
    # Create DB if not exist
    mycursor = mydb.cursor()
    mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
    print("Database 'alx_book_store' created successfully!")
    
    # Close connections
    mycursor.close()
    mydb.close()

    print("Database connection closed.")

except Error as e:
    print(f"Error: '{e}'")