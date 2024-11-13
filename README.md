# Online Recipe Sharing Platform

## Introduction

The **Online Recipe Sharing Platform** is a Java-based web application that enables users to create, share, browse, and discover a variety of recipes. The platform fosters a community where users can share culinary creations, explore others' recipes, and interact through comments and ratings. The project includes user registration and login, recipe posting, categorization, search functionality, and an admin interface for content moderation.

## Table of Contents
- [Project Structure](#project-structure)
- [Features](#features)
- [Reviews and Development logs](#reviews-and-development-logs)
- [Technology Stack](#technology-stack)
- [Installation](#installation)
- [Troubleshooting](#troubleshooting)
- [Usage](#usage)
- [Database Schema](#database-schema)
- [Review Process & Deliverables](#review-process--deliverables)
- [License](#license)
  
## Project Structure
  ```bash
  RecipeSharingPlatform/
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   └── com/recipes/
│   │   │       ├── controller/
│   │   │       ├── dao/
│   │   │       └── model/
│   │   ├── resources/
│   │   └── webapp/
│   │       ├── WEB-INF/
│   │       │   └── web.xml
│   │       ├── css/
│   │       ├── js/
│   │       ├── images/
│   │       └── index.jsp
├── pom.xml
└── README.md
 ```

## Features

- **User Registration & Authentication**: Users can register and log in to access platform features.
- **Recipe Posting**: Users can post recipes with details such as ingredients, instructions, and images.
- **Recipe Categorization**: Recipes are organized by categories for easier browsing.
- **Recipe Browsing & Search**: Users can browse recipes by category or search for specific recipes.
- **Commenting & Rating**: Users can leave comments and ratings on recipes.
- **Recipe Management**: Users can edit or delete their own recipes.
- **Admin Panel**: Administrators can manage users, review and moderate recipe content, and configure system settings.

## Reviews and Development Logs
This project includes two major reviews that document its development progress and testing.

### Review 1
- **Focus**: Initial project setup, basic features implementation (user registration, login, and recipe posting).
- **Testing**: Database setup, basic functionality testing of user registration and login.
- **Issues Resolved**: SQLSyntaxErrorException, SQLIntegrityConstraintViolationException.

### Review 2
- **Focus**: Additional features, improvements, and error handling.
- **Testing**: Thorough testing of new features, fixing deployment issues with Tomcat.
- **Known Issues**: Issues with static file paths (HTML, CSS, JS loading) that were resolved through correct project structure and resource path configuration.
  
## Technology Stack

- **Backend**: Java with Java Servlets or Spring Boot for business logic and API management
- **Frontend**: HTML, CSS (Bootstrap), JavaScript for form validation and dynamic interactions
- **Database**: MySQL for storing user data, recipes, comments, and ratings
- **JSP (JavaServer Pages)**: Used for rendering dynamic content in the web interface
- **JDBC**: For database connectivity and data access operations

## Installation

### Prerequisites
- **Java Development Kit (JDK)**
- **Apache Tomcat** (for Servlet-based deployment)
- **MySQL** (for database management)
- **Maven** (for dependency management)

### Steps
1. **Clone the Repository**:
   ```bash
   git clone https://github.com/btomar/recipe-sharing-platform.git

2. **Import the project into Eclipse**:
- ***Open Eclipse***
- ***Go to File > Import > Existing Maven Projects.***
- ***Select the project directory and finish the import.***

3. **Configure Apache Tomcat in Eclipse**:
- ***Add a new Server and select the Tomcat installation directory.***
- ***Right-click on Tomcat in the Servers tab, select Add and Remove..., and add the project.***

4. **Deploy the Project**:
- ***ight-click on the project and select Run on Server to start the application.***

## Troubleshooting

###If you encounter a 404 error on deployment, ensure:
- **`The web.xml` file is configured correctly.**
- **Static resources are correctly linked in `index.jsp`.**
- **Tomcat server is correctly configured in Eclipse.**

## Usage

1. **User Registration and Login**: ***Start by creating an account, then log in.***
2. **Post a Recipe**: ***Use the "Add Recipe" option to share a new recipe with the community.***
3. **Browse Recipes**: ***Browse or search for recipes by category or keyword.***
4. **Comment and Rate**: ***Leave comments and ratings on recipes posted by other users.***

## Database Schema

The MySQL database schema for this project consists of tables for users, recipes, comments, and ratings. Here is a description of each table and its fields:

### 1. **users**
   - `user_id` (INT, Primary Key, AUTO_INCREMENT): Unique identifier for each user.
   - `username` (VARCHAR(50), UNIQUE): Username chosen by the user.
   - `password` (VARCHAR(255)): Encrypted password.
   - `email` (VARCHAR(100), UNIQUE): Email address of the user.
   - `created_at` (TIMESTAMP): Date and time of user account creation.

### 2. **recipes**
   - `recipe_id` (INT, Primary Key, AUTO_INCREMENT): Unique identifier for each recipe.
   - `user_id` (INT, Foreign Key): ID of the user who posted the recipe.
   - `title` (VARCHAR(255)): Title of the recipe.
   - `description` (TEXT): Description of the recipe.
   - `category` (VARCHAR(50)): Category (e.g., "Dessert", "Main Course").
   - `created_at` (TIMESTAMP): Date and time the recipe was posted.

### 3. **ingredients**
   - `ingredient_id` (INT, Primary Key, AUTO_INCREMENT): Unique identifier for each ingredient.
   - `recipe_id` (INT, Foreign Key): ID of the recipe to which the ingredient belongs.
   - `name` (VARCHAR(255)): Name of the ingredient.
   - `quantity` (VARCHAR(50)): Quantity of the ingredient.

### 4. **steps**
   - `step_id` (INT, Primary Key, AUTO_INCREMENT): Unique identifier for each step.
   - `recipe_id` (INT, Foreign Key): ID of the recipe to which the step belongs.
   - `description` (TEXT): Detailed description of the step.

### 5. **comments**
   - `comment_id` (INT, Primary Key, AUTO_INCREMENT): Unique identifier for each comment.
   - `recipe_id` (INT, Foreign Key): ID of the recipe to which the comment belongs.
   - `user_id` (INT, Foreign Key): ID of the user who commented.
   - `content` (TEXT): Content of the comment.
   - `created_at` (TIMESTAMP): Date and time of the comment.

### 6. **ratings**
   - `rating_id` (INT, Primary Key, AUTO_INCREMENT): Unique identifier for each rating.
   - `recipe_id` (INT, Foreign Key): ID of the recipe that was rated.
   - `user_id` (INT, Foreign Key): ID of the user who rated the recipe.
   - `rating` (INT): Rating score (e.g., 1 to 5).
   - `created_at` (TIMESTAMP): Date and time of the rating.

This schema supports the core functionality of the platform, including user management, recipe posting, ingredient and step tracking, commenting, and rating.

## Review Process & Deliverables

## License
 ```bash
This `README.md` now includes a **Database Schema** section that details the structure of each table and its fields, supporting core functionality like user management, recipe posting, comments, and ratings. This should give developers a comprehensive guide for understanding and contributing to the project.
 ```
