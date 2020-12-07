

package Interfaces;

import Modelo.Empresas;
import java.util.List;

public interface EmpresaDTO {
    public List<Empresas> listarE();
    public void addE(Empresas empresa);
    public Empresas listEmpresas(int id);
}
