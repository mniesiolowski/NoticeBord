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
            <h1 class="mt-4">Login</h1>

        </div>

        <div class="panel-body">
            <form:form method="post" modelAttribute="post">
                <label for="title" class="col-sm-3 control-label">Tytuł</label><br>
                <form:input path="title" class="form-control"/>
                <form:errors path="title" /><br><br>
                <label for="descreption"class="col-sm-3 control-label">Opis</label><br>
                <form:textarea path="descreption" class="form-control"/>
                <form:errors path="descreption"/><br><br>
                <b >Kategoria</b><br><form:errors path="category"/><br>
                <form:checkboxes path="category" itemValue="id" itemLabel="name" items="${categories}"/><br><br>
                <input type="submit" value="Save"  class="btn btn-primary">
                <input type="button" value="Cancle" onclick="window.location.href='/'"  class="btn btn-primary"/>
            </form:form>
        </div>
    </div>
</div>
<jsp:include page="../footer.jsp"/>
</body>
</html>
