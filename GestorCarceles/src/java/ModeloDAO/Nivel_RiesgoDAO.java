
package ModeloDAO;

import Config.Conexion;
import Modelo.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class Nivel_RiesgoDAO {
    Conexion conect = new Conexion();
    Connection conection;
    PreparedStatement ps;
    ResultSet rs;

    public String getRiesgo(int f) {
        Nivel_Riesgo tmpo = new Nivel_Riesgo();
        String sql = "SELECT * FROM nivel_riesgo WHERE id = '"+f+"'";
        try{
            
            conection = conect.getConnection();
            ps = conection.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                tmpo.setNombre(rs.getString("nombre"));
            }
            
            conection.close();
        }catch (Exception e){
            System.err.println("ERROR NIVEL RIESGO: "+ e.getMessage());
        }
        return tmpo.getNombre();
    }
}
