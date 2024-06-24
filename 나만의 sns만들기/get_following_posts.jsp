<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*" %>
<%
    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    String sql = "SELECT * FROM sns.posts WHERE user_id IN (SELECT following_id FROM sns.follows WHERE follower_id = ?) ORDER BY created_at DESC";
    
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/boardDB", "root", "0229");

        pstmt = conn.prepareStatement(sql);
        pstmt.setInt(1, 1); // 현재 로그인한 사용자의 ID (임의로 1로 설정)

        rs = pstmt.executeQuery();
        while (rs.next()) {
            out.println("글 번호: " + rs.getInt("post_id") + "<br>");
            out.println("제목: " + rs.getString("title") + "<br>");
            out.println("내용: " + rs.getString("content") + "<br>");
            out.println("작성 시간: " + rs.getTimestamp("created_at") + "<br>");
            out.println("<hr>");
        }
    } catch (Exception e) {
        out.println("Exception: " + e.getMessage());
    } finally {
        if (rs != null) rs.close();
        if (pstmt != null) pstmt.close();
        if (conn != null) conn.close();
    }
%>
