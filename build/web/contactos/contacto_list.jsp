<%-- 
    Document   : producto_list
    Created on : 19/06/2019, 08:39:27 AM
    Author     : Software Student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="common.ConectarDB2" %>
<% 
 ConectarDB2 cnn=new ConectarDB2();
 String sql="SELECT * FROM contacto";
 cnn.conectar();
 ResultSet rs=cnn.ejecutarConsulta(sql);
 %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        <h1>Lista Contactos</h1>
        <table class="table table-hover">
            <thead>
              <tr>
                <th scope="col">ID</th>
                <th scope="col">Nombre</th>
                <th scope="col">Apellidos</th>
                <th scope="col">Email</th>
                <th scope="col">Celular</th>
                <th scope="col">Estado_Civil</th>
                <th scope="col">OPT</th>
              </tr>
            </thead>
            <tbody>
              <% while(rs.next()){%> 
              <tr class="table-active">
                <th scope="row"><%=rs.getString("id")%></th>
                <td><%=rs.getString("nombre")%></td>
                <td><%=rs.getString("apellidos")%></td>
                <td><%=rs.getString("email")%></td>
                <td><%=rs.getString("celular")%></td>
                <td><%=rs.getString("estado_civil")%></td>
                <td><a href="contacto_man.jsp?opt=delete&id=<%=rs.getString("id")%>">X</a></td>
              </tr>
              <% }%>
            </tbody>
          </table> 
          <a href="contacto_add.jsp">Agregar Contacto</a>
    </body>
</html>
