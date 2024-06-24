<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>글 작성</title>
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
    
        input[type=text], textarea {
            width: calc(100% - 22px);
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 16px;
        }
    
        input[type=file] {
            margin-bottom: 10px;
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
        <h1>글 작성 페이지</h1>
        <form action="write_post_process.jsp" method="sns.posts" enctype="multipart/form-data">
            <label for="title">제목:</label><br>
            <input type="text" id="title" name="title" required><br>
        
            <label for="content">내용:</label><br>
            <textarea id="content" name="content" rows="5" required></textarea><br>
        
            <label for="file">그림/영상 업로드:</label><br>
            <input type="file" id="file" name="file" accept="image/*,video/*"><br>
        
            <input type="submit" value="작성">
        </form>
    </div>
</body>
</html>
