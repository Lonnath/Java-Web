
package ModeloDAO;

import Config.Conexion;
import Modelo.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class GuardiaDAO {
    Conexion conect = new Conexion();
    Connection conection;
    PreparedStatement ps;
    ResultSet rs;

    public List<Carcel> getCarceles() {
        ArrayList<Carcel> carcel = new ArrayList();
        String sql = "SELECT * FROM carcel";
        try {
            conection = conect.getConnection();
            ps = conection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
            }
            
            conection.close();
        } catch (Exception e) {
        }
        return carcel;

    }
}
