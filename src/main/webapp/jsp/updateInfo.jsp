<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <!-- Title -->
    <title>Update Info</title>

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
    <h1 class="display-1">Update Info</h1>

    <form action="${pageContext.request.contextPath}/updateInfo" method="post">
        <div class="mb-3">
            <label for="id" class="form-label">Choose the that you want to update ID:</label>
            <input type="text" name="id" class="form-control" id="id" aria-describedby="id">
        </div>
        <div class="mb-3">
            <label for="name" class="form-label">New name:</label>
            <input type="text" name="name" class="form-control" id="name" aria-describedby="name">
        </div>
        <div class="mb-3">
            <label for="description" class="form-label">New description:</label>
            <input type="text" name="description" class="form-control" id="description" aria-describedby="description">
        </div>
        <button type="submit" class="btn btn-primary">Update</button>

    </form>
</div>
</body>

<footer>
    <jsp:include page="scriptJS.jsp"/>
</footer>
</html>