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
<%

	ProductRepository pr = new ProductRepository();
	List<Product> prList = pr.list();



%>

<div class="px-4 py-5 my-5 text-center">
	<h1 class="display-5 fw-bold text-body-emphasis">장바구니</h1>
	<div class="col-lg-6 mx-auto">
		<p class="lead mb-4">장바구니 목록 입니다.</p>
	</div>
</div>
<div class="container order">
	<!-- 장바구니 목록 -->
	<table class="table table-striped table-hover table-bordered text-center align-middle">
		<thead>
			<tr class="table-primary">
				<th>상품</th>
				<th>가격</th>
				<th>수량</th>
				<th>소계</th>
				<th>비고</th>
			</tr>
		</thead>
		
		상품명 출력하고 product에서 아이디 비교해서 
		<tbody>
			<tr>
				<td>상품명</td>
				<td>2000</td>
				<td>2</td>
				<td>4000</td>
				<td></td>
			</tr>
		</tbody>
		<tfoot>
			<tr>
				<td></td>
				<td></td>
				<td>총액</td>
				<td id="cart-sum">100000</td>
				<td></td>
			</tr>
		</tfoot>
	</table>
</div>


</body>
</html>