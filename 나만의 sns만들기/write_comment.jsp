<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>댓글 작성</title>
</head>
<body>
    <h2>댓글 작성</h2>
    <form action="write_comment_process.jsp" method="sns.posts">
        글 번호: <input type="text" name="post_id" required><br>
        내용: <textarea name="content" rows="3" cols="50" required></textarea><br>
        <input type="submit" value="작성">
    </form>
</body>
</html>
