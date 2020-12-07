
package Interfaces;

import Modelo.*;
import java.util.List;

public interface NotasDTO {
    public List<Notas> listarNotas();
    public void addNotas(Notas nota);
    public List<Notas> listarIndividual(long id);
}
