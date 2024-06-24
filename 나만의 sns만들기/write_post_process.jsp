<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.io.*, java.nio.file.*, jakarta.servlet.http.Part" %>
<%
    String title = request.getParameter("title");
    String content = request.getParameter("content");

    Part filePart = null;
    try {
        filePart = request.getPart("file");
    } catch (Exception e) {
        out.println("파일 업로드 처리 중 오류 발생: " + e.getMessage());
    }

    String fileName = null;
    InputStream fileContent = null;
    if (filePart != null) {
        fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
        fileContent = filePart.getInputStream();
    }
    
    Connection conn = null;
    PreparedStatement pstmt = null;
    String sql = "INSERT INTO sns.posts (user_id, title, content, image) VALUES (?, ?, ?, ?)";
    
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/boardDB", "root", "0229");

        pstmt = conn.prepareStatement(sql);
        pstmt.setInt(1, 1); // 사용자 ID (임의로 1로 설정)
        pstmt.setString(2, title);
        pstmt.setString(3, content);
        
        if (fileContent != null) {
            pstmt.setBlob(4, fileContent);
        } else {
            pstmt.setNull(4, Types.BLOB);
        }

        int rowsInserted = pstmt.executeUpdate();
        if (rowsInserted > 0) {
            response.sendRedirect("index.jsp");
        } else {
            out.println("글 작성 실패");
        }
    } catch (Exception e) {
        out.println("Exception: " + e.getMessage());
    } finally {
        if (fileContent != null) fileContent.close();
        if (pstmt != null) pstmt.close();
        if (conn != null) conn.close();
    }
%>
