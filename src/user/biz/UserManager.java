/**
 * 
 */
package user.biz;

import user.dao.UserDao;
import user.entity.User;

/**
 * �û�������
 * @author zhangzhizhi
 *
 */
public class UserManager {
	UserDao userDao = new UserDao();
	/**
	 * ����¼�û����������Ƿ���ȷ
	 * @param user �û�����
	 * @return ��¼�ɹ����
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
