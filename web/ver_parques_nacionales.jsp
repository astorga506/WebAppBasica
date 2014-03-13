<%-- 
    Document   : ver_parques_nacionales
    Created on : 13/03/2014, 02:40:37 PM
    Author     : Equipo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado de Parques Nacionales</title>
    </head>
    <body>
        <%String tituloPagina = (String)request.getAttribute("tituloPagina");%>
        <h1>
            <div style="color:#cccc00">
                <%=tituloPagina%>    
            </div>
        </h1>
    </body>
</html>
