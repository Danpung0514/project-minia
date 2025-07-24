package minia.dao;

public class UserDao {
	
	// Connection Pool을 관리하기 위한 메서드 -> UserDao.getInstance()로 사용
	private static UserDao dao;
	static {
		dao = new UserDao();
	}
	private UserDao () {}
	public static UserDao getInstance() {
		return dao;
	}
	
	
	
}
