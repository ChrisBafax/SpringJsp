<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <!-- Title -->
    <title>Delete Info</title>

    <!-- Style of the page -->
    <jsp:include page="style.jsp"/>
</head>

<body>
<!-- Header of the Page -->
<header>
    <!-- Navbar -->
    <jsp:include page="navbar.jsp"/>
</header>

<div class="container ml-5 mr-5">
    <h1 class="display-1">Delete Info</h1>

    <form action="${pageContext.request.contextPath}/deleteInfo" method="post">
        <div class="mb-3">
            <label for="id" class="form-label">ID:</label>
            <input type="text" name="id" class="form-control" id="id" aria-describedby="id">
        </div>
        <button type="submit" class="btn btn-primary">Delete</button>

        <c:if test="${operation == true}">
            <div class="alert alert-success" role="alert">
                Delete successful.
            </div>
        </c:if>

        <c:if test="${operation == false}">
            <div class="alert alert-danger" role="alert">
                Id not found.
            </div>
        </c:if>

        <c:if test="${nullId == true}">
            <div class="alert alert-danger" role="alert">
                Please insert a valid method.
            </div>
        </c:if>
    </form>
</div>
</body>

<footer>
    <jsp:include page="scriptJS.jsp"/>
</footer>
</html>