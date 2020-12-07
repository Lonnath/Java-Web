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
public class Guerra {

    private int id_guerra;
    private String nombre;
    private int anio_inicio;
    private int anio_fin;

    public Guerra() {
    }

    public Guerra(int id_guerra, String nombre, int anio_inicio, int anio_fin) {
        this.id_guerra = id_guerra;
        this.nombre = nombre;
        this.anio_inicio = anio_inicio;
        this.anio_fin = anio_fin;
    }

    public int getId_guerra() {
        return id_guerra;
    }

    public void setId_guerra(int id_guerra) {
        this.id_guerra = id_guerra;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getAnio_inicio() {
        return anio_inicio;
    }

    public void setAnio_inicio(int anio_inicio) {
        this.anio_inicio = anio_inicio;
    }

    public int getAnio_fin() {
        return anio_fin;
    }

    public void setAnio_fin(int anio_fin) {
        this.anio_fin = anio_fin;
    }

}
