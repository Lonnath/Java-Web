/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Modelo;

import java.sql.Date;

/**
 *
 * @author Lonnath
 */
public class Curso {
    private int n_concreto;
    private String fecha_fin;
    private String fecha_inicio;
    private int id_tipos_curso;
    private TiposCurso tipoCurso;

    public TiposCurso getTipoCurso() {
        return tipoCurso;
    }

    public void setTipoCurso(TiposCurso tipoCurso) {
        this.tipoCurso = tipoCurso;
    }

    public Curso(int n_concreto, String fecha_fin, String fecha_inicio, int id_tipos_curso, TiposCurso tipoCurso) {
        this.n_concreto = n_concreto;
        this.fecha_fin = fecha_fin;
        this.fecha_inicio = fecha_inicio;
        this.id_tipos_curso = id_tipos_curso;
        this.tipoCurso = tipoCurso;
    }
    public Curso(){
    
    }
    

    public int getN_concreto() {
        return n_concreto;
    }

    public void setN_concreto(int n_concreto) {
        this.n_concreto = n_concreto;
    }

    public String getFecha_fin() {
        return fecha_fin;
    }

    public void setFecha_fin(String fecha_fin) {
        this.fecha_fin = fecha_fin;
    }

    public String getFecha_inicio() {
        return fecha_inicio;
    }

    public void setFecha_inicio(String fecha_inicio) {
        this.fecha_inicio = fecha_inicio;
    }

    public int getId_tipos_curso() {
        return id_tipos_curso;
    }

    public void setId_tipos_curso(int id_tipos_curso) {
        this.id_tipos_curso = id_tipos_curso;
    }
    
    
    
}
