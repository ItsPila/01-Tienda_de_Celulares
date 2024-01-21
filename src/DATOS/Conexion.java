/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DATOS;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author 
 */
public class Conexion {
    
    public static Connection getConexion(){
        //RUTA QUE SE DEBE DE SEGUIR PARA LA CONEXION CON LA BD
        
        String conexionURL="jdbc:sqlserver://localhost:1433;"
                +"database=DBTiendaCelulares;"
                +"user=;"
                +"password=;";
        
        //TRANSACCION SQL
        
        try{
            Connection conectando=DriverManager.getConnection(conexionURL);
            return conectando; //AQUI VA RETORNAR A CONEXION SQL
        }
        catch(SQLException e){
            System.out.println(e.toString());
            return null;//NO SE PUEDE REALIZAR LA CONEXION
            
        }
                
    }
}
