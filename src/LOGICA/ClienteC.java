/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package LOGICA;

import DATOS.Cliente;
import DATOS.Conexion;
import PRESENTACION.Clientes;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JOptionPane;
import java.sql.Types;
/**
 *
 * @author 
 */
public class ClienteC implements ICliente{
    Conexion conexion;
        public ClienteC(){
       conexion=new Conexion();
   }
        
        
        //METODO PARA VERIFICAR
   public Cliente verificaCallableStatement(String nombre,String apellido, String direccion,
                                            Integer numero_telefono,String correo, String nc,
                                            Integer cantidad){
       Cliente empleadito=null;
       
       Connection conectando=conexion.getConexion();
       //TRANSACCION QUE USAREMOS PARA IMPLEMENTAR SU PROC ALMACENADO
       try{
           CallableStatement estadoC=conectando.prepareCall("{call usp_ActualizarStockYRegistrarCompra(?,?,?,?,?,?,?,?)}");
          
           estadoC.setString(1, nombre);
           estadoC.setString(2,apellido);
           estadoC.setString(3, direccion);
           estadoC.setInt(4,numero_telefono);
           estadoC.setString(5, correo);
           estadoC.setString(6,nc);
           estadoC.setInt(7, cantidad);
           
           // Parámetro de salida para el mensaje
           estadoC.registerOutParameter(8, Types.VARCHAR);

           
           boolean ResultSet=estadoC.execute();
           
           // Captura el mensaje de salida
            String mensaje = estadoC.getString(8);
           
          if (mensaje.equals("Compra exitosa")) {
          JOptionPane.showMessageDialog(null, "SE REALIZÓ EXITOSAMENTE SU COMPRA");
            } else {
                JOptionPane.showMessageDialog(null, mensaje);
            }
          
               
         
              
           
       }
       catch(SQLException ex){
           System.out.println(ex.toString());
       }
       //falta codigo
       return empleadito;
   }
    
}
