<%@page import="minia.dao.BoardDao"%>
<%@page import="java.util.List"%>
<%@page import="minia.dto.BoardDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	BoardDto dto = new BoardDto();
	List<BoardDto> list = BoardDao.getInstance().selectAll();

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board/list.jsp</title>

</head>
<body>
<<<<<<< HEAD
	<h1>게시판</h1>
	
	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>글 제목</th>
				<th>작성자</th>
				<th>조회수</th>
				<th>작성일</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
		</tbody>
	</table>
	
	<p>윤제</p>

</body>
</html>