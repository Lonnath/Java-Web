
package Modelo;

public class Pabellon {
    
    int id;
    int id_nombre;
    int id_nivelriesgo;
    int id_carcel;

    public Pabellon() {
    }

    public Pabellon(int id, int id_nombre, int id_nivelriesgo, int id_carcel) {
        this.id = id;
        this.id_nombre = id_nombre;
        this.id_nivelriesgo = id_nivelriesgo;
        this.id_carcel = id_carcel;
    }

    public int getId_nombre() {
        return id_nombre;
    }

    public void setId_nombre(int id_nombre) {
        this.id_nombre = id_nombre;
    }
    
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getId_nivelriesgo() {
        return id_nivelriesgo;
    }

    public void setId_nivelriesgo(int id_nivelriesgo) {
        this.id_nivelriesgo = id_nivelriesgo;
    }

    public int getId_carcel() {
        return id_carcel;
    }

    public void setId_carcel(int id_carcel) {
        this.id_carcel = id_carcel;
    }
    
    
}
