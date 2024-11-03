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
<a href="editProducts.jsp" class="btn btn-success btn-lg px-4 gap-3">상품 편집</a>
<a href="cart.jsp" class="btn btn-warning btn-lg px-4 gap-3">장바구니</a>
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
				<img src="<%= request.getContextPath() %>/shop/img?id=<%= prList.get(i).getFile() %>" class="w-100 p-2">
			</div>
			<!-- 컨텐츠 영역 -->
			<div class="content">
				<h3 class="text-center"><%= prList.get(i).getName() %></h3>
				<p><%= prList.get(i).getDescription()  %></p>
				<p class="text-end price"><%= prList.get(i).getUnitPrice() %></p>
				<p class="d-flex justify-content-between">
					<a href="cart_pro.jsp?id=<%=prList.get(i).getProductId() %>" class="btn btn-outline-primary"><i class="material-symbols-outlined">shopping_bag</i></a>
					<a href="product.jsp?id=<%=prList.get(i).getProductId() %>" class="btn btn-outline-primary">상세 정보</a>
				</p>
			</div>						
		</div>
		<%
	}
		%>
	</div>
</div>
<script>
        document.getElementById('image').addEventListener('change', function(event) {
            const file = event.target.files[0];
            if (file) {
                const reader = new FileReader();
                reader.onload = function(e) {
                    document.getElementById('uploadedImage').src = e.target.result;
                }
                reader.readAsDataURL(file); // 파일을 읽어 미리보기로 표시
            }
        });
    </script>

</body>
</html>