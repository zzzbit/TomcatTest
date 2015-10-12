package user.test;

import static org.junit.Assert.*;

import org.junit.Test;

import user.biz.UserManager;
import user.entity.User;

public class UserManagerTest {

	@Test
	public final void testLogin() {
		UserManager userManager = new UserManager();
		User user = new User();
		user.setUsername("zzz"); 
		user.setPassword("20091743");
		boolean result = userManager.login(user);
		assertEquals(result, true);
	}
}
