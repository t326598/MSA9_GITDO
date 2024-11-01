<%@page import="shop.dto.Order"%>
<%@page import="java.util.ArrayList"%>
<%@page import="shop.dto.Product"%>
<%@page import="java.util.List"%>
<%@page import="shop.dao.OrderRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String root = request.getContextPath();
    
	 String phone =	request.getParameter("phone");
    String pw = request.getParameter("orderPw");
    
    
    OrderRepository orderRe = new OrderRepository();
    
    List<Product> orderList = orderRe.list(phone, pw);
    	
	// 비회원 주문 내역 세션에 등록 처리
    if (orderList != null && !orderList.isEmpty()) {
        session.setAttribute("orderList", orderList);
        session.setAttribute("phone", phone);
        session.setAttribute("pw", pw);
   
    } else {
        // 주문 내역이 없을 경우 알림 또는 처리
        session.setAttribute("errorMessage", "주문 내역이 없습니다.");
    }
    
    // 주문 내역 페이지로 리다이렉트
    response.sendRedirect(root + "/user/order.jsp");

%>