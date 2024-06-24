<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>팔로우</title>
</head>
<body>
    <h2>팔로우 추가</h2>
    <form action="follow_process.jsp" method="sns.posts">
        팔로우할 사용자 ID: <input type="text" name="following_id" required><br>
        <input type="submit" value="팔로우">
    </form>
</body>
</html>
