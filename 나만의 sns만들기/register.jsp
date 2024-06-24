<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" type="text/css" href="sns.css">
<style>
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
</style>
</head>
<body>
    <div class="container">
        <h2>회원가입</h2>
        <form action="register_process.jsp" method="sns.posts">
            <label for="username">아이디:</label>
            <input type="text" id="username" name="username" required><br>
            
            <label for="password">비밀번호:</label>
            <input type="password" id="password" name="password" required><br>
            
            <label for="email">이메일:</label>
            <input type="email" id="email" name="email" required><br>
            
            <button type="submit">가입</button>
        </form>
    </div>
</body>
</html>
