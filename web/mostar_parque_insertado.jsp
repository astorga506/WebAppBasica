<%-- 
    Document   : mostar_parque_insertado
    Created on : 18/03/2014, 08:45:22 AM
    Author     : Equipo
--%>

<%@page import="cr.ac.ucr.webappbasica.domain.ParqueNacional"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Parque Insertado</title>
    </head>
    <body>
        <% ParqueNacional parque = (ParqueNacional) request.getAttribute("parqueNacional");%>
        Indentificaci&oacute;n del parque: <%= parque.getIdParque()%><br>
        Nombre del parque: <%= parque.getNombreParque()%>
    </body>
</html>
