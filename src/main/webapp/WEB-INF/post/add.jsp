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

<center>
    <h1></h1>
    <form:form method="post" modelAttribute="post">
        <label for="title">Tytuł</label><br>
        <form:input path="title"/><form:errors path="title"/><br><br>
        <label for="descreption">Opis</label><br>
        <form:textarea path="descreption"/><form:errors path="descreption"/><br><br>
        <b>Kategoria</b><br><form:errors path="category"/><br>
        <form:checkboxes path="category" itemValue="id" itemLabel="name" items="${categories}"/><br><br>
        <input type="submit" value="Save">
    </form:form>
    <form>
        <input type="button" value="Cancle" onclick="window.location.href='/'" />
    </form>
</center>
</body>
</html>
