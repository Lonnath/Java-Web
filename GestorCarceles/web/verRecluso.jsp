

<%@page import="ModeloDAO.*"%>
<%@page import="Modelo.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    HttpSession sesion = request.getSession();
    Usuario user = (Usuario) sesion.getAttribute("user");
    ReclusoDAO reclusoDAO = new ReclusoDAO();
    ConsultaVerRecluso consulta = reclusoDAO.getConsultaVerRecluso(Integer.parseInt(request.getParameter("id")));

%>
<html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ver Recluso</title>
        <link rel="stylesheet"  href="css/style.css">
    </head>
    <body>
        <div class="container clase5">
            <form>

                <p class="text-center  ">Registro Recluso.</p>
                <p >Datos de persona</p>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputAddress">Nombre</label>
                        <input type="text" class="form-control" id="nombrePersona" value="<%=consulta.getNombre()%>" disabled>
                    </div>
 
                    <div class ="form-group col-md-6">
                        <label for="inputAddress">Apellido</label>
                        <input type="text" class="form-control" id="nombrePersona" value="<%=consulta.getApellido()%>" disabled>
                    </div>
                </div>


                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="cedulapersona">Cedula</label>
                        <input type="text" class="form-control" id="nombrePersona" value="<%=consulta.getCedula()%>" disabled>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="telefonopersona">Telefono</label>
                        <input type="text" class="form-control" id="nombrePersona" value="<%=consulta.getTelefono()%>" disabled>
                    </div>

                </div>

                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="emainpersona">Email</label>
                        <input type="text" class="form-control" id="nombrePersona" value="<%=consulta.getCorreo()%>" disabled>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="direccionpersona">Direccion</label>
                        <input type="text" class="form-control" id="nombrePersona" value="<%=consulta.getDireccion()%>" disabled>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="telefonofamiliar">TelefonoFamiliar</label>
                        <input type="text" class="form-control" id="nombrePersona" value="<%=consulta.getTelefonoFamiliar()%>" disabled>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputAddress">Fecha Ingreso</label>
                        <input type="text" class="form-control" id="nombrePersona" value="<%=consulta.getFechaIngreso() %>" disabled>
                    </div>
                </div>


                <p >Datos de Sentencia</p>

                <div class="form-row">
                    <div class="form-group">
                        <label >  Descripcion </label>
                        <textarea   class="form-control " id="descripcionsentencia" rows="5" placeholder="<%=consulta.getDescripcion()%>" disabled></textarea>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label >Tiempo Condena</label>
                        <input type="text" class="form-control" id="nombrePersona" value="<%=consulta.getTiempoCondena()%>" disabled>
                    </div>





                    <a href="reclusos.jsp" class="btn btn-primary">VOLVER</a>
            </form>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

    </body>
</html>
