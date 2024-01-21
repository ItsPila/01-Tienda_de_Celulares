/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DATOS;

/**
 *
 * @author
 */
public class Cliente {
    //ATRIBUTOS
    private Integer id_cliente;
    private String nombre;
    private String apellido;
    private String direccion;
    private Integer numero_telefono;
    private String correo_electronico;
    private String nombre_celular;
    private Integer cantidad;
    //SOBRECARGA CONSTRUCTOR
    public Cliente(){
    id_cliente=0;
    nombre="";
    apellido="";
    direccion="";
    numero_telefono=0;
    correo_electronico="";     
    nombre_celular="";
    cantidad=0;
    }
    //SOBRECARGA CONSTRUCTOR
    public Cliente(Integer ic, String n, String a, String d, Integer nt,String c, String nc, Integer ca){
       this.id_cliente=ic;
       this.nombre=n;
       this.apellido=a;
       this.direccion=d;
       this.numero_telefono=nt;
       this.correo_electronico=c;
       this.nombre_celular=nc;
       this.cantidad=ca;
    }

    /**
     * @return the id_cliente
     */
    public Integer getId_cliente() {
        return id_cliente;
    }

    /**
     * @param id_cliente the id_cliente to set
     */
    public void setId_cliente(Integer id_cliente) {
        this.id_cliente = id_cliente;
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
     * @return the direccion
     */
    public String getDireccion() {
        return direccion;
    }

    /**
     * @param direccion the direccion to set
     */
    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    /**
     * @return the numero_telefono
     */
    public Integer getNumero_telefono() {
        return numero_telefono;
    }

    /**
     * @param numero_telefono the numero_telefono to set
     */
    public void setNumero_telefono(Integer numero_telefono) {
        this.numero_telefono = numero_telefono;
    }

    /**
     * @return the correo_electronico
     */
    public String getCorreo_electronico() {
        return correo_electronico;
    }

    /**
     * @param correo_electronico the correo_electronico to set
     */
    public void setCorreo_electronico(String correo_electronico) {
        this.correo_electronico = correo_electronico;
    }

    /**
     * @return the nombre_celular
     */
    public String getNombre_celular() {
        return nombre_celular;
    }

    /**
     * @param nombre_celular the nombre_celular to set
     */
    public void setNombre_celular(String nombre_celular) {
        this.nombre_celular = nombre_celular;
    }

    /**
     * @return the cantidad
     */
    public Integer getCantidad() {
        return cantidad;
    }

    /**
     * @param cantidad the cantidad to set
     */
    public void setCantidad(Integer cantidad) {
        this.cantidad = cantidad;
    }
    
}
