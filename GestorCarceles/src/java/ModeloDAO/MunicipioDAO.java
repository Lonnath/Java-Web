
package ModeloDAO;

import Config.Conexion;
import Modelo.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class MunicipioDAO {
    Conexion conect = new Conexion();
    Connection conection;
    PreparedStatement ps;
    ResultSet rs;

    public Municipio getMunicipio(int municipioId) {
        Municipio municipio = new Municipio();
        String sql = "SELECT * FROM municipio WHERE id = '"+municipioId+"'";
        try {
            conection = conect.getConnection();
            ps = conection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                municipio.setId_departamento(rs.getInt("id_departamento"));
                municipio.setId_nombre(rs.getInt("id_nombreMunicipio"));
            }
            
            conection.close();
        } catch (Exception e) {
        }
        return municipio;

    }
    
    public String nombreMunicipio(int id){
        Municipio tmpoMunicipio = this.getMunicipio(id);
        Nombre_MunicipioDAO tmpoNombreMunicipioDAO = new Nombre_MunicipioDAO();
        Nombre_Municipio tmpoNombreMunicipio = tmpoNombreMunicipioDAO.getNombre_Municipio(tmpoMunicipio.getId_nombre());
        return tmpoNombreMunicipio.getNombre();
        
    }
}
