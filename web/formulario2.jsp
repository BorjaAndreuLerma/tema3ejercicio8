<%-- 
    Document   : formualrio2
    Created on : 26-sep-2016, 9:52:10
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="usuario" scope="request" class="entidad.AlquilerBean" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <b>Usted indicó la siguiente infoemación</b>:<br>
        <b>Película</b>: <jsp:getProperty name="usuario" property="name"/><br>
        <b>Días de alquiler</b>: <jsp:getProperty name="usuario" property="dias"/><br>
        <b>Edad cliente</b>: <jsp:getProperty name="usuario" property="edad"/><br>
        <b>Forma de pago</b>: <jsp:getProperty name="usuario" property="formapago"/><br>
        <b>Extras</b>: <jsp:getProperty name="usuario" property="especificaciones"/><br>
        <b>¡Disfrute de la película!</b>
    </body>
</html>
