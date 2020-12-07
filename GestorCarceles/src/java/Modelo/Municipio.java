
package Modelo;

public class Municipio {
     int id_nombre;
     int id_departamento;

    public Municipio() {
    }
     
    public Municipio(int id_nombre, int id_departamento) {
        this.id_nombre = id_nombre;
        this.id_departamento = id_departamento;
    }

    public int getId_nombre() {
        return id_nombre;
    }

    public void setId_nombre(int id_nombre) {
        this.id_nombre = id_nombre;
    }

    public int getId_departamento() {
        return id_departamento;
    }

    public void setId_departamento(int id_departamento) {
        this.id_departamento = id_departamento;
    }
     
     
}
