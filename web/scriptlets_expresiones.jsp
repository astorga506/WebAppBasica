<%-- 
    Document   : scriptlets_expresiones
    Created on : 11/03/2014, 11:16:38 AM
    Author     : Equipo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Scriptlets &amp; Expresiones</title>
    </head>
    <body>
        <% String frase="El ratón Pérez se cayó en la olla y la hormiguita lo siente y lo llora";%>
        <b>Frase del d&iacute;a:</b> <%=frase%>
        <%String planetas [] = {"Mercurio", "Venus", "Tierra", "Marte", "Júpiter", "Saturno", "Urano", "Neptuno"};%>
        <h1>Planetas del Sistema Solar</h1>
        <% for(int i = 0; i < planetas.length; i++){%>
        <b><%= planetas[i]%></b><br>
        <%}%>
        <!-- Números del 1 al 10 con colores intercalados-->
        <h1>N&uacute;meros</h1>
        <% for(int i = 1; i <= 10; i++){
            String color = (i%2==0?"red":"green");
        %>
        <div style="color:<%= color %>"> <%=i%> </div>        
        <%}%>
    </body>
</html>
