<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" type="text/css" href="sns.css">

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f0f0;
        color: #333;
    }

    .container {
        max-width: 400px;
        margin: auto;
        padding: 20px;
        background-color: #fff;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    label {
        display: block;
        margin-bottom: 5px;
    }

    input[type=text], input[type=password], input[type=email] {
        width: calc(100% - 22px);
        padding: 10px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
        font-size: 16px;
    }

    button {
        width: 100%;
        padding: 10px;
        background-color: #007bff;
        border: none;
        color: white;
        border-radius: 4px;
        cursor: pointer;
        font-size: 16px;
    }

    button:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
    
    <div class="container">
        <h2>로그인</h2>
            <form action="index.jsp" method="sns.posts">
                아이디: <input type="text" name="username" required><br>
                비밀번호: <input type="password" name="password" required><br>
            <input type="submit" value="로그인">
        </form>
    </div>
</body>
</html>
