package Modelo;

public class Celda {
    int id;
    int id_nombre;
    int capacidad;
    int piso;
    int id_pabellon;

    public Celda() {
    }

    public Celda(int id, int id_nombre, int capacidad, int piso, int id_pabellon) {
        this.id = id;
        this.id_nombre = id_nombre;
        this.capacidad = capacidad;
        this.piso = piso;
        this.id_pabellon = id_pabellon;
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
    
    

    public int getCapacidad() {
        return capacidad;
    }

    public void setCapacidad(int capacidad) {
        this.capacidad = capacidad;
    }

    public int getPiso() {
        return piso;
    }

    public void setPiso(int piso) {
        this.piso = piso;
    }

    public int getId_pabellon() {
        return id_pabellon;
    }

    public void setId_pabellon(int id_pabellon) {
        this.id_pabellon = id_pabellon;
    }

    
    
    
}
