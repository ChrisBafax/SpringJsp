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
        <div class="card" style="width: 18rem;">
            <div class="card-body">
                <h5 class="card-title">Errore</h5>
                <p class="card-text">L'errore è: ${Error}.</p>
            </div>
        </div>
    </body>

    <footer>
        <jsp:include page="scriptJS.jsp"/>
    </footer>
</html>

