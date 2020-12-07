/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Modelo;

/**
 *
 * @author Lonnath
 */
public class ConsultaVerRecluso {
    private int cedula;
    private String fechaIngreso;
    private long codigoRecluso;
    private String nombre;
    private String apellido;
    private String direccion;
    private long telefono;
    private String correo;
    private long telefonoFamiliar;
    private String fecha;
    private String descripcion;
    private String tiempoCondena;

    public ConsultaVerRecluso() {
    }

    public ConsultaVerRecluso(int cedula, String fechaIngreso, long codigoRecluso, String nombre, String apellido, String direccion, long telefono, String correo, long telefonoFamiliar, String fecha, String descripcion, String tiempoCondena) {
        this.cedula = cedula;
        this.fechaIngreso = fechaIngreso;
        this.codigoRecluso = codigoRecluso;
        this.nombre = nombre;
        this.apellido = apellido;
        this.direccion = direccion;
        this.telefono = telefono;
        this.correo = correo;
        this.telefonoFamiliar = telefonoFamiliar;
        this.fecha = fecha;
        this.descripcion = descripcion;
        this.tiempoCondena = tiempoCondena;
    }

    public int getCedula() {
        return cedula;
    }

    public void setCedula(int cedula) {
        this.cedula = cedula;
    }

    public String getFechaIngreso() {
        return fechaIngreso;
    }

    public void setFechaIngreso(String fechaIngreso) {
        this.fechaIngreso = fechaIngreso;
    }

    public long getCodigoRecluso() {
        return codigoRecluso;
    }

    public void setCodigoRecluso(long codigoRecluso) {
        this.codigoRecluso = codigoRecluso;
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

    public long getTelefonoFamiliar() {
        return telefonoFamiliar;
    }

    public void setTelefonoFamiliar(long telefonoFamiliar) {
        this.telefonoFamiliar = telefonoFamiliar;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getTiempoCondena() {
        return tiempoCondena;
    }

    public void setTiempoCondena(String tiempoCondena) {
        this.tiempoCondena = tiempoCondena;
    }

    
    
}
