/**
 * 
 */
package user.biz;

import user.dao.UserDao;
import user.entity.User;

/**
 * 用户管理类
 * @author zhangzhizhi
 *
 */
public class UserManager {
	UserDao userDao = new UserDao();
	/**
	 * 检查登录用户名和密码是否正确
	 * @param user 用户对象
	 * @return 登录成功与否
	 */
	public boolean login(User user){
		user = userDao.fineUserByUsernamePassword(user);
		if (user != null){
			return true;
		}
		else {
			return false;
		}
	}
	public User fineUserByUsernamePassword(User user){
		return userDao.fineUserByUsernamePassword(user);
	}
}
