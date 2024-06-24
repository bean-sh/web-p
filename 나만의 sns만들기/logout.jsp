<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<%
    HttpSession session = request.getSession(false);
    if (session != null) {
        session.invalidate();
    }
    response.sendRedirect("index.jsp"); // 로그아웃 후 홈 화면으로 리다이렉트
%>
