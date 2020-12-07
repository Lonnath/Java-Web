
package Interfaces;
import Modelo.Profesor;
import java.util.List;

public interface ProfesorDTO {
    public List<Profesor> listarP();
    public void addProfesor(Profesor profesor);
    
}
