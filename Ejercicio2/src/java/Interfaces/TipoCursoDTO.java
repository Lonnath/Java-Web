
package Interfaces;

import Modelo.TiposCurso;
import java.util.List;

public interface TipoCursoDTO {
    public List<TiposCurso> listarE();
    public void addE(TiposCurso tipoCurso);
    public TiposCurso listCurso(long id);
}
