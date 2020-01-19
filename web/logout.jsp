<%
    
    session.invalidate();
    response.sendRedirect("login.jsp");
    %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script>
            function clear()
            {
                window.story.forward();
                window.setTimeout("window.location.href='login.jsp'",500);
            }
        </script>
    </head>
    <body onload="clear()">
        <h1>Hello World!</h1>
    </body>
</html>
