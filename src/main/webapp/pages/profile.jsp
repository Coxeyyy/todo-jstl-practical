<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 04.02.2024
  Time: 12:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Профиль</title>
    <style>
        <%@include file="../css/style.css"%>
        <%@include file="../css/profile.css"%>
    </style>
</head>
<body>
<%@include file="navbar.jsp" %>

<div>
    <div class="container">
        <div class="test_image">
            <img src="../images/img.png">
        </div>
        <div class="test2">
            <table class="user_profile">
                <ul>
                    <li><b>ID:</b></li>
                    <li><b>Логин:</b></li>
                    <li><b>Пароль:</b></li>
                    <li><b>Дата рождения:</b></li>
                    <li><b>Роль:</b></li>
                </ul>
                    <ul>
                        <li>${userProfile.id}</li>
                        <li>${userProfile.login}</li>
                        <li>${userProfile.password}</li>
                        <li>${userProfile.birthday}</li>
                        <li>${userProfile.role}</li>
                    </ul>
            </table>
        </div>
    </div>
</div>
</body>
</html>
