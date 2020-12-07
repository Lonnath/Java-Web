package ModeloDAO;

import Config.Conexion;
import Interfaces.NotasDTO;
import Modelo.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class NotasDAO implements NotasDTO {

    Conexion conect = new Conexion();
    Connection conection;
    PreparedStatement ps;
    ResultSet rs;

    @Override
    public List<Notas> listarNotas() {
        ArrayList<Notas> list = new ArrayList();
        String sql = "select * from notas";
        try {
            conection = conect.getConnection();
            ps = conection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {

                Notas nota = new Notas();
                nota.setNota(rs.getInt("nota"));
                nota.setId(rs.getInt("id"));
                nota.setId_Alumno(rs.getInt("id_alumno"));
                nota.setId_curso(rs.getInt("id_curso"));

                list.add(nota);
            }
        } catch (Exception e) {
        }

        return list;

    }
    private int obtenerUltimoID(){
        String sql = "select id from notas order by id";
        Notas nota = new Notas();
        try {
            conection = conect.getConnection();
            ps = conection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                nota.setId(rs.getInt("id"));

            }
        } catch (Exception e) {
        }

        return nota.getId();
    }
    @Override
    public void addNotas(Notas nota) {
        int tmpo = this.obtenerUltimoID();
        System.out.println(tmpo);
        String consult = "insert into notas(id, id_alumno, id_curso, nota) values ('"+(tmpo+1)+"','" + nota.getId_Alumno() + "','" + nota.getId_curso() + "','" + nota.getNota() + "')";
        System.out.println(consult);
        try {
            conection = conect.getConnection();
            ps = conection.prepareStatement(consult);
            ps.executeUpdate();

        } catch (Exception e) {
        }

    }

    @Override
    public List<Notas> listarIndividual(long id) {
        ArrayList<Notas> tmpo2 = new ArrayList();
        String sql = "select * from notas where id_alumno=" + id;
        try {
            conection = conect.getConnection();
            ps = conection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Notas nota = new Notas();
                nota.setNota(rs.getInt("nota"));
                nota.setId(rs.getInt("id"));
                nota.setId_Alumno(rs.getInt("id_alumno"));
                nota.setId_curso(rs.getInt("id_curso"));
                tmpo2.add(nota);
            }
        } catch (Exception e) {
        }
        return tmpo2;
    }

}
