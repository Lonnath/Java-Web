
package Modelo;

public class Carcel {
    
    int id;
    String direccion;
    String nombre;
    char sexo;
    int id_municipio;

    public Carcel() {
    }

    public Carcel(int id, String direccion, String nombre, char sexo, int id_municipio) {
        this.id = id;
        this.direccion = direccion;
        this.nombre = nombre;
        this.sexo = sexo;
        this.id_municipio = id_municipio;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public int getId_municipio() {
        return id_municipio;
    }

    public void setId_municipio(int id_municipio) {
        this.id_municipio = id_municipio;
    }
    
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public char getSexo() {
        return sexo;
    }

    public void setSexo(char sexo) {
        this.sexo = sexo;
    }
    
}
