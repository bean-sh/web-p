<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    String sql = "SELECT * FROM users WHERE username = ? AND password = ?";
    
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/boardDB", "root", "0229");

        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, username);
        pstmt.setString(2, password);

        rs = pstmt.executeQuery();
        if (rs.next()) {
            out.println("로그인 성공");
            // 세션에 사용자 정보 저장하기 (예: HttpSession session = request.getSession(); session.setAttribute("username", username);)
        } else {
            out.println("로그인 실패");
        }
    } catch (Exception e) {
        out.println("Exception: " + e.getMessage());
    } finally {
        if (rs != null) rs.close();
        if (pstmt != null) pstmt.close();
        if (conn != null) conn.close();
    }
%>
