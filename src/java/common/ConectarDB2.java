/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package common;
import java.sql.*;
import javax.swing.JOptionPane;

/**
 *
 * @author JHAN ARNEL
 */
public class ConectarDB2 {
      public Connection cn=null;
  public Statement st=null;
  public ResultSet rs=null;  
  
  public Connection conectar() throws Exception{
    try{
      String servidor="localhost";
      String puerto="3306";
      String usuario="root";
      String password="";
      String basedatos="bdformulario";
      String driver="com.mysql.jdbc.Driver";
      String cadenaconexion="jdbc:mysql://"+servidor+":"+puerto+"/"+basedatos;
     
      Class.forName(driver);
      cn=DriverManager.getConnection(cadenaconexion,usuario,password);    
    }catch(Exception e){
        JOptionPane.showMessageDialog(null,"Error de conexion a la Base de Datos");
    }finally{ 
      return cn;
    }
  }
  
  public ResultSet ejecutarConsulta(String sql) throws Exception{
      st=cn.createStatement();
      rs=st.executeQuery(sql);
      return rs;
  }
  
  public boolean ejecutarActualizacion(String sql) throws Exception{
      st=cn.createStatement();
      int rs=st.executeUpdate(sql);
      if(rs==1){
          return true;   
      }else{
          return false;   
      }
  }
  
  public void desconectar() throws Exception{
      cn.close();
  }
 
    
    
}
