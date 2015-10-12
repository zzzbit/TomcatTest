package user.entity;

public class User {

	/**
	 * 用户信息实体类(POJO)
	 * 日期：2013-04-12
	 * @param args
	 */
	private int id;
	private String username;
	private String password;
	/**
	 * @return 用户编号
	 */
	public int getId() {
		return id;
	}
	/**
	 * @param id 用户编号
	 */
	public void setId(int id) {
		this.id = id;
	}
	/**
	 * @return the 用户名
	 */
	public String getUsername() {
		return username;
	}
	/**
	 * @param username 用户名
	 */
	public void setUsername(String username) {
		this.username = username;
	}
	/**
	 * @return the 密码
	 */
	public String getPassword() {
		return password;
	}
	/**
	 * @param password 密码
	 */
	public void setPassword(String password) {
		this.password = password;
	}
	
}
