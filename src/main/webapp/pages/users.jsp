<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Пользователи</title>
    <style>
        <%@include file="../css/style.css"%>
        <%@include file="../css/users.css"%>
    </style>
</head>
<body>
<%@include file="navbar.jsp" %>

<div>
    <div class="container">
        <div class="test1">
            <h1>Список пользователей</h1>
            <table class="table_users">
                <tr>
                    <th>id</th>
                    <th>login</th>
                    <th>birthday</th>
                    <th>role</th>
                    <th></th>
                </tr>
                <c:forEach items="${users}" var="user">
                <form action="profile" method="get">
                    <tr>
                        <td value="${user.id}">${user.id}</td>
                        <td>${user.login}</td>
                        <td>${user.birthday}</td>
                        <td>${user.role}</td>
                        <td><button type="submit" value="${user.id}" name="id">Перейти</button></td>
                    </tr>
                </form>
                </c:forEach>
            </table>
            <div class="form_wrapper">
                <form action="users" method="post">
                    <input type="text" name="login">
                    <button type="submit">OK!</button>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>
