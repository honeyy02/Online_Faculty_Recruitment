<html>
    <head>
        <script>
            function preventback()
            {
                window.history.back();
            }
            
        </script>
    </head>
    <body>
        <%
            session.invalidate();
            response.sendRedirect("index.html");
        %>
    </body>
</html>