package minia.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import minia.dto.BoardDto;
import minia.util.DbcpBean;

public class BoardDao {
	private static BoardDao dao;
	
	static {
		dao = new BoardDao();
	}
	
	private BoardDao() {}
	
	public static BoardDao getInstance() {
		return dao;
	}
	
	
	public List<BoardDto> selectAll(){
		List<BoardDto> list = new ArrayList<>();
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = new DbcpBean().getConn();
			// 실행할 sql 문
			String sql = """
					SELECT num, writer, title, createdAt
					FROM board
					ORDER BY num DESC
					""";
			pstmt = conn.prepareStatement(sql);
			// ? 에 값 바인딩
			
			// Select 문 실행하고 결과를 ResultSet 으로 받아온다
			rs = pstmt.executeQuery();
			// 반복문 돌면서 ResultSet 에 담긴 데이터를 추출해서 어떤 객체에 담는다
			while (rs.next()) {
				//
				BoardDto dto = new BoardDto();
				dto.setNum(rs.getInt("num"));
				dto.setNum(rs.getInt("num"));
				dto.setWriter(rs.getString("writer"));
				dto.setTitle(rs.getString("title"));
				dto.setCreatedAt(rs.getString("createdAt"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
			}
		}
	
		
		return list;
		
	}
	
}
















