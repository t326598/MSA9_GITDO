<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Shop</title>
	<jsp:include page="/layout/meta.jsp" /> <jsp:include page="/layout/link.jsp" />
</head>
<body>   
	<% String root = request.getContextPath(); %>
	
	<jsp:include page="/layout/header.jsp" />
	<div class="px-4 py-5 my-5 text-center">
		<h1 class="display-5 fw-bold text-body-emphasis">회원 정보</h1>
		<%
		String msg = request.getParameter("msg");
		if(msg.equals(0)){
			%>	
			<p>로그인 성공</p>
	<% 
		}
	
		if(msg.equals(1)){
			%>	
			<p>로그인 실패</p>
	<% 
		}
		if(msg.equals(2)){
			%>	
			<p>회원가입 성공</p>
	<% 
		}
		if(msg.equals(3)){
			%>	
			<p>회원가입 실패</p>
	<% 
		}
		%>
		
		
		
	</div>
	<!-- 회원 가입/수정/탈퇴 완료 -->
	<div class="container mb-5">
		
	</div>
	
	<jsp:include page="/layout/footer.jsp" />
	<jsp:include page="/layout/script.jsp" />
	

</body>
</html>







