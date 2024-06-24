<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>SNS 홈</title>
    <style>
        .container {
            max-width: 800px;
            margin: 50px auto;
            text-align: center;
        }
        .btn {
            display: inline-block;
            padding: 10px 20px;
            margin: 10px;
            background-color: #007bff;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>SNS에 오신 걸 환영합니다.</h1>
        <a href="write_post.jsp" class="btn">글 작성하기</a>
        <a href="#" class="btn">목차 보기</a>
        <a href="logout.jsp" class="btn">로그아웃</a>
        
        <hr>
        
        <!-- 포스트 목록 -->
        <c:forEach var="post" items="${posts}">
            <div>
                <h2>${post.title}</h2>
                <p>${post.content}</p>
                <hr>
            </div>
        </c:forEach>
    </div>
</body>
</html>
