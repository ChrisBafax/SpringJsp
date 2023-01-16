<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <!-- Title -->
        <title>Create Info</title>

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
            <h1 class="display-1">Create Info</h1>

            <form action="${pageContext.request.contextPath}/createInfo" method="post">
                <div class="mb-3">
                    <label for="name" class="form-label">Name:</label>
                    <input type="text" name="name" class="form-control" id="name" aria-describedby="name">
                </div>
                <div class="mb-3">
                    <label for="description" class="form-label">Description:</label>
                    <input type="text" name="description" class="form-control" id="description">
                </div>
                <button type="submit" class="btn btn-primary">Add</button>

                <c:if test="${operation == true}">
                    <div class="alert alert-success" role="alert">
                        Insert successful.
                    </div>
                </c:if>
            </form>
        </div>
    </body>

    <footer>
        <jsp:include page="scriptJS.jsp"/>
    </footer>
</html>