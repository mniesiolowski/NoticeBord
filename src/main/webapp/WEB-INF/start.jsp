
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form"
           uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>

</head>
<body><center>
    <form:form method="post" modelAttribute="test">


        <a href="<c:url value="/list-books"/>"><img border="0" alt="Dodaj Ksiazke" src="https://www.iconexperience.com/_img/v_collection_png/256x256/shadow/book_blue_view.png" width="100" height="100"></a>
        <a href="<c:url value="/search-books"/>"><img border="0" alt="Rezerwuj książke" src="https://www.iconexperience.com/_img/v_collection_png/256x256/shadow/book_blue_preferences.png" width="100" height="100"></a>
        <a href="<c:url value="/list-reserved"/>"><img border="0" alt="Rezerwacje" src="https://www.iconexperience.com/_img/v_collection_png/256x256/shadow/books_blue_preferences.png" width="100" height="100"></a>
        <a href="<c:url value="/add-checkout"/>"><img border="0" alt="Wypożyczenie" src="http://icons.iconarchive.com/icons/mattahan/umicons/256/Arrow-right-icon.png" width="100" height="100"></a>
        <a href="<c:url value="/list-checkout"/>"><img border="0" alt="Zwrot" src="https://www.iconexperience.com/_img/v_collection_png/256x256/shadow/clock_history.png" width="100" height="100"></a>
        <a href="<c:url value="/add-user"/>"><img border="0" alt="Dodaj Czytelnika" src="https://d1nhio0ox7pgb.cloudfront.net/_img/v_collection_png/256x256/shadow/security_agent_add.png" width="100" height="100"></a>
        <a href="<c:url value="/add-worker"/>"><img border="0" alt="Dodaj Pracownika" src="https://d1nhio0ox7pgb.cloudfront.net/_img/v_collection_png/256x256/shadow/genius.png" width="100" height="100"></a>
        <a href="<c:url value="/adding"/>"><img border="0" alt="Dodaj Pracownika" src="http://icons.iconarchive.com/icons/iconmoon/viva/128/Control-Panel-icon.png" width="100" height="100"></a>

    </form:form>
    <button>KLI</button>
</center>
</body>
