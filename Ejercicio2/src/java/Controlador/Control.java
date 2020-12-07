package Controlador;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Calendar;
import Modelo.*;
import ModeloDAO.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Control extends HttpServlet {

    private String index = "index.jsp";
    private String nota = "nota.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String acceso = "";
        String action = request.getParameter("accion");
        if (action.equalsIgnoreCase("notas")) {
            request.setAttribute("estudianteCC", request.getParameter("id"));
            acceso = nota;
        }
        RequestDispatcher vista = request.getRequestDispatcher(acceso);
        vista.forward(request, response);

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String acceso = "";
        String action = request.getParameter("accion");
        if (action.equalsIgnoreCase("agregarCurso")) {
            CursoDAO tmpo = new CursoDAO();
            Curso tmp = new Curso();
            String tipoCurso = request.getParameter("cursoSelect");
            String anioInicio = request.getParameter("desde");
            String anioFin = request.getParameter("hasta");
            tmp.setFecha_inicio(anioInicio);
            tmp.setFecha_fin(anioFin);
            tmp.setId_tipos_curso(Integer.parseInt(tipoCurso));
            tmpo.addC(tmp);
            acceso = index;
        }
        if (action.equalsIgnoreCase("agregarEmpresa")) {

            EmpresaDAO enterprais = new EmpresaDAO();
            Empresas tmpoEmpresa = new Empresas();
            String direccion = request.getParameter("dirEmpresa");
            String nombre = request.getParameter("nomEmpresa");
            int cifEmpresa = Integer.parseInt(request.getParameter("cifEmpresa"));
            String telefonoEmpresa = request.getParameter("telEmpresa");
            tmpoEmpresa = new Empresas(cifEmpresa, nombre, direccion, telefonoEmpresa);
            enterprais.addE(tmpoEmpresa);
            acceso = index;
        }

        if (action.equalsIgnoreCase("agregarAlumno")) {
            String tmpo = "";

            String nombre = request.getParameter("nombreAlumno");
            String telefono = request.getParameter("telAlumno");
            String edad = request.getParameter("edadAlumno");
            String dni = request.getParameter("docAlumno");
            if (request.getParameter("workSelect").equals("si")) {
                tmpo = request.getParameter("empresaSelect");
            } else {
                tmpo = "0";
            }

            Estudiante estudiante = new Estudiante();
            EstudianteDAO estudianteDAO = new EstudianteDAO();
            estudiante.setApellidos(request.getParameter("apellidoAlumno"));
            estudiante.setNombre(nombre);
            estudiante.setDireccion(request.getParameter("dirAlumno"));
            estudiante.setDni(dni);
            estudiante.setEdad(Integer.parseInt(edad));
            estudiante.setTelefono(telefono);
            estudianteDAO.addE(estudiante, tmpo);
            acceso = index;
        }
        if (action.equalsIgnoreCase("agregarTipoCurso")) {

            TiposCurso cursoTipo = new TiposCurso();
            TiposCursoDAO cTDAO = new TiposCursoDAO();
            String titulo = request.getParameter("titulo");
            String codigo = request.getParameter("codigo");
            String programa = request.getParameter("programa");
            String duracion = request.getParameter("duracion");
            cursoTipo = new TiposCurso(Integer.parseInt(codigo), Integer.parseInt(duracion), programa, titulo);
            cTDAO.addE(cursoTipo);
            acceso = index;
        }

        if (action.equalsIgnoreCase("agregarProfesor")) {

            ProfesorDAO proDAO = new ProfesorDAO();
            Profesor tt = new Profesor();
            String nombre = request.getParameter("nombreProfe");
            String apellido = request.getParameter("apellidoProfe");
            String direccion = request.getParameter("dirProfe");
            String telefono = request.getParameter("telProfe");
            String documento = request.getParameter("docProfe");
            String curso = request.getParameter("cursoSelect");
            System.out.println(curso);
            tt.setDni(documento);
            tt.setNombre(nombre);
            tt.setApellidos(apellido);
            tt.setDireccion(direccion);
            tt.setTelefono(telefono);
            tt.setId_curso(Integer.parseInt(curso));
            proDAO.addProfesor(tt);
            acceso = index;

        }

        if (action.equalsIgnoreCase("agregarNota")) {

            Notas notae = new Notas();
            NotasDAO notaDao = new NotasDAO();
            long idEstudiante = Long.parseLong(request.getParameter("id"));
            long idMateria = Long.parseLong(request.getParameter("materiaSelect"));
            int nota = Integer.parseInt(request.getParameter("nota"));
            notae.setId_Alumno(idEstudiante);
            notae.setId_curso(idMateria);
            notae.setNota(nota);
            notaDao.addNotas(notae);
            acceso = index;
        }

        RequestDispatcher vista = request.getRequestDispatcher(acceso);
        vista.forward(request, response);

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
