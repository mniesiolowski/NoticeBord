<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form"
           uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Blog Post - Start Bootstrap Template</title>

        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="css/blog-post.css" rel="stylesheet">

    </head>
<body>
<jsp:include page="../header.jsp"/>
<div class="container">

<div class="row">

<!-- Post Content Column -->
<div class="col-lg-8">

    <!-- Title -->
    <h1 class="mt-4">Registration</h1>

</div>

<div class="panel-body">
<c:url var="post_url" value="/edit-user"/>
<form:form method="post" action="${post_url}" modelAttribute="user">
        <label for="firstName">Imie</label><br>
        <form:input path="firstName"/><form:errors path="firstName"/><br><br>
        <label for="lastName">Nazwisko</label><br>
        <form:input path="lastName"/><form:errors path="lastName"/><br><br>
        <label for="password">Password</label><br>
        <form:input path="password"/><form:errors path="password"/><br><br>
        <label for="username">Username</label><br>
        <form:input path="username"/><form:errors path="username"/><br><br>
        <input type="submit" value="update">
    </form:form>
    <form>
    <input type="button" value="Cancle" onclick="window.location.href='/'"/>
    </form>
    </div>
    </div>
    </div>
    <jsp:include page="../footer.jsp"/>
    </body>
    </html>
