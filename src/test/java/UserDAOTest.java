import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertTrue;

import org.junit.jupiter.api.Test;


import com.recipes.dao.UserDAO;
import com.recipes.model.User;

public class UserDAOTest {

	UserDAO dao = new UserDAO();
	
	@Test
	void selectUser_testcase1() {
		User user = dao.selectUser(1);
		assertNotNull(user);
	}
	
	@Test
	void selectAllUser_testcase1() {
		assertTrue(dao.selectAllUsers().size()>0);
	}
	
	@Test
	void sdeletelUser_testcase1() {
		assertFalse(dao.deleteUser(56));
	}
}
