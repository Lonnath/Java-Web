
<%@page import="ModeloDAO.*"%>
<%@page import="Modelo.*"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
        <link rel="stylesheet" href="css/styles.css">
        <script src="https://unpkg.com/feather-icons"></script>
        <script src="js/archivo.js"></script>
        <title>Document</title>
    </head>
    <body class="inter antialiased" onload="showTables('btnAlumnos')">
        <div class="flex pt-12 px-8 items-center">
            <i data-feather="book-open"></i>
            <p class="tracking-tight font-medium text-lg ml-2">Academy</p>
        </div>

        <div class="pt-12 px-8">
            <h1 class="text-3xl mx-auto text-center font-semibold tracking-tight">Academia de clases</h1>
        </div>

        <div class="flex pt-12 px-8 tracking-tight items-center justify-between mx-auto" style="width: 80%;">
            <div class="flex"> <!-- Filtrar la info de la tabla con los botones -->
                <button type="button" class="px-4 py-2 border shadow rounded bg-gray-50" id="btnAlumnos" onclick="showTables(this.id)">Alumnos</button>
                <button type="button" class="px-4 py-2 border shadow rounded bg-gray-50 ml-6" id="btnProfesores" onclick="showTables(this.id)">Profesores</button>
                <button type="button" class="px-4 py-2 border shadow rounded bg-gray-50 ml-6" id="btnCursos" onclick="showTables(this.id)">Cursos</button>
                <button type="button" class="px-4 py-2 border shadow rounded bg-gray-50 ml-6" id="btnTipo" onclick="showTables(this.id)">Tipo de Cursos</button>
            </div>

            <div class="flex">
                <button type="button" class="px-4 py-2 bg-black border shadow rounded ml-6 flex items-center" onclick="showDropdown()">
                    <p class="text-white">Agregar</p>
                    <i data-feather="plus" class="ml-2 text-white" style="width: 18px; height: 18px;"></i>
                </button>
            </div>
        </div>

        <div class="mt-3 justify-end hidden" id="dropdown" style="width: 92.2%;">
            <div class="flex flex-col shadow border w-40">
                <a href="formularios.jsp?id=1" class="px-4 py-2 border-b">Curso</a>
                <a href="formularios.jsp?id=2" class="px-4 py-2 border-b">Profesor</a>
                <a href="formularios.jsp?id=3" class="px-4 py-2 border-b">Alumno</a>
                <a href="formularios.jsp?id=4" class="px-4 py-2 border-b">Tipo de Curso</a>
                <a href="formularios.jsp?id=5" class="px-4 py-2">Empresa</a>
            </div>
        </div>
        <div class="hidden pt-12 px-8" id="tablaEstudiantes">
            <!-- Tabla -->
            <div class="-my-2 overflow-x-auto">
                <div class="py-2 align-middle inline-block min-w-full">
                    <div class="shadow overflow-hidden border-b border-gray-200">
                        <table class="min-w-full divide-y divide-gray-200">
                            <thead>
                                <tr>
                                    <th scope="col" class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                        ID
                                    </th>
                                    <th scope="col" class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                        NOMBRE
                                    </th>
                                    <th scope="col" class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                        APELLIDOS
                                    </th>
                                    <th scope="col" class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                        DIRECCION
                                    </th>
                                    <th scope="col" class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                        TELEFONO
                                    </th>
                                    <th scope="col" class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                        EMPRESA CIF
                                    </th>
                                    <th scope="col" class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                        NOMBRE EMPRESA
                                    </th>
                                    <th scope="col" class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                        DIRECCION EMPRESA
                                    </th>
                                    <th scope="col" class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                        TELEFONO EMPRESA
                                    </th>
                                    <th scope="col" class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">

                                    </th>

                                </tr>
                            </thead>
                            <%
                                EstudianteDAO daoE = new EstudianteDAO();
                                List<Estudiante> listE = daoE.listarE();
                                Iterator<Estudiante> iterE = listE.iterator();
                                Estudiante estudiante = null;
                                while (iterE.hasNext()) {
                                    estudiante = iterE.next();


                            %>
                            <tbody class="bg-white divide-y divide-gray-200">
                                <tr>
                                    <td class="px-6 py-4 whitespace-nowrap">
                                        <p><%= estudiante.getDni()%></p>
                                    </td>
                                    <td class="px-6 py-4 whitespace-nowrap">
                                        <p><%= estudiante.getNombre()%></p>
                                    </td>
                                    <td class="px-6 py-4 whitespace-nowrap">
                                        <%= estudiante.getApellidos()%>
                                    </td>
                                    <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">
                                        <%= estudiante.getDireccion()%>
                                    </td>
                                    <td class="px-6 py-4 whitespace-nowrap text-sm font-medium">
                                        <%= estudiante.getTelefono()%>
                                    </td>
                                    <td class="px-6 py-4 whitespace-nowrap text-sm font-medium">
                                        <%if(estudiante.getEmpresa()!=null){%>
                                        <%= estudiante.getEmpresa().getCif() %>
                                        <%}else%><%="NN"%>
                                    </td>
                                    <td class="px-6 py-4 whitespace-nowrap text-sm font-medium">
                                        <%if(estudiante.getEmpresa()!=null){%>
                                        <%= estudiante.getEmpresa().getNombre()%>
                                        <%}else%><%="NN"%>
                                    </td>
                                    <td class="px-6 py-4 whitespace-nowrap text-sm font-medium">
                                        <%if(estudiante.getEmpresa()!=null){%>
                                        <%= estudiante.getEmpresa().getDireccion()%>
                                        <%}else%><%="NN"%>
                                    </td>
                                    <td class="px-6 py-4 whitespace-nowrap text-sm font-medium">
                                        <%if(estudiante.getEmpresa()!=null){%>
                                        <%= estudiante.getEmpresa().getTelefono()%>
                                        <%}else%><%="NN"%>
                                    </td>

                                    <td class="px-6 py-4 whitespace-nowrap text-sm font-medium">
                                        <a href="Control?accion=notas&id=<%=estudiante.getDni()%>" class="text-indigo-600 font-medium">AGREGAR NOTAS</a>
                                    </td>
                                </tr>
                                <%
                                    }
                                %>
                                <!-- More rows... -->
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>   
            <!-- ./ tabla-->
        </div>
        <div class=" hidden pt-12 px-8" id="tablaProfesores">
            <!-- Tabla -->
            <div class="-my-2 overflow-x-auto">
                <div class="py-2 align-middle inline-block min-w-full">
                    <div class="shadow overflow-hidden border-b border-gray-200">
                        <table class="min-w-full divide-y divide-gray-200">
                            <thead>
                                <tr>
                                    <th scope="col" class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                        ID
                                    </th>
                                    <th scope="col" class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                        NOMBRE
                                    </th>
                                    <th scope="col" class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                        APELLIDOS
                                    </th>
                                    <th scope="col" class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                        DIRECCION
                                    </th>
                                    <th scope="col" class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                        TELEFONO
                                    </th>
                                    <th scope="col" class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                        CURSO CORRESPONDIENTE
                                    </th>
                                </tr>
                            </thead>
                            <%
                                ProfesorDAO daoP = new ProfesorDAO();
                                List<Profesor> listP = daoP.listarP();
                                Iterator<Profesor> iterP = listP.iterator();
                                Profesor profesor = null;
                                while (iterP.hasNext()) {
                                    profesor = iterP.next();


                            %>
                            <tbody class="bg-white divide-y divide-gray-200">
                                <tr>
                                    <td class="px-6 py-4 whitespace-nowrap">
                                        <p><%= profesor.getDni()%></p>
                                    </td>
                                    <td class="px-6 py-4 whitespace-nowrap">
                                        <p><%= profesor.getNombre()%></p>
                                    </td>
                                    <td class="px-6 py-4 whitespace-nowrap">
                                        <%= profesor.getApellidos()%>
                                    </td>
                                    <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">
                                        <%= profesor.getDireccion()%>
                                    </td>
                                    <td class="px-6 py-4 whitespace-nowrap text-sm font-medium">
                                        <%= profesor.getTelefono()%>
                                    </td>
                                    <td class="px-6 py-4 whitespace-nowrap text-sm font-medium">
                                        <%
                                        CursoDAO curso = new CursoDAO();
                                        Curso tmpo = curso.listCurso(profesor.getId_curso());
                                        %><%= tmpo.getN_concreto() %>
                                    </td>
                                </tr>
                                <%
                                    }
                                %>
                                <!-- More rows... -->
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>   
            <!-- ./ tabla-->
        </div>

        <div class="hidden pt-12 px-8" id="tablaCursos">
            <!-- Tabla -->
            <div class="-my-2 overflow-x-auto">
                <div class="py-2 align-middle inline-block min-w-full">
                    <div class="shadow overflow-hidden border-b border-gray-200">
                        <table class="min-w-full divide-y divide-gray-200">
                            <thead>
                                <tr>
                                    <th scope="col" class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                        ID
                                    </th>
                                    <th scope="col" class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                        fecha inicio
                                    </th>
                                    <th scope="col" class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                        fecha fin
                                    </th>
                                    <th scope="col" class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                        CODIGO CURSO
                                    </th>
                                    <th scope="col" class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                        DURACION
                                    </th>
                                    <th scope="col" class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                        PROGRAMA
                                    </th>
                                    <th scope="col" class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                        TITULO
                                    </th>
                                </tr>
                            </thead>

                            <tbody class="bg-white divide-y divide-gray-200">
                                <%
                                CursoDAO daoC = new CursoDAO();
                                List<Curso> listC = daoC.listarC();
                                Iterator<Curso> iterC = listC.iterator();
                                Curso curso = null;
                                while (iterC.hasNext()) {
                                    curso = iterC.next();


                                %>
                                <tr>
                                    <td class="px-6 py-4 whitespace-nowrap">
                                        <p><%= curso.getN_concreto() %></p>
                                    </td>
                                    <td class="px-6 py-4 whitespace-nowrap">
                                        <p><%= curso.getFecha_inicio() %></p>
                                    </td>
                                    <td class="px-6 py-4 whitespace-nowrap">
                                        <%= curso.getFecha_fin() %>
                                    </td>
                                    <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">
                                        <%= curso.getTipoCurso().getCod_curso() %>
                                    </td>
                                    <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">
                                        <%= curso.getTipoCurso().getDuracion() %>
                                    </td>
                                    <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">
                                        <%= curso.getTipoCurso().getPrograma()%>
                                    </td>
                                    <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">
                                        <%= curso.getTipoCurso().getTitulo()%>
                                    </td>

                                </tr>
                                <%
                                    }
                                %>
                                <!-- More rows... -->
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>   
            <!-- ./ tabla-->
        </div>

        <div class="hidden pt-12 px-8" id="tablaTipos">
            <!-- Tabla -->
            <div class="-my-2 overflow-x-auto">
                <div class="py-2 align-middle inline-block min-w-full">
                    <div class="shadow overflow-hidden border-b border-gray-200">
                        <table class="min-w-full divide-y divide-gray-200">
                            <thead>
                                <tr>
                                    <th scope="col" class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                        id
                                    </th>
                                    <th scope="col" class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                        titulo
                                    </th>
                                    <th scope="col" class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                        programa
                                    </th>
                                    <th scope="col" class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                        Duracion
                                    </th>
                                </tr>
                            </thead>
                            <%
                               TiposCursoDAO daoTC = new TiposCursoDAO();
                               List<TiposCurso> listTC = daoTC.listarE();
                               Iterator<TiposCurso> iterTC = listTC.iterator();
                               TiposCurso tiposCurso = null;
                               while (iterTC.hasNext()) {
                                   tiposCurso = iterTC.next();


                            %>
                            <tbody class="bg-white divide-y divide-gray-200">
                                <tr>
                                    <td class="px-6 py-4 whitespace-nowrap">
                                        <p><%=tiposCurso.getCod_curso()%></p>
                                    </td>
                                    <td class="px-6 py-4 whitespace-nowrap">
                                        <p><%=tiposCurso.getTitulo()%></p>
                                    </td>
                                    <td class="px-6 py-4 whitespace-nowrap">
                                        <p><%=tiposCurso.getPrograma()%></p>
                                    </td>
                                    <td class="px-6 py-4 whitespace-nowrap">
                                        <p><%=tiposCurso.getDuracion()%></p>
                                    </td>
                                </tr>
                                <!-- More rows... -->
                            </tbody>
                            <%
                                }
                            %>
                        </table>
                    </div>
                </div>
            </div>   
            <!-- ./ tabla-->
        </div>

        <script>
            feather.replace()
        </script>
    </body>
</html>