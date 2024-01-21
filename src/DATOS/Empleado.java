/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DATOS;

/**
 *
 * @author 
 */
public class Empleado {
    
    
    private Integer id_empleado;
    private String nombre;
    private String apellido;
    private String cargo;
    
    
    
    public Empleado(){
    id_empleado=0;
    nombre="";
    apellido="";
    cargo="";     
    }
    //SOBRECARGA CONSTRUCTOR 
    public Empleado(Integer em, String n, String a, String c){
       this.id_empleado=em;
       this.nombre=n;
       this.apellido=a;
       this.cargo=c;
    }

    /**
     * @return the id_empleado
     */
    public Integer getId_empleado() {
        return id_empleado;
    }

    /**
     * @param id_empleado the id_empleado to set
     */
    public void setId_empleado(Integer id_empleado) {
        this.id_empleado = id_empleado;
    }

    /**
     * @return the nombre
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * @param nombre the nombre to set
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    /**
     * @return the apellido
     */
    public String getApellido() {
        return apellido;
    }

    /**
     * @param apellido the apellido to set
     */
    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    /**
     * @return the cargo
     */
    public String getCargo() {
        return cargo;
    }

    /**
     * @param cargo the cargo to set
     */
    public void setCargo(String cargo) {
        this.cargo = cargo;
    }
    
    
    
    
    
}
