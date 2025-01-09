package com.recipes.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.recipes.dao.UserDAO;
import com.recipes.model.User;
import com.recipes.util.DatabaseConnection;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	UserDAO dao;

	public UserServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	public void init() {
		dao = new UserDAO();

	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action = request.getServletPath();

		switch (action) {

		case "/new":
			showNewForm(request, response);
			break;
		case "/insert":
			insertUser(request, response);
			break;
		case "/list":
			listUser(request, response);
			break;
		case "/delete":
			deleteUser(request, response);
			break;
		case "/edit":
			editUser(request, response);
			break;
		case "/view":
			viewUser(request, response);
			break;
		case "/update":
			updateUser(request, response);
			break;
		case "/login":
			login(request, response);
			break;
		case "/loginprocess":
			try {
				loginProcess(request, response);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			break;
		case "/logout":
			logout(request, response);
			break;

		}
	}

	public void showNewForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		RequestDispatcher dispatcher = request.getRequestDispatcher("register.jsp");
		dispatcher.forward(request, response);
	}

	public void insertUser(HttpServletRequest request, HttpServletResponse response) throws IOException {

		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String role = request.getParameter("username");
		String password = request.getParameter("password");

		User user = new User(username, email, password, role);
		dao.addUser(user);
		response.sendRedirect("list");

	}

	public void listUser(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (isLoggedIn(request, response)) {
			List<User> users = dao.selectAllUsers();
			request.setAttribute("listuser", users);
			RequestDispatcher dispatcher = request.getRequestDispatcher("user-list.jsp");
			dispatcher.forward(request, response);
		} else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
			dispatcher.forward(request, response);
		}
	}

	public Boolean isLoggedIn(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession httpSession = request.getSession();

		if (httpSession.getAttribute("status") != null) {
			return true;
		} else {
			return false;
		}
	}

	public void deleteUser(HttpServletRequest request, HttpServletResponse response) {
		int id = Integer.parseInt(request.getParameter("id"));
		UserDAO dao = new UserDAO();
		try (Connection connection = DatabaseConnection.getConnection()) {
			dao.deleteUser(id);
			response.sendRedirect("list");
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

	}

	public void editUser(HttpServletRequest request, HttpServletResponse response) {
		int id = Integer.parseInt(request.getParameter("id"));
		UserDAO dao = new UserDAO();
		try (Connection connection = DatabaseConnection.getConnection()) {
			User user = dao.selectUser(id);
			request.setAttribute("user", user);
			RequestDispatcher dispatcher = request.getRequestDispatcher("edit.jsp");
			dispatcher.forward(request, response);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

	public void viewUser(HttpServletRequest request, HttpServletResponse response) {
		int id = Integer.parseInt(request.getParameter("id"));
		UserDAO dao = new UserDAO();
		try (Connection connection = DatabaseConnection.getConnection()) {
			User user = dao.selectUser(id);
			request.setAttribute("user", user);
			RequestDispatcher dispatcher = request.getRequestDispatcher("view.jsp");
			dispatcher.forward(request, response);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

	public void updateUser(HttpServletRequest request, HttpServletResponse response) {

	}

	public void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
		dispatcher.forward(request, response);
	}

	public void loginProcess(HttpServletRequest request, HttpServletResponse response) throws SQLException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		try (Connection connection = DatabaseConnection.getConnection()) {

			PreparedStatement preparedStatement = connection
					.prepareStatement("SELECT * FROM users WHERE email=? and password=?");
			preparedStatement.setString(1, email);
			preparedStatement.setString(2, password);

			ResultSet result = preparedStatement.executeQuery();
			if (result.next()) {
				HttpSession httpSession = request.getSession();
				httpSession.setAttribute("status", "active");
				httpSession.setAttribute("email", email);
				RequestDispatcher dispatcher = request.getRequestDispatcher("welcome.jsp");
				dispatcher.forward(request, response);
			} else {
				HttpSession httpSession = request.getSession();
				httpSession.setAttribute("status", "Inactive");
				RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
				dispatcher.forward(request, response);
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

	}

	public void logout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession httpSession = request.getSession();
		httpSession.invalidate();
		RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
