<%-- 
    Document   : ver_parques_nacionales
    Created on : 13/03/2014, 02:40:37 PM
    Author     : Equipo
--%>

<%@page import="java.util.LinkedList"%>
<%@page import="cr.ac.ucr.webappbasica.domain.ParqueNacional"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado de Parques Nacionales</title>
    </head>
    <body>
        <%String tituloPagina = (String) request.getAttribute("tituloPagina");
            ParqueNacional parqueNacional = (ParqueNacional) request.getAttribute("parqueNacional");
            LinkedList<ParqueNacional> parques = (LinkedList<ParqueNacional>) request.getAttribute("parques");%>
            <div style="color:#cccc00">
                <%=tituloPagina%>    
            </div>
            <!-- Dos formas de desplegar la información del parque -->
            <%= parqueNacional.getNombreParque()%><br>
            <!--  Uso de una expresion de lenguaje EL -->
            ${parqueNacional.nombreParque}
            <!-- Desplegar la información de la colección -->
            <% for (ParqueNacional parqueTemp : parques) {%>
            <%=parqueTemp.getNombreParque()%><br>
            <% } %>            
            <table style="border: solid;background: #99cc00;border-style: dotted">
                <tr>
                    <td>C&oacute;digo</td>
                    <td>Nombre del parque</td>
                </tr>
                <% for (ParqueNacional parqueTemp : parques) {%>
                <tr>                
                <td>
                    <a href="./ver_parque.jsp?idParque=<%=parqueTemp.getIdParque()%>&nombreParque=<%=parqueTemp.getNombreParque()%>">
                        <%=parqueTemp.getIdParque()%>
                    </a>
                </td>
                    <td>
                        <a href="./ver_parque.jsp?idParque=<%=parqueTemp.getIdParque()%>&nombreParque=<%=parqueTemp.getNombreParque()%>">
                        <%=parqueTemp.getNombreParque()%>
                        </a>
                    </td>
                </tr>            
            <% }%>   
        </table>
    </h1>
</body>
</html>
