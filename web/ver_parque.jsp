<%-- 
    Document   : ver_parque
    Created on : 13/03/2014, 04:14:31 PM
    Author     : Equipo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Informaci&oacute;n de parque</title>
    </head>
    <body>
        <%String nombreParque = request.getParameter("nombreParque"); %>        
        <%int idParque = Integer.parseInt(request.getParameter("idParque")); %>       
        Nombre del parque: <%= nombreParque %> - <%= idParque %>
    </body>
</html>
