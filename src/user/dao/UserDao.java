/**
 * 
 */
package user.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import user.entity.User;

/**
 * �û����ݷ��ʲ�
 * @author zhangzhizhi
 *
 */
public class UserDao {
	/**
	 * �����û�������������û�
	 * @param user
	 * @return
	 */
	public User fineUserByUsernamePassword(User user) {
		String dbName = "TomcatTest";
		String usrName = "sa";
		String pwd = "20091743";
		String url;
		// 1.ע������
		try {
			// Class.forName("com.mysql.jdbc.Driver");
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// 2.�������
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet rs = null;
		// url = "jdbc:mysql://localhost:3306/" + dbName;
		try {
			url = "jdbc:sqlserver://localhost:1433;DatabaseName=" + dbName;
			connection = DriverManager.getConnection(url,
					usrName, pwd);

			preparedStatement = connection.prepareStatement("select * from myuser where username=? and password=?");
			preparedStatement.setString(1, user.getUsername());
			preparedStatement.setString(2, user.getPassword());
			rs = preparedStatement.executeQuery();
			// 5.��ʾ���������
			if (rs != null && rs.next()){
				user.setId(rs.getInt("id"));
				return user;
			}
			// 6.�ͷ���Դ
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			try {
				rs.close();
				preparedStatement.close();
				connection.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return null;
	}
}
