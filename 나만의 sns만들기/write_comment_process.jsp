<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    String post_id = request.getParameter("post_id");
    String content = request.getParameter("content");

    Connection conn = null;
    PreparedStatement pstmt = null;
    String sql = "INSERT INTO comments (post_id, user_id, content) VALUES (?, ?, ?)";
    
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/boardDB", "root", "0229");

        pstmt = conn.prepareStatement(sql);
        pstmt.setInt(1, Integer.parseInt(post_id));
        pstmt.setInt(2, 1); // 사용자 ID (임의로 1로 설정)
        pstmt.setString(3, content);

        int rowsInserted = pstmt.executeUpdate();
        if (rowsInserted > 0) {
            out.println("댓글 작성 성공");
        } else {
            out.println("댓글 작성 실패");
        }
    } catch (Exception e) {
        out.println("Exception: " + e.getMessage());
    } finally {
        if (pstmt != null) pstmt.close();
        if (conn != null) conn.close();
    }
%>
