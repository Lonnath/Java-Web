package ModeloDAO;

import Config.Conexion;
import Modelo.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class Recluso_AbogadoDAO {

    Conexion conect = new Conexion();
    Connection conection;
    PreparedStatement ps;
    ResultSet rs;

    public Recluso_Abogado getRecluso_Abogado(int reclusoId) {
        Recluso_Abogado reclusoA = new Recluso_Abogado();

        String sql = "SELECT * FROM recluso_abogado WHERE codrecluso = '" + reclusoId + "'";
        try {
            conection = conect.getConnection();
            ps = conection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                reclusoA.setCod_recluso(rs.getInt("codrecluso"));
                reclusoA.setCedulaabogado(rs.getLong("cedula_abogado"));
                reclusoA.setFecha(rs.getString("fecha"));

            }
            conection.close();
        } catch (Exception e) {
            System.out.println("RECLUSO ABOGADO ERROR: "+e.getMessage());
        }
        return reclusoA;

    }
    
    public Recluso_Abogado getAbogado_Recluso(int abogadoId) {
        Recluso_Abogado reclusoA = new Recluso_Abogado();

        String sql = "SELECT * FROM recluso_abogado WHERE cedula_abogado = '" + abogadoId + "'";
        try {
            conection = conect.getConnection();
            ps = conection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                reclusoA.setCod_recluso(rs.getInt("codrecluso"));
                reclusoA.setCedulaabogado(rs.getLong("cedula_abogado"));
                reclusoA.setFecha(rs.getString("fecha"));

            }
            conection.close();
        } catch (Exception e) {
            System.out.println("RECLUSO ABOGADO ERROR: "+e.getMessage());
        }
        return reclusoA;

    }
    
}
