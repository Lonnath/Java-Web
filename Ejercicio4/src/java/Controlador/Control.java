/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.*;
import ModeloDAO.*;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Lonnath
 */
public class Control extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    private String index = "index.jsp";
    private String modificar = "modificar.jsp";
    private Pais pais = new Pais();
    private PaisDAO paisDao = new PaisDAO();
    private Guerra guerra = new Guerra();
    private GuerraDAO gDAO = new GuerraDAO();
    private Bando bando = new Bando();
    private BandoDAO bDAO = new BandoDAO();
    private int id = 0;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

        }
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
        if(action.equalsIgnoreCase("guerras")){
            
            acceso = index;
        }
        if(action.equalsIgnoreCase("agregarGuerra")){
        
            String nombre = request.getParameter("nomGuerra");
            int anioInicio = Integer.parseInt(request.getParameter("desde"));
            int anioFin = Integer.parseInt(request.getParameter("hasta"));
            guerra.setNombre(nombre);
            guerra.setAnio_inicio(anioInicio);
            guerra.setAnio_fin(anioFin);
            gDAO.addG(guerra);
            acceso = index;
        }
        
        if(action.equalsIgnoreCase("agregarBando")){
            String nombre = request.getParameter("nomBando");
            String idGuerra = request.getParameter("guerraSelect");
            bando.setNombre(nombre);
            if(!idGuerra.equalsIgnoreCase("no")){
               bando.setId_guerra(Integer.parseInt(idGuerra));
            }else bando.setId_guerra(0);
            
            if(request.getParameter("ganadorSelect").equals("si")){
                bando.setGanador(1);
            }else bando.setGanador(0);
            
            bDAO.addB(bando);
            acceso = index;
        }
        
        if (action.equalsIgnoreCase("agregarPais")) {
            String nombre = request.getParameter("nomPaises");
            String bando = request.getParameter("bandosSelect");
            
            if(request.getParameter("independenceSelect").equalsIgnoreCase("si")){
                pais.setAnio_entrada(Integer.parseInt(request.getParameter("desde")));
                pais.setAnio_salida(Integer.parseInt(request.getParameter("hasta")));
            
            }else{
                pais.setAnio_entrada(0);
                pais.setAnio_salida(0);
            }
            
            
            if(!bando.equals("no")){
               pais.setId_bando(Integer.parseInt(bando));
            }else pais.setId_bando(0);
            
            pais.setNombre(nombre);
            paisDao.addP(this.pais);
            acceso = index;
            
        }
        
        
        if(action.equalsIgnoreCase("cambiarBando")){
            request.setAttribute("idPais", request.getParameter("id"));
            acceso = modificar;
        }
        if(action.equalsIgnoreCase("cambiarBandoPais")){
            
            pais = paisDao.listP(Integer.parseInt(request.getParameter("id")));
            pais.setId_bando(Integer.parseInt(request.getParameter("bandoSel")));
            this.paisDao.editP(pais);
            acceso = index;
        }
        
        if(action.equalsIgnoreCase("eliminarPais")){
            id = Integer.parseInt(request.getParameter("id"));
            paisDao.eliminarP(id);
            acceso = index;
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
