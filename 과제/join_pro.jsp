<!-- 
	회원 가입 처리
 -->
<%@page import="shop.dao.UserRepository"%>
<%@page import="shop.dto.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
int result = 0;
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String pwconfirm = request.getParameter("pw_cinfirm");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String year = request.getParameter("year");
	String month = request.getParameter("month");
	String day = request.getParameter("day");
	String email1 = request.getParameter("email1");
	String email2 = request.getParameter("email2");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	
	String birth = year + "-" + month + "-" + day;
	String email = email1 + "@" + email2;
			
	
	if(!pw.equals(pwconfirm)){
		%>
		 <script>
        alert("비밀번호와 비밀번호 확인이 일치하지 않습니다.");
        history.back(); // 이전 페이지로 돌아감
 		   </script>
		<% 
		return;
	}
	
	
	User user = new User();
	
	user.setId(id);
	user.setPassword(pw);
	user.setName(name);
	user.setGender(gender);
	user.setBirth(birth);
	user.setMail(email);
	user.setPhone(phone);
	user.setAddress(address);
	
	UserRepository userrepository = new UserRepository();
	
	
	result = userrepository.insert(user);

	if(result > 0){
		response.sendRedirect("complete.jsp?msg=2");
		}
	else{
		response.sendRedirect("complete.jsp?msg=3");
	}
	
	
%>
    
    

    
    
    
    
    
    