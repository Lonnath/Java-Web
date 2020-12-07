package ModeloDAO;

import Config.Conexion;
import Modelo.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class PabellonDAO {

    Conexion conect = new Conexion();
    Connection conection;
    PreparedStatement ps;
    ResultSet rs;

    public List<Pabellon> getPabellon(int idCarcel) {
        CarcelDAO carcelDAO = new CarcelDAO();
        Carcel carcel = carcelDAO.getCarcel(idCarcel);
        List<Pabellon> pabellones = new ArrayList();
        String sql = "SELECT * FROM pabellon WHERE id_carcel = '" + carcel.getId() + "'";
        try {
            conection = conect.getConnection();
            ps = conection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Pabellon pabellon = new Pabellon();
                pabellon.setId(rs.getInt("id"));
                pabellon.setId_nivelriesgo(rs.getInt("id_nivelriesgo"));
                pabellon.setId_carcel(rs.getInt("id_carcel"));
                pabellon.setId_nombre(rs.getInt("id_nombre"));
                pabellones.add(pabellon);
            }
            
            conection.close();
        } catch (Exception e) {
            System.err.println("Pabellon: "+e.getMessage());
        }
        return pabellones;

    }

  
}
