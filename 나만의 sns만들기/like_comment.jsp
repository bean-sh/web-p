<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>댓글 좋아요</title>
</head>
<body>
    <h2>댓글 좋아요</h2>
    <form action="like_comment_process.jsp" method="sns.posts">
        댓글 번호: <input type="text" name="comment_id" required><br>
        <input type="submit" value="좋아요">
    </form>
</body>
</html>
