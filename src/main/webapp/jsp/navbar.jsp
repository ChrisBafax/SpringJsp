<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Title -->
        <title>navbar</title>
    </head>

    <body>

        <nav class="navbar navbar-expand-lg fixed-top sticky-top " style="background-color: #e3f2fd;">
            <div class="container-fluid">
                <a class="navbar-brand" href="${pageContext.request.contextPath}/home">ChrisBafax</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                        aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">

                        <!-- First option -->
                        <li class="nav-item">
                            <a class="nav-link" aria-current="page"
                               href="${pageContext.request.contextPath}/home">
                                Home
                            </a>
                        </li>

                        <!-- Second option -->
                        <li class="nav-item">
                            <a class="nav-link" aria-current="page"
                               href="${pageContext.request.contextPath}/dettagli">
                                Details
                            </a>
                        </li>

                        <!-- Third option -->
                        <li class="nav-item">
                            <a class="nav-link" aria-current="page"
                               href="${pageContext.request.contextPath}/createInfo">
                                Create Info
                            </a>
                        </li>

                        <!-- Fourth option -->
                        <li class="nav-item">
                            <a class="nav-link" aria-current="page"
                               href="${pageContext.request.contextPath}/deleteInfo">
                                Delete Info
                            </a>
                        </li>

                        <!-- Fifth option -->
                        <li class="nav-item">
                            <a class="nav-link" aria-current="page"
                               href="${pageContext.request.contextPath}/updateInfo">
                                Update Info
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

    </body>
</html>
