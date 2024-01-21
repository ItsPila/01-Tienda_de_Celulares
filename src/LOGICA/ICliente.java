/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package LOGICA;

import DATOS.Cliente;

/**
 *
 * @author 
 */
public interface ICliente {
    
    public Cliente verificaCallableStatement(String nombre,
                                            String apellido, String direccion,
                                            Integer numero_telefono,String correo, String nc,
                                            Integer cantidad);
}
