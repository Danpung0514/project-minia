<%@page import="minia.dao.UserDao"%>
<%@page import="minia.dto.UserDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%
	int num = Integer.parseInt(request.getParameter("num"));
	UserDto dto = UserDao.getInstance().getByNum(num);

%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/user/edit.jsp</title>
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
              <form action="수정처리URL" method="post" class="p-4">
				  <div class="form-floating mb-3">
				    <input type="text" class="form-control" id="floatingName" name="userName" value="<%=dto.getUserName()%>" placeholder="이름" readonly>
				    <label for="floatingName">이름</label>
				  </div>
				
				  <div class="form-floating mb-3">
				    <input type="email" class="form-control" id="floatingEmail" name="email" value="<%=dto.getEmail()%>" placeholder="이메일">
				    <label for="floatingEmail">이메일</label>
				  </div>
				
				  <div class="form-floating mb-3">
				    <input type="text" class="form-control" id="floatingAddr" name="addr" value="<%=dto.getAddr()%>" placeholder="주소">
				    <label for="floatingAddr">주소</label>
				  </div>
				
				  <div class="form-floating mb-3">
				    <input type="text" class="form-control" id="floatingUpdated" value="<%=dto.getUpdatedAt()%>" readonly>
				    <label for="floatingUpdated">수정일</label>
				  </div>
				
				  <div class="form-floating mb-3">
				    <input type="text" class="form-control" id="floatingCreated" value="<%=dto.getCreatedAt()%>" readonly>
				    <label for="floatingCreated">생성일</label>
				  </div>
				
				  <div class="text-end">
				    <button type="submit" class="btn btn-primary">저장</button>
				  </div>
				</form>
            </div>

            <div class="text-end px-3 pb-2">
            </div>
          </div>
        </div>

      </div>
    </div>
  </div>
  
</body>
</html>