package ModeloDAO;

import Config.Conexion;
import Modelo.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class CeldaDAO {

    Conexion conect = new Conexion();
    Connection conection;
    PreparedStatement ps;
    ResultSet rs;

    public List<Celda> getCelda(int idPabellon) {
        ArrayList<Celda> celdas = new ArrayList();
        String sql = "SELECT * FROM celda WHERE id_pabellon = '" + idPabellon + "'";
        try {
            conection = conect.getConnection();
            ps = conection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Celda celda = new Celda();
                celda.setId(rs.getInt("id"));
                celda.setId_nombre(rs.getInt("id_nombre"));
                celda.setId_pabellon(rs.getInt("id_pabellon"));
                celda.setCapacidad(rs.getInt("capacidad"));
                celda.setPiso(rs.getInt("piso"));
                celdas.add(celda);
            }
            
            conection.close();
        } catch (Exception e) {
            System.err.println("Celdas: " + e.getMessage());
        }
        return celdas;

    }

    public List<Celda> getCeldas(int carcel) {
        ArrayList<Celda> tmpoCelda = new ArrayList();
        PabellonDAO recluso = new PabellonDAO();
        List<Pabellon> listP = recluso.getPabellon(carcel);
        Iterator<Pabellon> iterP = listP.iterator();
        Pabellon tmpo1 = null;
        while (iterP.hasNext()) {
            tmpo1 = iterP.next();
            List<Celda> celda = getCelda(tmpo1.getId());
            Iterator<Celda> iterC = celda.iterator();
            Celda celd = null;
            while(iterC.hasNext()){
                tmpoCelda.add(iterC.next());
            }
        }
        return tmpoCelda;
    }
}