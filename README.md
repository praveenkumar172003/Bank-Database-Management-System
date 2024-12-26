# Bank Management System
## Overview
This Python-based **Bank Management System** is designed to manage customer bank accounts, process transactions like deposits, withdrawals, balance checks, and provide administrative functionalities such as creating and deleting accounts. It uses **MySQL** for database management and the Tabulate library to display data in tabular format.

## Features
### Customer Operations
* **Deposit Money:** Customers can deposit money into their accounts.
* **Withdraw Money:** Customers can withdraw money from their accounts if sufficient funds are available.
* **Balance Inquiry:** Customers can check their current account balance.
### Admin Console
* **Account Creation:** Admins can create new customer accounts.
* **Account Deletion:** Admins can close customer accounts.
* **Account Holders List:** Admins can view all account holders in a tabular format.
* **Admin Account Creation:** A separate option for creating admin accounts with login credentials.
## Requirements
* **Python 3.13**
* **MySQL Database** (Ensure that MySQL is installed and running)
* **Tabulate** library for table formatting:
```
pip install tabulate
```
* MySQL Connector to connect the Python script to the MySQL database:
```
pip install mysql-connector-python
```
## Setup
* Database Configuration:
  * Create a MySQL database named bank.
  * Run the following SQL commands to create the necessary tables:
```
CREATE DATABASE bank;
USE bank;
CREATE TABLE users(
    ACCNO INT PRIMARY KEY,
    NAME VARCHAR(50),
    PHNO VARCHAR(12),
    ACCTYPE VARCHAR(10),
    AMOUNT INT,
    PASS INT
);
CREATE TABLE admins(
    USERNAME VARCHAR(20) PRIMARY KEY,
    NAME VARCHAR(50),
    PASS VARCHAR(12)
);
```
* **Database Insertions:** You can insert some sample data for testing purposes:
```
INSERT INTO admins(USERNAME, NAME, PASS) VALUES('admin1', 'Admin User', 'adminpass');
INSERT INTO users(ACCNO, NAME, PHNO, ACCTYPE, AMOUNT, PASS) VALUES(101, 'John Doe', '9999999999', 'SAVINGS', 5000, 1234);
```
* **Update Database Credentials:** Update the MySQL database credentials (host, port, user, password, database) in the Python script:
```
connect = mysql.connector.connect(
    host="localhost",
    port="3306",
    user="root",
    password="your_password",
    database="bank",
    auth_plugin='mysql_native_password'
)
```
## How to Run
* Clone or download the repository to your local machine.
* Install the required Python packages.
* Run the script:
```
python bank_management.py
```
* You will be presented with a menu:
  1. **Deposit Amount:** Enter account number and amount to deposit.
  2. **Withdraw Amount:** Enter account number, password, and amount to withdraw.
  3. **Balance Enquiry:** Check your current balance.
  4. **Admin Console:** Admin can create, delete, and list accounts.
  5. **Admin Creation:** Create new admin accounts.
  6. **Exit:** Exit the program.
## Database Structure
* Users Table:
  * ACCNO: Account number (Primary key)
  * NAME: Account holder's name
  * PHNO: Phone number
  * ACCTYPE: Account type (CURRENT/SAVINGS)
  * AMOUNT: Account balance
  * PASS: Account password
* Admins Table:
  * USERNAME: Admin username (Primary key)
  * NAME: Admin name
  * PASS: Admin password
