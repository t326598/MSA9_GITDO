 <%@page import="java.io.File"%>
<%@page import="shop.dto.Product"%>
<%@page import="java.util.Iterator"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@page import="shop.dao.ProductRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%
    	String productId = request.getParameter("product_id");
    	ProductRepository pr = new ProductRepository();
    	
    	
    	
    	    DiskFileUpload upload = new DiskFileUpload();
    	    String path = "C:\\UPLOAD";

    	    // 파일 업로드 처리
    	    List<FileItem> items = upload.parseRequest(request);
    	    Iterator<FileItem> params = items.iterator();
    	    
    	    Product product = pr.getProductById(productId); // 기존 게시글 정보 가져오기
    	    
    	    while (params.hasNext()) {
    	        FileItem item = params.next();

    	        if (item.isFormField()) {
    	            String name = item.getFieldName();
    	            String value = item.getString("utf-8");
    	            switch (name) {
    	                case "code":
    	                	product.setProductId(value);
    	                    break;
    	                case "name":
    	                	product.setName(value);
    	                    break;
    	                case "content":
    	                	product.setDescription(value);
    	                    break;
    	                case "make":
    	                	product.setManufacturer(value);
    	                    break;
    	                case "price":
    	                    product.setUnitPrice(Integer.parseInt(value));
    	                    break;
    	                case "category":
    	                    product.setCategory(value);
    	                    break;
    	                case "units_instock":
    	                    product.setUnitsInStock(Integer.parseInt(value));
    	                    break;
    	                case "status":
    	                    product.setCondition(value);
    	                    break;
    	               
    	            }
    	        } else {
    	            String fileName = item.getName();
    	            if (fileName != null && !fileName.isEmpty()) {
    	                fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
    	                product.setFile(path + "\\" + fileName);
    	                File uploadedFile = new File(path + "\\" + fileName);
    	                item.write(uploadedFile); // 파일 저장
    	            }
    	        }
    	    }
	product.setQuantity(0);
    	    // 게시글 업데이트
    	    
    	 int result =  pr.update(product);
    	    
    	 String root = request.getContextPath();
    	 
    	 if(result > 0){
    			System.out.print("수정 성공");
    		response.sendRedirect( root + "/index.jsp");

    		}
    		else if(result < 0){
    			response.sendRedirect(root + "/index.jsp");
    		}

    	    
    %>