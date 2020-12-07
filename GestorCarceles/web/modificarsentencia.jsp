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
        <title>Modificar Sentencia</title>
        <link rel="stylesheet"  href="css/style.css">
    </head>
    <body>
        <div class=" clase5">
            <form >

                <p class="text-center  ">Modificar Sentencia.</p>


                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputAddress">id</label>
                        <div class="row">
                            <label type="text" class="form-control col-md-9 " id="idsentencia"></label>

                            <img src="imagenes/cand.png"  class=" clase8" style="width: 40px; height: 30px;">
                        </div>
                    </div>

                </div>
                <div class="form-group">
                    <label >  Descripcion </label>

                    <div class="row">
                        <textarea class="form-control col-md-9 " id="descripcionsentencia" rows="5" ></textarea>

                        <img src="imagenes/cand3.png"  class=" clase8" style="width: 40px; height: 30px;">
                    </div>
                </div>

                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="cedulaguardia">Tiempo Condena</label>
                        <div class="row">
                            <label type="text" class="form-control col-md-9 " id="tiempocondena"></label>

                            <img src="imagenes/cand.png"  class=" clase8" style="width: 40px; height: 30px;">
                        </div>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputAddress">Fecha</label>
                        <div class="row">
                            <label type="text" class="form-control col-md-9 " id="fechasentencia"></label>

                            <img src="imagenes/cand.png"  class=" clase8" style="width: 40px; height: 30px;">
                        </div>
                    </div>
                </div>

                <div class="row">
                    <select class="custom-select col-md-6" id="estadosentencia">
                        <option selected>Choose...</option>
                        <option value="1">One</option>
                        <option value="2">Two</option>
                        <option value="3">Three</option>
                    </select>
                    <img src="imagenes/cand3.png"  class=" clase8" style="width: 40px; height: 30px;">
                </div>





                <a type="submit"  href="sentencias.jsp" class="btn btn-primary form-control">Modificar</a>

            </form>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

    </body>
</html>
