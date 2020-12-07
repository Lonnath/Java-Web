
package Interfaces;

import Modelo.Curso;
import java.util.List;


public interface CursoDTO {
    public List<Curso> listarC();
    public void addC(Curso curso);
    public Curso listCurso(long id);

}
