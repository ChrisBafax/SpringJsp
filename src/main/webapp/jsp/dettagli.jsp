<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <!-- Title -->
        <title>Dettagli</title>

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
            <h1 class="display-1">Dettagli</h1>
            <table class="table table-striped table-responsive">
                <thead>
                    <tr>
                        <th scope="col">Name</th>
                        <th scope="col">Description</th>
                        <th scope="col" style="width: 50px">Edit</th>
                        <th scope="col" style="width: 50px">Delete</th>
                        <th style="width: 50px"/>
                    </tr>
                </thead>
                <tbody>
                    <jsp:useBean id="Infos" scope="request" type="java.util.List"/>
                    <c:forEach items="${Infos}" var="Infos">
                        <tr>
                            <td><c:out value="${Infos.getName()}"/></td>
                            <td><c:out value="${Infos.getDescription()}"/></td>
                            <td>
                                <form action="${pageContext.request.contextPath}/updateInfoPage" method="post" class="d-flex">
                                    <input class="form-control me-2" type="hidden" name="id"
                                           value="<c:out value="${Infos.getId()}"/>">
                                    <button type="submit" class="border-0 " style="color: black; background-color: transparent">
                                        <i class="bi bi-pencil-square"></i>
                                    </button>
                                </form>
                            </td>
                            <td>
                                <form action="${pageContext.request.contextPath}/deleteInfo" method="post" class="d-flex">
                                    <input class="form-control me-2" type="hidden" name="id"
                                           value="<c:out value="${Infos.getId()}"/>">
                                    <button type="submit" class="border-0 " style="color: black; background-color: transparent">
                                        <i class="bi bi-trash3"></i>
                                    </button>
                                </form>
                            </td>
                            <td>
                                <c:if test="${id == Infos.getId()}">
                                    <p role="alert" style="color: green; font-size: large">
                                        <i class="bi bi-check-lg"></i>
                                    </p>
                                </c:if>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </body>

    <footer>
        <jsp:include page="scriptJS.jsp"/>
    </footer>
</html>