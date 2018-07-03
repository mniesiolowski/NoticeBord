<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form"
           uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>

</head>
<body>
<jsp:include page="header.jsp"/>
<div class="container">

    <div class="row">

        <!-- Post Content Column -->
        <div class="col-lg-8">

            <!-- Title -->
            <h1 class="mt-4">Login</h1>

        </div>

        <div class="panel-body">
            <form name="login" action="/login"

                  method="POST">


                <label path="username" class="col-sm-3 control-label"></label>
                <input type="text" path="username" name="username" class="form-control"
                       id="username" placeholder="Login"/>
                <errors path="username" name="username" id="username"/>
                <label path="password" class="col-sm-3 control-label"></label>
                <input type="password" path="password" name="password" class="form-control" id="password"
                       placeholder="Password"/>
                <errors path="password" name="password" id="password"/>
                <button type="submit" name="login" class="btn btn-success btn-sm">
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    Sign in
                </button>
                <button type="reset" name="login" class="btn btn-default btn-sm">
                    Reset
                </button>
            </form>
        </div>
    </div>
</div>
    <jsp:include page="footer.jsp"/>
</body>

</html>