Online Recipe Sharing Platform
An Online Recipe Sharing Platform built using Java, which allows users to create, share, and browse recipes. This project is developed as a Maven project and uses JDBC for database connectivity. It includes basic features like user registration, database management, and data access through DAO classes.

Project Overview
This project is implemented as part of a learning exercise to understand how to create a Java-based web application with a MySQL database. The current stage of the project (Review 1) includes:

Setting up the project structure
Defining the database schema
Implementing JDBC for database connectivity
Creating DAO classes for handling database operations
Features
User Registration: Store user details such as username, email, and password.
Database Integration: A MySQL database is used to store user data.
Data Access Objects (DAO): DAO classes are implemented for handling database operations.
Project Structure
The project structure includes:

css
Copy code
OnlineRecipeSharingPlatform
├── src
│   ├── main
│   │   ├── java
│   │   │   └── com
│   │   │       └── recipes
│   │   │           ├── dao
│   │   │           │   └── UserDAO.java
│   │   │           ├── model
│   │   │           │   └── User.java
│   │   │           └── util
│   │   │               ├── DatabaseConnection.java
│   │   │               └── DatabaseConnectionTest.java
│   ├── test
│   │   └── java
│   │       └── com
│   │           └── recipes
│   │               └── dao
│   │                   └── UserDAOTest.java
└── pom.xml
Key Components
User.java: Represents the User model.
UserDAO.java: Handles CRUD operations related to user data.
DatabaseConnection.java: Manages the database connection.
DatabaseConnectionTest.java and UserDAOTest.java: Test classes for validating the database connection and DAO functionality.
Database Schema
In the recipes_db MySQL database, a users table is created with the following schema:

sql
Copy code
CREATE DATABASE IF NOT EXISTS recipes_db;
USE recipes_db;

CREATE TABLE IF NOT EXISTS users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL
);
Prerequisites
Java JDK 11 or higher
Apache Maven
MySQL: Make sure to have MySQL installed and running, and create a database named recipes_db.
Eclipse for Enterprise Java and Web Developers (or any other IDE you prefer)
Installation
Clone the Repository

Clone this repository to your local machine:

bash
Copy code
git clone https://github.com/your-username/OnlineRecipeSharingPlatform.git
cd OnlineRecipeSharingPlatform
Configure Database

Start your MySQL server.

Create the recipes_db database and the users table using the schema provided above.

Update DatabaseConnection.java with your MySQL credentials:

java
Copy code
private static final String URL = "jdbc:mysql://localhost:3306/recipes_db";
private static final String USER = "your_mysql_username";
private static final String PASSWORD = "your_mysql_password";
Build the Project

Use Maven to build the project:

bash
Copy code
mvn clean install
Run Tests

Verify the setup by running test classes to confirm the database connection and DAO operations:

bash
Copy code
mvn test
Usage
After setting up the project and database, you can use the test classes to add a user and verify data retrieval:

DatabaseConnectionTest.java: Tests if the database connection is working.
UserDAOTest.java: Tests adding a user and fetching user details from the users table.
To add a user, modify UserDAOTest.java as needed, then run the file to see if the user is added successfully.

Troubleshooting
Database Errors: If you encounter database connection errors, ensure your MySQL server is running, and your database credentials in DatabaseConnection.java are correct.
Duplicate Entries: If you get duplicate entry errors, you may need to delete existing users with the same email before re-running tests.
