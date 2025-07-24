package minia.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import minia.dto.UserDto;
import minia.util.DbcpBean;

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
	
	
	public UserDto getByNum(int num) {
		UserDto dto = new UserDto();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = new DbcpBean().getConn();
			String sql = """
					SELECT num, userName, email, addr, profileImage, role, updatedAt, createdAt
					FROM minia_users
					WHERE num = ?
					""";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				dto.setNum(rs.getInt("num"));
				dto.setUserName(rs.getString("userName"));
				dto.setEmail(rs.getString("email"));
				dto.setAddr(rs.getString("addr"));
				dto.setProfileImage(rs.getString("profileImage"));
				dto.setRole(rs.getString("role"));
				dto.setUpdatedAt(rs.getString("updatedAt"));
				dto.setCreatedAt(rs.getString("createdAt"));
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		
		return dto;
	}
}




