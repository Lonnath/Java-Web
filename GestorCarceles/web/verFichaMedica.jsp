
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Recluso"%>
<%@page import="ModeloDAO.ReclusoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro Ficha Medica</title>
        <link rel="stylesheet"  href="css/style.css">
    </head>
    <body>
        <div class=" clase5">
            <form>
                <%
                        ReclusoDAO recluso = new ReclusoDAO();
                        List<Recluso> listR = recluso.mostrarReclusos();
                        Iterator<Recluso> iterR = listR.iterator();
                        Recluso tmpo = null;
                        while(iterR.hasNext()){
                            tmpo = iterR.next();
                        
                        
                    %>
                <p class="text-center  ">Ficha Medica.</p>
                <p >Datos de Persona</p>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputAddress">Nombre</label>
                        <label type="text" class="form-control" id="nombrefichamedica">JUAN DAVID</label>
                    </div>
                    <div class ="form-group col-md-6">
                        <label for="inputAddress">Apellido</label>
                        <label type="text" class="form-control" id="nombrefichamedica">PEREZ PEREZ</label>
                    </div>
                </div>


                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="cedulafichamedica">Cedula</label>
                        <label type="number" class="form-control" id="cedulafichamedica">1010127648</label>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="codigorelcluso">Codigo Relcuso</label>
                        <label type="number" class="form-control" id="codigorecluso">315845714</label>
                    </div>
                </div>
                <p class="text-center  ">Padecimientos.</p>
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th scope="col" style=" width: 20%">id</th>
                            <th scope="col" style=" width: 20%">Nombre</th>
                            <th scope="col" style=" width: 50%">Descripcion</th>

                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>FRACTURA</td>
                            <td>FRACTURA EN EL BRAZO IZQUIERDO POR ACCIDENTE AUTOMOVILISTICO, TIENE DISMINUCION DE AGARRE EN DICHA MANO</td>

                        </tr>


                    </tbody>
                </table>

                <a type="submit" href="fichaMedica.jsp" class="btn btn-primary">Finalizar</a>
            </form>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

    </body>
</html>