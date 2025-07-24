<%@page import="minia.dao.UserDao"%>
<%@page import="minia.dto.UserDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<%
	int num = 21;
	UserDto dto = UserDao.getInstance().getByNum(num);

%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/user/info.jsp</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
</head>

<body class="bg-light">
  <div class="container mt-5">
    <div class="row justify-content-center">
      <div class="col-md-8">

        <div class="card shadow-sm">
          <div class="card-body">
            <div class="d-flex flex-column align-items-center text-center">
              <img src="https://via.placeholder.com/150" alt="프로필사진" class="profile-img mb-3">
              <h4 class="mb-1"><%=dto.getUserName() %></h4>
              <p class="text-muted mb-3"></p>
            </div>

            <hr>

            <div class="px-3">
              <div class="mb-3">
                <strong>이름:</strong> <%=dto.getUserName() %>
              </div>
              <div class="mb-3">
                <strong>이메일:</strong> <%=dto.getEmail() %>
              </div>
              <div class="mb-3">
                <strong>주소:</strong> <%=dto.getAddr() %>
              </div>
              <div class="mb-3">
                <strong>수정일:</strong> <%=dto.getUpdatedAt() %>
              </div>
              <div class="mb-3">
                <strong>생성일:</strong> <%=dto.getCreatedAt() %>
              </div>
            </div>

            <div class="text-end px-3 pb-2">
              <a href="${pageContext.request.contextPath}/user/edit.jsp?num=<%=num %>" class="btn btn-primary">정보 수정</a>
            </div>
          </div>
        </div>

      </div>
    </div>
  </div>

</body>
</html>