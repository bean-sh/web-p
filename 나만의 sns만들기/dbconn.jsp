<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>

<%
    Connection conn = null;
     
    try {
        String url = "jdbc:mysql://localhost:3306/sns";
        String user = "root";
        String password = "0229";
        
        // MySQL JDBC 드라이버 로드
        Class.forName("com.mysql.cj.jdbc.Driver");
        // 데이터베이스 연결 설정
        conn = DriverManager.getConnection(url, user, password);
        out.println("DB connection established");
    } catch (Exception e) {
        e.printStackTrace();
        out.println("DB connection failed: " + e.getMessage());
    }
%>
