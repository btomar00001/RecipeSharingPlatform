import static org.junit.jupiter.api.Assertions.*;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import com.recipes.util.DatabaseConnection;

class DatabaseConnectionTest {

    private Connection connection;

    @BeforeEach
    void setUp() {
        // Initialization before each test if needed
        connection = null;
    }

    @AfterEach
    void tearDown() throws SQLException {
        // Clean up after each test
        if (connection != null && !connection.isClosed()) {
            connection.close();
        }
    }

    @Test
    void testGetConnectionSuccess() {
        try {
            connection = DatabaseConnection.getConnection();
            assertNotNull(connection, "Connection should not be null");
            assertFalse(connection.isClosed(), "Connection should be open");
        } catch (SQLException e) {
            fail("Exception occurred while obtaining connection: " + e.getMessage());
        }
    }

    @Test
    void testInvalidCredentials() {
        // Temporarily modify connection properties for this test
        String originalUser = "root"; // Replace with the user in the actual configuration
        String originalPassword = "password"; // Replace with the password in the actual configuration

        try {
            // Intentionally use incorrect credentials
            connection = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/recipe_platform", 
                "invalidUser", 
                "invalidPassword"
            );
            fail("Expected SQLException due to invalid credentials, but connection was established.");
        } catch (SQLException e) {
            assertTrue(e.getMessage().contains("Access denied"), 
                "Expected an 'Access denied' message in SQLException.");
        }
    }
}
