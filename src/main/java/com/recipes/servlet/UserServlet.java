package com.recipes.servlet;

import com.recipes.dao.UserDAO;
import com.recipes.model.User;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/register")
public class UserServlet extends HttpServlet {
	private UserDAO userDAO = new UserDAO();

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username = req.getParameter("username");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		User user = new User(0, username, email, password, "USER");
		boolean result = userDAO.addUser(user);
		if (result) {
			resp.getWriter().write("User registered successfully!");
		} else {
			resp.getWriter().write("Failed to register user.");
		}
	}
}