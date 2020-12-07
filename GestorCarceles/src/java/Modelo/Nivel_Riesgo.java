
package Modelo;

public class Nivel_Riesgo {
    int id;
    String nombre;

    public Nivel_Riesgo() {
    }

    public Nivel_Riesgo(int id, String nombre) {
        this.id = id;
        this.nombre = nombre;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    
    
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    
}
