<%@page import="shop.dto.Product"%>
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
 <% 
    String productId = request.getParameter("product_id");
    ProductRepository pr = new ProductRepository();
    Product pd = new Product();
    
    if(productId != null){
    	pd = pr.getProductById(productId);
    }
    
    %>

<div class="px-4 py-5 my-5 text-center">
		<h1 class="display-5 fw-bold text-body-emphasis">상품 정보</h1>
		<div class="col-lg-6 mx-auto">
			<p class="lead mb-4">Shop 쇼핑몰 입니다.</p>
			<a href="products.jsp" class="btn btn-primary btn-lg px-4 gap-3">상품목록</a>
			</div>
			<div class="product_main">
			<section class="img">
				 <% if (pd.getFile() != null && !pd.getFile().isEmpty()) { %>
        <img id="uploadedImage" src="<%= request.getContextPath() %>/shop/img?id=<%= pd.getProductId() %>" style="max-width: 400px; height: auto;" />
   			 <% } else { %>
        <p>이미지가 없습니다.</p>
  			  <% } %>
			</section>
			
			<section>
			<h3><%= pd.getName() %></h3>
			<br>
			<p class="product_page">상품ID:  <%= pd.getProductId() %> </p>
			<hr>
			<p class="product_page">제조사:  <%= pd.getManufacturer() %> </p>
			<hr>
			<p class="product_page">분류:  <%= pd.getCategory() %> </p>
			<hr>
			<p class="product_page">상태:  <%= pd.getCondition() %> </p>
			<hr>
			<p class="product_page">재고수:  <%= pd.getAmount() %> </p>
			<hr>
			<p class="product_page">가격:  <%= pd.getUnitPrice() %> </p>
			<hr>
			
			<a href="cart.jsp" class="btn btn-warning btn-lg px-4 gap-3">장바구니</a>
			<a href="order.jsp" class="btn btn-success btn-lg px-4 gap-3">주문하기</a>
			
			</section>
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