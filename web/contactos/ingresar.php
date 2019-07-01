<?php
     
     include 'contacto_add.jsp';

     $conexion=mysqli_connect('localhost','root', 'durtecks', 'prueba');
     if(isset($_REQUEST['ingresar'])){
     $Fecha=$_POST['Fecha'];
     $consulta="INSERT INTO fecha(fecha_actual) values('$Fecha')";
     $ejecutar=mysqli_query($conexion,$consulta);
     
     if($ejecutar){
        echo '<script> alert("Fecha Ingresa Correctamente")</script>';
     }else{
        echo '<script> alert("Error")</script>';
     }
        }
    ?>