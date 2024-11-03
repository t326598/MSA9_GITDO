<%@page import="shop.dto.Product"%>
<%@page import="java.util.List"%>
<%@page import="shop.dao.ProductRepository"%>
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
	<title>Insert title here</title>
</head>
<body>
<a href="add.jsp" class="btn btn-primary btn-lg px-4 gap-3">상품 등록</a>
<a href="products.jsp" class="btn btn-warning btn-lg px-4 gap-3">상품 목록</a>
<div class="row gy-4">
<div class="col-md-6 col-xl-4 col-xxl-3">


<%

	ProductRepository pr = new ProductRepository();
	List<Product> prList = pr.list();


	for( int i = 0; i > prList.size(); i++ ){
%>

			<div class="card p-3">
			<!-- 이미지 영역 -->
			<div class="img-content">
				<img src="img?id=<%=prList.get(i).getProductId() %>" class="w-100 p-2">
			</div>
			<!-- 컨텐츠 영역 -->
			<div class="content">
				<h3 class="text-center"><%= prList.get(i).getName() %></h3>
				<p><%= prList.get(i).getDescription()  %></p>
				<p class="text-end price"><%= prList.get(i).getUnitPrice() %></p>
				<p class="d-flex justify-content-between">
					<a href="update.jsp?id=<%=prList.get(i).getProductId() %>" class="btn btn-primary">수정</a>
					<a href="product.jsp?id=<%=prList.get(i).getProductId() %>" class="btn btn-danger">상세 정보</a>
				</p>
			</div>						
		</div>
		<%
	}
		%>
	</div>
</div>

</body>
</html>