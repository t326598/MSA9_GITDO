<%@page import="shop.dto.Ship"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%
    int result = 0;
    String name = request.getParameter("name");
    String ship = request.getParameter("ship");
    String conutry = request.getParameter("country");
    String addresscode = request.getParameter("address_code");
    String address = request.getParameter("address");
    String phone = request.getParameter("phone");
    
    Ship sh = new Ship();
    
    sh.setShipName(name);
    sh.setDate(ship);
    sh.setCountry(conutry);
    sh.setZipCode(addresscode);
    sh.setAddress(address);
    sh.setPhone(phone);
    
    
    %>