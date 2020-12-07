/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.*;
import ModeloDAO.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author USUARIO
 */
public class Control extends HttpServlet {

    String login = "index.jsp";
    String recluso = "reclusos.jsp";
    String users = "usuarioAdmin.jsp";
    String modificarUser = "modificarUsuario.jsp";
    String verRecluso = "verRecluso.jsp";
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String acceso = "";
        String action = request.getParameter("accion");
        HttpSession sesion = request.getSession();

        if (action.equalsIgnoreCase("insertarRecluso")) {
            try { 
                //Registrar Recluso
                
                ReclusoDAO insertRecluso = new ReclusoDAO();
                Recluso tmpoRecluso = new Recluso();
                
                tmpoRecluso.setTelfonofamiliar(Integer.parseInt(request.getParameter("telefonoFamiliar")));
                insertRecluso.ingresarRecluso(tmpoRecluso);
                //Registrar Persona
                PersonaDAO insertPersona = new PersonaDAO();
                long cedula = Long.parseLong(request.getParameter("cedula"));
                String nombre = request.getParameter("nombre");
                String apellido = request.getParameter("apellido");
                int telefono = Integer.parseInt(request.getParameter("telefono"));
                String correo = request.getParameter("email");
                String direccion = request.getParameter("direccion");
                Persona tempoPersona = new Persona(cedula, nombre, apellido, telefono, correo, direccion);
                insertPersona.ingresarPersona(tempoPersona);
                
                //Registrar Sentencia
                String fecha = request.getParameter("fechaIngresoSentencia");
                String descripcion = request.getParameter("sentencia");
                String tiempoCondena = request.getParameter("tiempoCadena");
                int idEstado = Integer.parseInt(request.getParameter("estado"));
                SentenciaDAO tmpo = new SentenciaDAO();
                int var = tmpo.codigoReclusoSentencia();
        
                Date date = new SimpleDateFormat("yyyy-MM-dd").parse(fecha);
                String newstring = new SimpleDateFormat("yyyy-MM-dd").format(date);
                Sentencia sentencia = new Sentencia(newstring, descripcion, tiempoCondena, idEstado, var);
                SentenciaDAO sentenciaInsert = new SentenciaDAO();
                sentenciaInsert.insertSentencia(sentencia);
                
                //Registrar Historial
                
                Historial_Persona_Recluso historial = new Historial_Persona_Recluso();
                historial.setCedula(cedula);
                String fecha1 = request.getParameter("fechaIngreso");
                
                Date date1 = new SimpleDateFormat("yyyy-MM-dd").parse(fecha1);
                String newstring1 = new SimpleDateFormat("yyyy-MM-dd").format(date1);
                
                historial.setFechaingreso(newstring1);
                historial.setCod_recluso(var);
                Historial_Persona_ReclusoDAO addHistorial = new Historial_Persona_ReclusoDAO();
                addHistorial.ingresarHistorial(historial);
                
                //Registrar RECLUSO CELDA
                Celda_ReclusoDAO celdaRecluso = new Celda_ReclusoDAO();
                Celda_Recluso celdaTmpoRecluso = new Celda_Recluso();
                celdaTmpoRecluso.setCod_recluso(var);
                celdaTmpoRecluso.setId_celda(Integer.parseInt(request.getParameter("celdaRecluso")));
                celdaRecluso.insertCelda_Recluso(celdaTmpoRecluso);
                
            } catch (Exception e) {
                System.out.println("INSERCION RECLUSO: " + e.getMessage());
            }
            
            acceso = recluso;
        }
        
        if(action.equalsIgnoreCase("verInfo")){
            request.setAttribute("info", request.getParameter("id"));
            acceso = verRecluso;
        }
        if (action.equalsIgnoreCase("cerrarSesion")) {
            sesion.removeAttribute("user");

            acceso = login;
        }

        if (action.equalsIgnoreCase("eliminarUser")) {
            UsuarioDAO tmpoDAO = new UsuarioDAO();
            tmpoDAO.eliminateUser(request.getParameter("user"));
            acceso = users;
        }

        if (action.equalsIgnoreCase("ingresarUsuario")) {

            try {
                Usuario user1 = (Usuario) sesion.getAttribute("user");
                String usuario = request.getParameter("email");
                String password = request.getParameter("password");
                String nombre = request.getParameter("nombre");
                String apellido = request.getParameter("apellido");
                long telefono = Long.parseLong(request.getParameter("telefono"));
                String url = request.getParameter("url");
                int cedula = Integer.parseInt(request.getParameter("cedula"));
                Usuario user = new Usuario();
                user.setUsuario(usuario);
                user.setPassword(password);
                user.setNombre(nombre);
                user.setApellido(apellido);
                user.setTelefono(telefono);
                user.setTipoUsuario(1);
                user.setUrl(url);
                user.setCedula(cedula);
                user.setIdcarcel(user1.getIdcarcel());

                acceso = new UsuarioDAO().ingresarUsuario(user);
            } catch (Exception e) {
                System.out.println("SESION: " + e.getMessage());
            }

        }

        if (action.equalsIgnoreCase("modificarUser")) {
            acceso = modificarUser;
        }

        RequestDispatcher vista = request.getRequestDispatcher(acceso);
        vista.forward(request, response);
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
        processRequest(request, response);
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
        processRequest(request, response);
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
