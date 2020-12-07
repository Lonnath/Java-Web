/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Modelo;


public class Recluso_Abogado_Objeto {
    private int cedula;
    private String nombre;
    private String apellido;
    private String direccion;
    private long telefono;
    private String correo;
    private String codRecluso;
    private String fecha;

    public Recluso_Abogado_Objeto() {
    }

    public Recluso_Abogado_Objeto(int cedula, String nombre, String apellido, String direccion, long telefono, String correo, String codRecluso, String fecha) {
        this.cedula = cedula;
        this.nombre = nombre;
        this.apellido = apellido;
        this.direccion = direccion;
        this.telefono = telefono;
        this.correo = correo;
        this.codRecluso = codRecluso;
        this.fecha = fecha;
    }

    
    
    public int getCedula() {
        return cedula;
    }

    public void setCedula(int cedula) {
        this.cedula = cedula;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public long getTelefono() {
        return telefono;
    }

    public void setTelefono(long telefono) {
        this.telefono = telefono;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getCodRecluso() {
        return codRecluso;
    }

    public void setCodRecluso(String codRecluso) {
        this.codRecluso = codRecluso;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }
    
}
