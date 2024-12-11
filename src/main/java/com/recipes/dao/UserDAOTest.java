package com.recipes.dao;

import com.recipes.model.User;

public class UserDAOTest {
    public static void main(String[] args) {
        UserDAO userDAO = new UserDAO();

        // Test adding a user
        User newUser = new User();
        newUser.setUsername("Bhuvaneshwar Pratap");
        newUser.setEmail("user@example.com");
        newUser.setPassword("ffjdjh333");

        boolean result = userDAO.addUser(newUser);
        if (result) {
            System.out.println("User added successfully!");
        } else {
            System.out.println("Failed to add user.");
        }
        
    }
}
