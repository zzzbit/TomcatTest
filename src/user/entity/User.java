package user.entity;

public class User {

	/**
	 * �û���Ϣʵ����(POJO)
	 * ���ڣ�2013-04-12
	 * @param args
	 */
	private int id;
	private String username;
	private String password;
	/**
	 * @return �û����
	 */
	public int getId() {
		return id;
	}
	/**
	 * @param id �û����
	 */
	public void setId(int id) {
		this.id = id;
	}
	/**
	 * @return the �û���
	 */
	public String getUsername() {
		return username;
	}
	/**
	 * @param username �û���
	 */
	public void setUsername(String username) {
		this.username = username;
	}
	/**
	 * @return the ����
	 */
	public String getPassword() {
		return password;
	}
	/**
	 * @param password ����
	 */
	public void setPassword(String password) {
		this.password = password;
	}
	
}
