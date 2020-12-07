

package Interfaces;

import Modelo.Estudiante;
import java.util.List;

public interface EstudianteDTO {
    public List<Estudiante> listarE();
    public void addE(Estudiante estudiante, String dniEmpresa);
    public Estudiante listEstudiante(int id);
}
