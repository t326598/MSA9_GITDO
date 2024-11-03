<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Shop</title>
</head>
<body>
<%String root = request.getContextPath(); %>
<div class="px-4 py-5 my-5 text-center">
<h1 class="display-5 fw-bold text-body-emphasis">배송정보</h1>
<form action="ship_pro.jsp" method="post">
<div class="input-group mb-3 row">
						<label class="input-group-text col-md-2" id="code">성명</label>
						<input type="text" class="form-control col-md-10" 
							   name="name" placeholder="" />
					</div>
					<div class="input-group mb-3 row">
						<label class="input-group-text col-md-2" id="code">배송일</label>
						<input type="text" class="form-control col-md-10" 
							   name="ship" placeholder="" />
					</div>
					<div class="input-group mb-3 row">
						<label class="input-group-text col-md-2" id="code">국가명</label>
						<input type="text" class="form-control col-md-10" 
							   name="country" placeholder="" />
					</div>
					<div class="input-group mb-3 row">
						<label class="input-group-text col-md-2" id="code">우편번호</label>
						<input type="text" class="form-control col-md-10" 
							   name="address_code" placeholder="" />
					</div>
					<div class="input-group mb-3 row">
						<label class="input-group-text col-md-2" id="code">주소</label>
						<input type="text" class="form-control col-md-10" 
							   name="address" placeholder="" />
					</div>
					<div class="input-group mb-3 row">
						<label class="input-group-text col-md-2" id="code">전화번호</label>
						<input type="text" class="form-control col-md-10" 
							   name="phone" placeholder="" />
					</div>
					<div class="d-grid gap-2 mt-5 mb-5 d-md-flex justify-content-md-between">
				<a href="<%= root%>/shop/index.jsp" class="btn btn-lg btn-secondary">이전</a>
				<a href="<%= root%>/shop/index.jsp" class="btn btn-lg btn-secondary">취소</a>
				<input type="submit" class="btn btn-lg btn-primary" value="등록" />
			</div>	
			</form>

</div>
</body>
</html>