<%-- 
    Document   : formulario
    Created on : Dec 4, 2020, 5:42:46 PM
    Author     : USUARIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Abogado</title>
        <link rel="stylesheet"  href="css/style.css">
    </head>
    <body>
        <div class=" clase5">
            <form >

                <p class="text-center  ">Modificar Abogado.</p>
                
                <p >Datos de Persona</p>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputAddress">Nombre</label>
                        <div class="row">
                            <label type="text" class="form-control col-md-9 " id="nombreabogado"></label>
           
                        <img src="imagenes/cand.png"  class=" clase8" style="width: 40px; height: 30px;">
                        </div>
                    </div>
                    <div class ="form-group col-md-6">
                        <label for="inputAddress">Apellido</label>
                    
                        <div class="row">
                            <label type="text" class="form-control col-md-9 " id="apellidoabogado"></label>
           
                        <img src="imagenes/cand.png"  class=" clase8" style="width: 40px; height: 30px;">
                        </div>
                    </div>
                </div>


                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="cedulaabogado">Cedula</label>
                        <div class="row">
                            <label type="text" class="form-control col-md-9 " id="cedulaabogado"></label>
           
                        <img src="imagenes/cand.png"  class=" clase8" style="width: 40px; height: 30px;">
                        </div>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="telefonoabogado">Telefono</label>
                         <div class="row">
                        <input type="text" class="form-control col-md-9 " id="telefonoabogado">
           
                        <img src="imagenes/cand3.png"  class=" clase8" style="width: 40px; height: 30px;">
                        </div>
                    </div>

                </div>

                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="emainabogado">Email</label>
                         <div class="row">
                        <input type="text" class="form-control col-md-9 " id="emailabogado">
           
                        <img src="imagenes/cand3.png"  class=" clase8" style="width: 40px; height: 30px;">
                        </div>
                                          
                    </div>
              

                <a type="submit"  href="abogados.jsp" class="btn btn-primary form-control">Modificar</a>
                    
            </form>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

    </body>
</html>
