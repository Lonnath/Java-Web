<%-- 
    Document   : index
    Created on : Dec 4, 2020, 4:16:14 PM
    Author     : USUARIO
--%>

<%@page import="ModeloDAO.*"%>
<%@page import="Modelo.*"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    HttpSession sesion = request.getSession();
    Usuario user = (Usuario)sesion.getAttribute("user");
    CarcelDAO carcelDAO = new CarcelDAO();
    Carcel tmpoCarcel = carcelDAO.getCarcel(user.getIdcarcel());
    MunicipioDAO tmpoMunicipio = new MunicipioDAO();
    DepartamentoDAO tmpoDepartamento = new DepartamentoDAO();
    Municipio tmpoMun = tmpoMunicipio.getMunicipio(tmpoCarcel.getId_municipio());  

%>
<html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ficha Medica</title>
        <link rel="stylesheet"  href="css/style.css">
    </head>
    <body>
        <div class="clase2 ">

            <ul class="nav justify-content-end clase6 ">
                <li class="nav-item ">
                    <a class="nav-link active text-white" href="Control?accion=cerrarSesion">Cerrar Sesion</a>
                </li>

            </ul>


            <table  class="clase4"><tr >
                    <td style="width: 10% ;" colspan="1" class="text-white"> Bienvenido</td>
                    <td style="width: 90%; "  colspan="2" class="text-white"><%=tmpoCarcel.getNombre() %> </td>
                </tr>  
                <tr >
                    <td colspan="1" style="width:33%;" class="text-white"> Direccion: <%=tmpoCarcel.getDireccion() %></td>
                    <td colspan="1" style="width:33%;" class="text-white"> Municipo: <%=tmpoMunicipio.nombreMunicipio(tmpoCarcel.getId_municipio()) %></td>
                    <td colspan="1" style="width:33%;" class="text-white"> Departamento: <%=tmpoDepartamento.getNombreDepartamento(tmpoMun.getId_departamento()) %> </td>
                </tr>  

            </table>
            <nav class="navbar navbar-light bg-light">
                <form class="form-inline">
                    <input class="form-control mr-sm-2" type="search" placeholder="Buscar por Cedula " aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Buscar</button>
                </form>
            </nav>
            <table class="table table-striped">
               <thead>
                    <tr>
                        <th scope="col">id</th>
                        <th scope="col">Cedula</th>
                        <th scope="col">Codigo Recluso</th>
                        <th scope="col"></th>
                        <th scope="col"></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row">1</th>
                        <td>101012</td>
                        <td>2</td>
                       
                        <td><a href="verFichaMedica.jsp">VER</a></td>
                        <td><a href="nuevoPadecimiento.jsp">AÑADIR PROCEDIMIENTO</a></td>
                    </tr>
                   
                    
                </tbody>
            </table>


        </div>
        <div class = "clase1">

            <div class="list-group" >
                
                <a class="text-center clase6" href="#"><img src="<%=user.getUrl() %>" alt=""  style=" width: 60%; height: 60%; "class="rounded-circle"><div class="text-white text-center"><%=user.getNombre() %></div></a><a class="list-group-item list-group-item-action text-center clase3 clase6 text-white" href="reclusos.jsp">Reclusos</a>
                <a class="list-group-item list-group-item-action text-center clase3 clase6 text-white" href="guardias.jsp">Guardias</a>
                <a class="list-group-item list-group-item-action text-center clase3 clase6 text-white" href="pabellones.jsp">Pabellones</a>
                <a class="list-group-item list-group-item-action text-center clase3 clase6 text-white" href="celdas.jsp">Celdas</a>
                <a class="list-group-item list-group-item-action text-center clase3 clase6 text-white" href="sentencias.jsp">Sentencias</a>
                <a class="list-group-item list-group-item-action text-center clase3 clase6 text-white dirStyle" href="fichaMedica.jsp">Ficha Medicas</a>
                <a class="list-group-item list-group-item-action text-center clase3 clase6 text-white" href="abogados.jsp">Abogados</a>

            </div>
        </div>




        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

    </body>
</html>
