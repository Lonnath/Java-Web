
package ModeloDAO;

import Config.Conexion;
import Interfaces.ProfesorDTO;
import Modelo.Profesor;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class ProfesorDAO implements ProfesorDTO {
    Conexion conect = new Conexion();
    Connection conection;
    PreparedStatement ps;
    ResultSet rs;
    Profesor profesor = new Profesor();

    @Override
    public List<Profesor> listarP() {
        ArrayList<Profesor> list = new ArrayList();
        String sql = "select * from profesores";
        try{
            conection = conect.getConnection();
            ps = conection.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                
                Profesor docente = new Profesor();
                docente.setDni(rs.getString("dni"));
                docente.setNombre(rs.getString("Nombre"));
                docente.setApellidos(rs.getString("apellidos"));
                docente.setDireccion(rs.getString("direccion"));
                docente.setTelefono(rs.getString("telefono"));
                docente.setId_curso(rs.getInt("id_curso"));
                list.add(docente);
            }
        }catch (Exception e){
        }
        
        return list;
    }

    @Override
    public void addProfesor(Profesor profesor) {
        String consult = "insert into profesores(dni, nombre, apellidos, direccion, telefono, id_curso) values ('"+profesor.getDni()+"', '"+profesor.getNombre()+"', '"+profesor.getApellidos()+"','"+profesor.getDireccion()+"','"+profesor.getTelefono()+"','"+profesor.getId_curso()+"')";
        try{
            conection = conect.getConnection();
            ps = conection.prepareStatement(consult);
            ps.executeUpdate();
            
        }catch(Exception e){
        }
    }
    
}
