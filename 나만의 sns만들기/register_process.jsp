<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String email = request.getParameter("email");

    Connection conn = null;
    PreparedStatement pstmt = null;
    String sql = "INSERT INTO users (username, password, email) VALUES (?, ?, ?)";
    
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sns", "root", "0229");

        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, username);
        pstmt.setString(2, password);
        pstmt.setString(3, email);

        int rowsInserted = pstmt.executeUpdate();
        if (rowsInserted > 0) {
            out.println("회원가입 성공");
        } else {
            out.println("회원가입 실패");
        }
    } catch (Exception e) {
        out.println("Exception: " + e.getMessage());
    } finally {
        if (pstmt != null) pstmt.close();
        if (conn != null) conn.close();
    }
%>
