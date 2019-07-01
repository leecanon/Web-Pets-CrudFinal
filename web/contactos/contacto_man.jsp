<%-- 
    Document   : producto_man
    Created on : 19/06/2019, 08:40:52 AM
    Author     : Software Student
--%>
<title>xd</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="common.ConectarDB2" %>
<% 
ConectarDB2 cnn=new ConectarDB2();
cnn.conectar();
String opt=request.getParameter("opt");
String ejA=request.getParameter("ejecutarActualizacion");


if(opt.equals("Registrar")){
    String nom=request.getParameter("nombre");
    String pes=request.getParameter("apellidos");
    String ema=request.getParameter("email");
    String cel=request.getParameter("celular");
    String est=request.getParameter("estado_civil");
    
   
    String sql="INSERT INTO contacto(nombre, apellidos, email, celular, estado_civil) "
            + "VALUES('"+nom+"','"+pes+"','"+ema+"','"+cel+"','"+est+"')";               
    //out.println(sql);
    if(cnn.ejecutarActualizacion(sql)){
        out.println("Producto registrado");
    }else{
        out.println("Error al procesar datos");
    }
}

if(opt.equals("delete")){
    String id=request.getParameter("id");
           
    String sql="DELETE FROM contacto WHERE id="+id;
    cnn.ejecutarActualizacion(sql);
    out.println("Contacto Eliminado<br>");
}

%>

<a href="contacto_list.jsp">Listar Contacto</a>