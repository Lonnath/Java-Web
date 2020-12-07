
package Modelo;

public class Departamento {
   int id;
   int id_nombre;

    public Departamento() {
    }
   
    public Departamento(int id, int id_nombre) {
        this.id = id;
        this.id_nombre = id_nombre;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

   


    public int getId_nombre() {
        return id_nombre;
    }

    public void setId_nombre(int id_nombre) {
        this.id_nombre = id_nombre;
    }
   
   
      
}
