<%-- 
    Document   : insertar_parque_nacional
    Created on : 18/03/2014, 08:20:31 AM
    Author     : Equipo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inserci&oacute;n de parque</title>
    </head>
    <body>
        <h2>Ingrese la siguiente informaci&oacute;n</h2>
        <form action="./insertarParqueNacional" method="post">
            Identificaci&oacute;n: <input type="text" name="idParque">
            Nombre del parque: <input type="text" name="nombreParque">
            <input type="submit" name="btnEnviar" value="Enviar">
        </form>
    </body>
</html>
