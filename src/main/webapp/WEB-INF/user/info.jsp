<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form"
           uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>NoticeBoard</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/blog-post.css" rel="stylesheet">

</head>

<body>

<jsp:include page="../header.jsp"/>
<!-- Page Content -->
<div class="container">

    <div class="row">

        <div class="col-lg-3">
            <h1 class="my-4">User Info</h1>
            <div class="list-group">
               <center> <p class="list-group-item">${user.firstName} ${user.lastName}1</p></center>
                <p class="list-group-item">${user.username}</p>
                <p class="list-group-item">${user.id}</p>
                <a class="list-group-item" href="/edit-user">Edit</a>
            </div>

        </div>
        <!-- /.col-lg-3 -->

        <div class="col-lg-9">

            <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner" role="listbox">
                    <div class="carousel-item active">
                        <img class="d-block img-fluid" src="http://placehold.it/900x350" alt="First slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block img-fluid" src="http://placehold.it/900x350" alt="Second slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block img-fluid" src="http://placehold.it/900x350" alt="Third slide">
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
            <div class="row">
                <%--<c:forEach items="${user.post}" var="post">--%>


                    <%--<div class="col-lg-4 col-md-6 mb-4">--%>
                        <%--<div class="card h-50">--%>
                            <%--<a href="/show-item${post.id}"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>--%>
                            <%--<div class="card-body">--%>
                                <%--<h4 class="card-title">--%>
                                    <%--<a href="#">${post.title}</a>--%>
                                <%--</h4>--%>
                                <%--<h5>${post.user.username}</h5>--%>
                                <%--<p class="card-text"> ${post.descreption}</p>--%>
                            <%--</div>--%>

                        <%--</div>--%>
                    <%--</div>--%>
                <%--</c:forEach>--%>
            </div>

        </div>
        <!-- /.row -->

    </div>
    <!-- /.col-lg-9 -->
</div>
<!-- /.row -->


</div>
<!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<jsp:include page="../footer.jsp"/>
</body>

</html>