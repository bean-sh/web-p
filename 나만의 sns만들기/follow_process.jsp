<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    String following_id = request.getParameter("following_id");

    Connection conn = null;
    PreparedStatement pstmt = null;
    String sql = "INSERT INTO sns.follows (follower_id, following_id) VALUES (?, ?)";
    
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/boardDB", "root", "0229");

        pstmt = conn.prepareStatement(sql);
        pstmt.setInt(1, 1); // 현재 사용자의 ID (임의로 1로 설정)
        pstmt.setInt(2, Integer.parseInt(following_id));

        int rowsInserted = pstmt.executeUpdate();
        if (rowsInserted > 0) {
            out.println("팔로우 추가 완료");
        } else {
            out.println("팔로우 추가 실패");
        }
    } catch (Exception e) {
        out.println("Exception: " + e.getMessage());
    } finally {
        if (pstmt != null) pstmt.close();
        if (conn != null) conn.close();
    }
%>
