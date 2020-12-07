
package ModeloDAO;

import Config.Conexion;
import Modelo.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class DepartamentoDAO {
  Conexion conect = new Conexion();
    Connection conection;
    PreparedStatement ps;
    ResultSet rs;

    public Departamento getDepartamento(int idDepartamento) {
        Departamento departamento = new Departamento();
        String sql = "SELECT * FROM departamento WHERE id = '"+idDepartamento+"'";
        try {
            conection = conect.getConnection();
            ps = conection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                departamento.setId(rs.getInt("id"));
                departamento.setId_nombre(rs.getInt("id_nombre"));
            }
            
            conection.close();
        } catch (Exception e) {
        }
        return departamento;

    }  
    
    public String getNombreDepartamento(int id){
        DepartamentoDAO tmpoDAO = new DepartamentoDAO();
        Departamento dpo = tmpoDAO.getDepartamento(id);
        Nombre_DepartamentoDAO tmpo = new Nombre_DepartamentoDAO();
        Nombre_Departamento tmpoNombre = tmpo.getNombre_Departamento(dpo.getId_nombre());
        return tmpoNombre.getNombre();
    }
}
