package ModeloDAO;

import Config.Conexion;
import Modelo.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ReclusoDAO {

    Conexion conect = new Conexion();
    Connection conection;
    PreparedStatement ps;
    ResultSet rs;

    public List<Recluso> mostrarReclusos(int carcel) {
        PabellonDAO pabellonDAO = new PabellonDAO();
        List<Pabellon> pabe = pabellonDAO.getPabellon(carcel);
        Iterator<Pabellon> pabeI = pabe.iterator();
        ArrayList<Recluso> tmpo = new ArrayList();
        Pabellon tmpoPabellon = null;
        while (pabeI.hasNext()) {
            tmpoPabellon = pabeI.next();
            CeldaDAO celdaDAO = new CeldaDAO();
            List<Celda> celdas = celdaDAO.getCelda(tmpoPabellon.getId());
            Iterator<Celda> celdaI = celdas.iterator();
            Celda tmpoCelda = null;
            while (celdaI.hasNext()) {
                tmpoCelda = celdaI.next();
                Celda_ReclusoDAO celda_ReclusoDAO = new Celda_ReclusoDAO();
                List<Celda_Recluso> celdas_Recluso = celda_ReclusoDAO.getCelda_Reclusos(tmpoCelda.getId());
                Iterator<Celda_Recluso> celdaRI = celdas_Recluso.iterator();
                Celda_Recluso cRecluso = null;
                while (celdaRI.hasNext()) {
                    cRecluso = celdaRI.next();
                    String sql = "SELECT * FROM recluso WHERE codrecluso = '" + cRecluso.getCod_recluso() + "'";
                    try {
                        conection = conect.getConnection();
                        ps = conection.prepareStatement(sql);
                        rs = ps.executeQuery();
                        while (rs.next()) {
                            Recluso reo = new Recluso();
                            reo.setCod_recluso(rs.getInt("codrecluso"));
                            reo.setTelfonofamiliar(rs.getInt("telefonofamiliar"));
                            Historial_Persona_ReclusoDAO historial = new Historial_Persona_ReclusoDAO();
                            Historial_Persona_Recluso recluso = historial.getReclusoInfo(reo.getCod_recluso());
                            PersonaDAO personaDAO = new PersonaDAO();
                            Persona persona = personaDAO.getPersonaE(recluso.getCedula());
                            reo.setPersona(persona);
                            tmpo.add(reo);
                        }

                        conection.close();
                    } catch (Exception e) {
                        System.err.println(e.getMessage());
                    }
                }
            }
        }

        return tmpo;
    }

    public void ingresarRecluso(Recluso recluso) {
        String insert = "INSERT INTO recluso (telefonofamiliar) values(" + recluso.getTelfonofamiliar() + ")";
        try {
            conection = conect.getConnection();
            ps = conection.prepareStatement(insert);
            ps.executeUpdate();
            
            conection.close();
        } catch (Exception e) {

            System.out.println("ERROR INGRESAR RECLUSO: " + e.getMessage());
        }
    }
    
    public ConsultaVerRecluso getConsultaVerRecluso(int codRecluso){
        String consulta ="SELECT * FROM persona inner join historial on historial.cedula = persona.cedula inner join recluso on recluso.codrecluso = historial.codrecluso inner join sentencia on recluso.codrecluso = sentencia.codrecluso";
        ArrayList<ConsultaVerRecluso> tmpo = new ArrayList();
        try{
             conection = conect.getConnection();
            ps = conection.prepareStatement(consulta);
            rs = ps.executeQuery();
            while(rs.next()){
                ConsultaVerRecluso mostrar = new ConsultaVerRecluso();
                mostrar.setCedula(rs.getInt("cedula"));
                mostrar.setFechaIngreso(rs.getString("fechaingreso"));
                mostrar.setCodigoRecluso(rs.getLong("codrecluso"));
                mostrar.setNombre(rs.getString("nombre"));
                mostrar.setApellido(rs.getString("apellido"));
                mostrar.setDireccion(rs.getString("direccion"));
                mostrar.setTelefono(rs.getLong("telefono"));
                mostrar.setCorreo(rs.getString("correo"));
                mostrar.setTelefonoFamiliar(rs.getInt("telefonofamiliar"));
                mostrar.setFecha(rs.getString("fecha"));
                mostrar.setDescripcion(rs.getString("descripcion"));
                mostrar.setTiempoCondena(rs.getString("tiempocondena"));
                tmpo.add(mostrar);
                
            }
            conection.close();
        }catch(Exception e){
            System.err.print("ERROR CONSULTA VER RECLUSO: "+e.getMessage());
        }
        
        for (int i = 0; i < tmpo.size(); i++) {
            if(codRecluso==tmpo.get(i).getCedula())
                return tmpo.get(i);
        }
        
        
        return null;
    }

}
