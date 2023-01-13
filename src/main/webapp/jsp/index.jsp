<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <!-- Title -->
        <title>ChrisBafax</title>

        <!-- Style of the page -->
        <jsp:include page="style.jsp"/>
    </head>

    <body>
        <!-- Header of the Page -->
        <header>
            <!-- Navbar -->
            <jsp:include page="navbar.jsp"/>
            <h1 class="display-1">Home</h1>
        </header>

        <article>
            <h5 class="display-5">Ciao</h5>
            <h6>Il nome è: ${Info.getName()}</h6>
            <h6>La descrizione è: ${Info.getDescription()}</h6>
        </article>
    </body>

    <footer>
        <jsp:include page="scriptJS.jsp"/>
    </footer>
</html>