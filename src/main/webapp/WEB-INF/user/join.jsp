<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    response.setHeader("Content-Type", "text/html; charset=utf-8"); // 한글 처리

    // 1. 파싱
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String email = request.getParameter("email");
    System.out.println("username : " + username);
    System.out.println("password : " + password);
    System.out.println("email : " + email);

    // 2. 유효성 검사 (1000줄 됨)
    if (username.length() < 3 || username.length() > 10) {
        response.getWriter().println("<h1>username 글자수가 3~10여야 합니다.</h1>");
        return;
    }
        response.setStatus(302);
        response.setHeader("Location","/main.do");
        response.setHeader("clock","/12pm");

%>