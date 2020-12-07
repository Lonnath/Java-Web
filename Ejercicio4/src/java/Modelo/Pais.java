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
public class Pais {
    private int id_pais;
    private String nombre;
    private int id_bando;
    private int anio_salida;
    private int anio_entrada;
    
    public Pais(){
    }
    public Pais(int id_pais, String nombre, int id_bando, int anio_salida, int anio_entrada) {
        this.id_pais = id_pais;
        this.nombre = nombre;
        this.id_bando = id_bando;
        this.anio_salida = anio_salida;
        this.anio_entrada = anio_entrada;
    }

    public int getId_pais() {
        return id_pais;
    }

    public void setId_pais(int id_pais) {
        this.id_pais = id_pais;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getId_bando() {
        return id_bando;
    }

    public void setId_bando(int id_bando) {
        this.id_bando = id_bando;
    }

    public int getAnio_salida() {
        return anio_salida;
    }

    public void setAnio_salida(int anio_salida) {
        this.anio_salida = anio_salida;
    }

    public int getAnio_entrada() {
        return anio_entrada;
    }

    public void setAnio_entrada(int anio_entrada) {
        this.anio_entrada = anio_entrada;
    }
    
    
}
