<%-- 
    Document   : producto_add
    Created on : 19/06/2019, 08:40:37 AM
    Author     : Software Student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    String opt="Registrar";
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        <div class="navbar navbar-fixed-center">
            <div class="navbar-inner">
               <form method="POST" action="contacto_man.jsp" id="formulario"> 
                <input type="hidden" name="opt" value="<%=opt%>"/>
                <div class="control-group">
                    <label class="control-label" for="">Nombre* :</label>
                    <div class="controls">
                        <input type="text" name="nombre" placeholder="Nombre"/>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Apellidos* : </label>
                    <div class="controls">
                        <input type="text" name="apellidos"  placeholder="Apellidos"/>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Email* : </label>
                    <div class="controls">
                        <input type="text" name="email"  placeholder="Email"/>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Celular* : </label>
                    <div class="controls">
                        <input type="text" name="celular"  placeholder="Celular"/>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Estado_Civil* : </label>
                    <div class="controls">
                        <input type="text" name="estado_civil"  placeholder="Estado_Civil"/>
                    </div>
                </div>
              <div class="control-group">
                <div class="controls">
                  <button type="submit" class="btn btn-primary" name="ag">AGREGAR</button>
                </div>
              </div>
             </form>            
        </div>
             <div id="msg"></div>
        </div>

    <form action="ingresar.php" method="post" accept-charset="utf-8">

    <label>Fecha: <br><input type="datetime" name="Fecha" value="<?= $fecha_actual?>"></label><br>
    <br>
    <br>

    <input type="submit" name="ingresar" value="ingresar Fecha">

    </form>
                                <?php

date_default_timezone_set('America/Peru_City');
$fecha_actual=date("Y-m-d H:i:s");

?>

    </body>
</html>
