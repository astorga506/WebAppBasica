<%-- 
    Document   : tabla_multiplicacion
    Created on : Mar 12, 2014, 7:41:34 PM
    Author     : Carlos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tabla de multiplicaci&oacute;n</title>
    </head>
    <body>
        <h1>Tabla de multiplicar del 1 al 12</h1>
        <table border="1">
            <tr>
                <td>&nbsp;&nbsp;</td>
                <% for (int x = 1; x <= 12; x++) {%>
                <td> <%= x%> </td>
                <%}%>
            </tr>                    
            <% for (int i = 1; i <= 12; i++) {%>
            <td> <%= i%> </td>
            <%for (int j = 1; j <= 12; j++) {%>
            <td> <%= i * j%> </td>
            <%}%>
        </tr>   
        <%}%> 
    </table>         
</body>
</html>
