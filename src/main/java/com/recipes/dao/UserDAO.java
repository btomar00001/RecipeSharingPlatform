package com.recipes.dao;

import com.recipes.model.User;
import com.recipes.util.DatabaseConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDAO {
	public boolean addUser(User user) {
		String sql = "INSERT INTO users (username, email, password, role) VALUES (?, ?, ?, ?)";
		try (Connection connection = DatabaseConnection.getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
			preparedStatement.setString(1, user.getUsername());
			preparedStatement.setString(2, user.getEmail());
			preparedStatement.setString(3, user.getPassword());
			preparedStatement.setString(4, user.getRole());
			preparedStatement.executeUpdate();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}

	public User getUserByEmail(String email) {
		String sql = "SELECT * FROM users WHERE email = ?";
		try (Connection connection = DatabaseConnection.getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
			preparedStatement.setString(1, email);
			ResultSet resultSet = preparedStatement.executeQuery();
			if (resultSet.next()) {
				return new User(resultSet.getInt("id"), resultSet.getString("username"), resultSet.getString("email"),
						resultSet.getString("password"), resultSet.getString("role"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	public User selectUser(int id) {
		String sql = "SELECT * FROM users WHERE id = ?;";
		try (Connection connection = DatabaseConnection.getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
			preparedStatement.setInt(1, id);
			ResultSet resultSet = preparedStatement.executeQuery();
			if (resultSet.next()) {
				return new User(resultSet.getInt("id"), resultSet.getString("username"), resultSet.getString("email"),
						resultSet.getString("password"), resultSet.getString("role"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	public List<User> selectAllUsers() {
		List<User> users = new ArrayList<User>();
		String sql = "SELECT * FROM users;";
		try (Connection connection = DatabaseConnection.getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				int id = resultSet.getInt("id");
				String username = resultSet.getString("username");
				String email = resultSet.getString("email");
				String password = resultSet.getString("password");
				String role = resultSet.getString("role");
				users.add(new User(id, username, email, password, role));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return users;
	}

	public boolean deleteUser(int id) {
		boolean status = false;
		String sql = "DELETE FROM users where id = ?;";
		try (Connection connection = DatabaseConnection.getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
			preparedStatement.setInt(1, id);
			status = preparedStatement.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return status;
	}

	public boolean updateUser(User user) {
		boolean status = false;
		String sql = "UPDATE users SET username = ?, email = ?, password = ?, role = ? WHERE id = ?;";
		try (Connection connection = DatabaseConnection.getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
			preparedStatement.setString(1, user.getUsername());
			preparedStatement.setString(2, user.getEmail());
			preparedStatement.setString(3, user.getPassword());
			preparedStatement.setString(4, user.getRole());
			status = preparedStatement.executeUpdate() > 0;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return status;
	}
}