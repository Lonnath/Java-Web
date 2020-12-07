<%@page import="ModeloDAO.*"%>
<%@page import="Modelo.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%
        HttpSession sesion = request.getSession();
        String tmpo = request.getParameter("user");
        UsuarioDAO tmpoDAO = new UsuarioDAO();
        Usuario search = tmpoDAO.consultarUsuario(tmpo);
        System.out.print(search.getNombre());
    %>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Usuario</title>
        <link rel="stylesheet"  href="css/style.css">
    </head>
    <body>
        <div class="container clase5">
            <form action="Control" method="post">

                <p class="text-center  ">Modificar Usuario.</p>
                <p >Datos de persona</p>
                <div class="form-row">
                    <div class="form-group col-md-6">

                        <label for="inputAddress">Nombre</label>
                        <div class="row">
                             <input type="text" class="form-control col-md-9" id="apellidoguardia" value="<%=search.getNombre() %>" disabled>
                            <img src="imagenes/cand.png"  class=" clase8" style="width: 40px; height: 30px;">
                        </div>
                    </div>
                    <div class ="form-group col-md-6">

                        <label for="inputAddress">Apellido</label>
                        <div class="row">                            
                            <input type="text" class="form-control col-md-9" id="apellidoguardia" value="<%=search.getApellido() %>" disabled>
                            <img src="imagenes/cand.png"  class=" clase8" style="width: 40px; height: 30px;">
                        </div>
                    </div>
                </div>


                <div class="form-row">
                    <div class="form-group col-md-6">

                        <label for="cedulapersona">Cedula</label>
                        <div class="row">
                            <input type="text" class="form-control col-md-9" id="apellidoguardia" value="<%=search.getCedula() %>" disabled>
                            
                            <img src="imagenes/cand.png"  class=" clase8" style="width: 40px; height: 30px;">
                        </div>
                    </div>
                    <div class="form-group col-md-6">

                        <label for="telefonopersona">Telefono</label>
                        <div class="row">
                            <input type="number" class="form-control col-md-9" id="telefonoguardia" value="<%=search.getTelefono() %>">
                            <img src="imagenes/cand3.png"  class=" clase8" style="width: 40px; height: 30px;">
                        </div>
                    </div>

                </div>

                <div class="form-row">
                    <div class="form-group col-md-6">

                        <label for="emainpersona">Email</label>
                        <div class="row">
                            <input type="email" class="form-control col-md-9" id="emailguardia">
                            <img src="imagenes/cand3.png"  class=" clase8" style="width: 40px; height: 30px;" value="<%=search.getUsuario() %>">
                        </div>
                    </div>
                    <div class="form-group col-md-6 ">
                        <label >Password</label>
                        <div class="row">
                            <input type="password" class="form-control col-md-9" id="password">
                            <img src="imagenes/cand3.png"  class=" clase8" style="width: 40px; height: 30px;" value="<%=search.getPassword()%>">
                        </div>
                    </div>
                </div>
                <div class="form-row">

                    <div class="form-group col-md-6">

                        <label for="inputAddress">Url imagen</label>
                        <div class="row">
                            <input type="url" class="form-control col-md-9" id="urlimagen">
                            <img src="imagenes/cand3.png"  class=" clase8" style="width: 40px; height: 30px;" value="<%=search.getUrl() %>">
                        </div>
                    </div>

                </div>


                <button type="submit" name="accion" value="modificarUsuario&id=<%=tmpo%>" class="btn btn-primary">MODIFICAR</button>



            </form>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

    </body>
</html>
