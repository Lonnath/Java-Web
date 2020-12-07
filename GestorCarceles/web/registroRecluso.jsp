<%-- 
    Document   : registroRecluso
    Created on : 6/12/2020, 08:45:54 PM
    Author     : Lonnath
--%>

<%@page import="java.util.*"%>
<%@page import="Modelo.*"%>
<%@page import="ModeloDAO.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    try {
        HttpSession sesion = request.getSession();
        Usuario user = (Usuario) sesion.getAttribute("user");
        if(user!=null){
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

        <link rel="stylesheet"  href="css/style.css">
    </head>
    <body>
        <div class="container clase5">
            <form action="Control" method="post">

                <p class="text-center">Registro Recluso.</p>
                <p >Datos de persona</p>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputAddress">Nombre</label>

                        <input type="text" class="form-control" id="nombrePersona" name="nombre">


                    </div>
                    <div class ="form-group col-md-6">
                        <label for="inputAddress">Apellido</label>
                        <input type="text" class="form-control" id="nombrePersona" name="apellido">
                    </div>
                </div>


                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="cedulapersona">Cedula</label>
                        <input type="number" class="form-control" id="cedulapersona" name="cedula">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="telefonopersona">Telefono</label>
                        <input type="number" class="form-control" id="telefonopersona" name="telefono">
                    </div>

                </div>

                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="emainpersona">Email</label>
                        <input type="email" class="form-control" id="emailpersona" name="email">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="direccionpersona">Direccion</label>
                        <input type="text" class="form-control" id="direccionpersona" name="direccion">
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="telefonofamiliar">TelefonoFamiliar</label>
                        <input type="number" class="form-control" id="telefonofamiliar" name="telefonoFamiliar">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputAddress">Fecha Ingreso</label>
                        <input type="date" class="form-control" id="fechaingreso" name="fechaIngreso">
                    </div>
                </div>


                <p >Datos de Sentencia</p>

                <div class="form-row">
                    <div class="form-group">
                        <label >  Descripcion </label>
                        <textarea class="form-control " id="descripcionsentencia" rows="5" name="sentencia" ></textarea>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label >Tiempo Condena</label>
                        <input type="text" class="form-control" id="tiempocondena" name="tiempoCadena">
                    </div>
                    <div class="form-group col-md-6 ">
                        <label >Estado</label>
                        <select class="custom-select mr-sm-2" id="estadosentencia" name="estado">
                            <option selected>Choose...</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                        </select>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputAddress">Fecha Ingreso</label>
                        <input type="date" class="form-control" id="fechaingreso" name="fechaIngresoSentencia">
                    </div>
                    <div class="form-group col-md-6 ">
                    <label >ID Celda - ID Pabellon</label>
                    <select class="custom-select mr-sm-2" id="idceldarecluso" name="celdaRecluso">
                        <option selected>Escoger...</option>
                        <%
                            CeldaDAO celda = new CeldaDAO();
                            List<Celda> listC = celda.getCeldas(user.getIdcarcel());
                            Iterator<Celda> itC = listC.iterator();
                            Celda tmpo2 = null;
                            while (itC.hasNext()) {
                                tmpo2 = itC.next();


                        %> 
                        <option value="<%=tmpo2.getId() %>">Celda: <%=tmpo2.getId_nombre()%> - Pabellon: <%=tmpo2.getId_pabellon() %> </option>
                        <%
                            }
                        %>
                    </select>
                </div> 
                </div>
                

                <button type="submit" name="accion" value="insertarRecluso" class="btn btn-primary">INSERTAR</button>

<%}else{
            RequestDispatcher vista = request.getRequestDispatcher("index.jsp");
        vista.forward(request, response);
            
        }
} catch (Exception e) {
        System.err.print("SESION RECLUSO: " + e.getMessage());
    }
%>
            </form>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    </body>
</html>
