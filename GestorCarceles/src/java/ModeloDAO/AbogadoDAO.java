package ModeloDAO;

import Config.Conexion;
import Modelo.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class AbogadoDAO {

    Conexion conect = new Conexion();
    Connection conection;
    PreparedStatement ps;
    ResultSet rs;

    public List<Recluso_Abogado_Objeto> getAbogado(int codCarcel) {
        ArrayList<Recluso_Abogado_Objeto> abogados = new ArrayList();
        String sql = "SELECT * FROM abogado INNER JOIN recluso_abogado ON abogado.cedula = recluso_abogado.cedula_abogado";
        try {
            conection = conect.getConnection();
            ps = conection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Recluso_Abogado_Objeto tmpo1 = new Recluso_Abogado_Objeto();
                tmpo1.setCedula(Integer.parseInt(rs.getString("cedula")));
                tmpo1.setCodRecluso(rs.getString("codrecluso"));
                tmpo1.setFecha(rs.getString("fecha"));
                tmpo1.setNombre(rs.getString("nombre"));
                tmpo1.setApellido(rs.getString("apellido"));
                tmpo1.setDireccion(rs.getString("direccion"));
                tmpo1.setTelefono(rs.getInt("telefono"));
                tmpo1.setCorreo(rs.getString("correo"));
                abogados.add(tmpo1);
            }

            conection.close();
        } catch (Exception e) {
            System.out.println("ERROR ABOGADO DAO: " + e.getMessage());
        }
        return abogados;
    }

}
