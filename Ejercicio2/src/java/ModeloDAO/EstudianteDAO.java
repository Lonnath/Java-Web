

package ModeloDAO;
import Config.Conexion;
import Interfaces.EstudianteDTO;
import Modelo.Empresas;
import Modelo.Estudiante;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
public class EstudianteDAO implements EstudianteDTO {
    Conexion conect = new Conexion();
    Connection conection;
    PreparedStatement ps;
    ResultSet rs;
    Estudiante estudiante = new Estudiante();
    
    
    @Override
    public List<Estudiante> listarE() {
        ArrayList<Estudiante> list = new ArrayList();
        String sql = "select * from alumnos";
        
        try{
            conection = conect.getConnection();
            ps = conection.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                Estudiante estudiante = new Estudiante();
                estudiante.setDni(rs.getString("dni"));
                estudiante.setNombre(rs.getString("nombre"));
                estudiante.setApellidos(rs.getString("apellidos"));
                estudiante.setEdad(rs.getInt("edad"));
                estudiante.setDireccion(rs.getString("direccion"));
                estudiante.setTelefono(rs.getString("telefono"));
                EmpresaDAO tmpo = new EmpresaDAO();
                Empresas tmpoEmpresa = tmpo.listEmpresas(rs.getInt("id_empresa"));
                estudiante.setEmpresa(tmpoEmpresa);
                list.add(estudiante);
            }
        }catch (Exception e){
        }
        
        return list;
    
    
    }

    @Override
    public void addE(Estudiante estudiante, String dniEmpresa) {
        String tmpo ="";
        if(dniEmpresa.equals("0")){
            tmpo = "0";
        }else tmpo = "'"+dniEmpresa+"'";
        String consult = "insert into alumnos(dni, nombre, apellidos, direccion, telefono, edad, id_empresa) values ('"+estudiante.getDni()+"','"+estudiante.getNombre()+"','"+estudiante.getApellidos()+"','"+estudiante.getDireccion()+"','"+estudiante.getTelefono()+"','"+estudiante.getEdad()+"',"+tmpo+")";
        try{
            conection = conect.getConnection();
            ps = conection.prepareStatement(consult);
            ps.executeUpdate();
            
        }catch(Exception e){
        }

    }

    @Override
    public Estudiante listEstudiante(int id) {
        String sql = "select * from alumnos where dni="+id;
        try{
            conection = conect.getConnection();
            ps = conection.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                estudiante.setDni(rs.getString("dni"));
                
            }
        }catch (Exception e){
        }
        return estudiante;
     }

    
    
}
