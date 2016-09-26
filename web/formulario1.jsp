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
        <form action="mailto:videoclub@gmail.com" method="POST">
            <table border="0" width="50%" bgcolor="#FFFFD4">
                <thead>
                    <tr>
                        <th bgcolor="#FFCE57" colspan="5" align="left"><b>VIDEOCLUB ON-LINE</b></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td bgcolor="#9D9933">Nombre Película</td>
                        <td><input type="text" name="name" value="" /></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td bgcolor="#9D9933">Número Días Alquiler</td>
                        <td><input type="text" name="dias" value="1" /></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td bgcolor="#9D9933" width="100px">Edad Cliente</td>
                        <td bgcolor="#9D9933" width="140px">Forma De Pago</td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="radio" name="edad" value="1" />Menor de 7 años<br>
                            <input type="radio" name="edad" value="2" />Menor de 14 años <br>
                            <input type="radio" name="edad" value="3" />Menor de 18 años<br>
                            <input type="radio" name="edad" value="4" />Mayor de 18 años<br>
                        </td>
                        <td><select name="formapago">
                                <option selected>VISA</option>
                                <option>Master Card</option>
                                <option>Efectivo</option>
                            </select></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td bgcolor="#9D9933" colspan="2">Especificaciones extras</td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td colspan="4"><textarea  name="especificaciones" rows="10" cols="85">
                            </textarea></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td colspan="4" align="center"><input type="submit" value="Enviar pedido" />
                            <input type="reset" value="Borrar Formulario" /></td>
                    </tr>
                </tbody>
            </table>
        </form>
        <% String nombre, edad, dias, formapago, especificaciones; %>
        <% 
                nombre = request.getParameter("name");
                dias = request.getParameter("dias");
                edad = request.getParameter("edad");
                formapago = request.getParameter("formapago");
                especificaciones = request.getParameter("especificaciones");
                %>  
                <jsp:setProperty name="usuario" property="name" value="<%= nombre %>" />
                <jsp:setProperty name="usuario" property="dias" value="<%= dias %>" />
                <jsp:setProperty name="usuario" property="edad" value="<%= edad %>" />
                <jsp:setProperty name="usuario" property="formapago" value="<%= formapago %>" />
                <jsp:setProperty name="usuario" property="especificaciones" value="<%= especificaciones %>" />
                <jsp:forward page="/formulario2.jsp"></jsp:forward>
                <% }; %>
    </body>
</html>
