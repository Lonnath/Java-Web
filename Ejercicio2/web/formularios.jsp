<%@page import="Modelo.Empresas"%>
<%@page import="ModeloDAO.EmpresaDAO"%>
<%@page import="ModeloDAO.TiposCursoDAO"%>
<%@page import="Modelo.TiposCurso"%>
<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Curso"%>
<%@page import="Modelo.Curso"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.CursoDAO"%>
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
    <body class="inter antialiased" onload="showComponents()">
        <div class="flex pt-12 px-8 items-center">
            <a href="index.jsp" class="flex">
                <i data-feather="book-open"></i>
                <p class="tracking-tight font-medium text-lg ml-2">Academy</p>
            </a>
        </div>

        <div class="pt-12 px-8">
            <h1 class="text-3xl mx-auto text-center font-semibold tracking-tight">Academia de clases</h1>
        </div>

        <form action="Control" method="post">
            <div class="border shadow rounded p-4 mt-12 mx-auto hidden" style="width: 60%;" id="firstSection">
                <p class="tracking-tight uppercase pb-4 font-semibold text-lg">Registrar Curso</p>
                <div class="flex flex-col w-full justify-between items-center">
                    <div class="flex items-center w-full justify-between">
                        <div class="flex flex-col" style="width: 45%;">
                            <p class="tracking-tight">Fecha de inicio</p>
                            <input type="date" min="2018-01-01" max="2018-12-31" class="text-center px-2 py-1 mt-1 border border-gray-300 truncate rounded w-full" placeholder="0" name="desde" id="desde" required>

                        </div>

                        <div class="flex flex-col ml-4" style="width: 45%;">
                            <p class="tracking-tight">Fecha de terminación</p>
                            <input type="date"  min="2018-01-01" max="2018-12-31" class="text-center px-2 py-1 mt-1 border border-gray-300 truncate rounded w-full" placeholder="0" name="hasta" id="hasta" required>

                        </div>


                        <div class="flex flex-col ml-4" style="width: 45%;">
                            <p class="tracking-tight">Tipo curso</p>
                            <div class='relative mt-1'>
                                <select name='cursoSelect' id="cursoSelect" class='py-1 border border-gray-300 rounded appearance-none pr-8 pl-3 w-full'>
                                    <%
                                        TiposCursoDAO daoC = new TiposCursoDAO();
                                        List<TiposCurso> listC = daoC.listarE();
                                        Iterator<TiposCurso> iterC = listC.iterator();
                                        TiposCurso curso = null;
                                        while (iterC.hasNext()) {
                                            curso = iterC.next();


                                    %>
                                    <option value="<%=curso.getCod_curso()%>"><%=curso.getTitulo()%>-<%=curso.getPrograma()%></option>
                                    <%
                                        }
                                    %>
                                </select>
                                <div class='pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700'>
                                    <svg class='fill-current h-4 w-4' xmlns='http://www.w3.org/2000/svg' viewBox='0 0 20 20'><path d='M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z'/></svg>
                                </div>
                            </div>
                            <!--<input type="text" class="text-center px-2 py-1 mt-1 border border-gray-300 truncate rounded w-full" placeholder="Ingrese un teléfono ..." name="telProfe" id="telProfe" required>-->
                        </div>
                    </div>
                </div>

                <div class="flex justify-center mt-4">
                    <button type="submit" class="px-4 py-2 border rounded shadow bg-gray-50" name="accion" value="agregarCurso">Agregar Curso</button>
                </div>
            </div>
        </form>

        <form action="Control" method="post">
            <div class="border shadow rounded p-4 mt-12 mx-auto hidden" style="width: 60%;" id="fourthSection">
                <div class="flex flex-col">
                    <p class="tracking-tight uppercase font-medium">información del tipo de curso</p>
                    <div class="flex justify-between w-full mt-4">
                        <div class="flex flex-col" style="width: 45%;">
                            <p>Título del curso</p>
                            <input type="text" placeholder="Título ..." class="mt-1 px-4 py-2 border shadow rounded" name="titulo"required>
                        </div>

                        <div class="flex flex-col" style="width: 45%;">
                            <p>Código del curso</p>
                            <input type="text" placeholder="Código ..." class="mt-1 px-4 py-2 border shadow rounded" name="codigo" required>
                        </div>
                    </div>

                    <div class="flex justify-between w-full mt-4">
                        <div class="flex flex-col" style="width: 45%;">
                            <p>Programa del curso</p>
                            <input type="text" placeholder="Programa ..." class="mt-1 px-4 py-2 border shadow rounded" name="programa" required>
                        </div>

                        <div class="flex flex-col" style="width: 45%;">
                            <p>Duración del curso (hrs)</p>
                            <input type="text" placeholder="Duración ..." class="mt-1 px-4 py-2 border shadow rounded" name="duracion" required>
                        </div>
                    </div>
                </div>

                <div class="flex justify-center mt-4">
                    <button type="submit" class="px-4 py-2 border rounded shadow bg-gray-50" name="accion" value="agregarTipoCurso">Agregar Tipo Curso</button>
                </div>
            </div>
        </form>

        <form action="Control" method="post">
            <div class="border shadow rounded p-4 mt-12 mx-auto hidden" style="width: 60%;" id="secondSection">
                <p class="tracking-tight uppercase pb-4 font-semibold text-lg">Registrar Profesor</p>
                <div class="flex flex-col w-full justify-between items-center">
                    <div class="flex items-center w-full justify-between">
                        <div class="flex flex-col" style="width: 45%;">
                            <p class="tracking-tight">Nombre(s)</p>
                            <input type="text" class="px-2 py-1 mt-1 border border-gray-300 truncate rounded w-full" placeholder="Ingrese el nombre ..." name="nombreProfe" id="nombreProfe" required>
                        </div>

                        <div class="flex flex-col ml-4" style="width: 45%;">
                            <p class="tracking-tight">Apellidos</p>
                            <input type="text" class="px-2 py-1 mt-1 border border-gray-300 truncate rounded w-full" placeholder="Ingrese los apellidos ..." name="apellidoProfe" id="apellidoProfe" required>
                        </div>
                    </div>
                </div>

                <div class="flex flex-col w-full justify-between items-center mt-4">
                    <div class="flex items-center w-full justify-between">
                        <div class="flex flex-col" style="width: 45%;">
                            <p class="tracking-tight">Dirección</p>
                            <input type="text" class="px-2 py-1 mt-1 border border-gray-300 truncate rounded w-full" placeholder="Ingrese una dirección ..." name="dirProfe" id="dirProfe" required>
                        </div>

                        <div class="flex flex-col ml-4" style="width: 45%;">
                            <p class="tracking-tight">Teléfono</p>
                            <input type="number" class="px-2 py-1 mt-1 border border-gray-300 truncate rounded w-full" placeholder="Ingrese un teléfono ..." name="telProfe" id="telProfe" required>
                        </div>
                    </div>
                </div>

                <div class="flex flex-col w-full justify-between items-top mt-4">
                    <div class="flex items-center w-full justify-between">
                        <div class="flex flex-col" style="width: 45%;">
                            <p class="tracking-tight">Número de documento</p>
                            <input type="number" class="px-2 py-1 mt-1 border border-gray-300 truncate rounded w-full" placeholder="ej: 123456" name="docProfe" id="docProfe" required>
                        </div>

                        <div class="flex flex-col ml-4" style="width: 45%;">
                            <p class="tracking-tight">Asignar curso</p>
                            <div class='relative mt-1'>
                                <select name='cursoSelect' id="cursoSelect" class='py-1 border border-gray-300 rounded appearance-none pr-8 pl-3 w-full'>
                                    <%
                                        CursoDAO daoCu = new CursoDAO();
                                        List<Curso> listCu = daoCu.listarC();
                                        Iterator<Curso> iterCu = listCu.iterator();
                                        Curso cursou = null;
                                        while (iterCu.hasNext()) {
                                            cursou = iterCu.next();


                                    %>    <option value="<%=cursou.getN_concreto()%>"><%=cursou.getTipoCurso().getPrograma()%> - <%= cursou.getTipoCurso().getTitulo()%></option>
                                    <%
                                        }
                                    %>

                                </select>
                                <div class='pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700'>
                                    <svg class='fill-current h-4 w-4' xmlns='http://www.w3.org/2000/svg' viewBox='0 0 20 20'><path d='M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z'/></svg>
                                </div>
                            </div>
                            <!--<input type="text" class="text-center px-2 py-1 mt-1 border border-gray-300 truncate rounded w-full" placeholder="Ingrese un teléfono ..." name="telProfe" id="telProfe" required>-->
                        </div>
                    </div>
                </div>
                <div class="flex justify-center mt-4">
                    <button type="submit" class="px-4 py-2 border rounded shadow bg-gray-50" name="accion" value="agregarProfesor">Agregar Profesor</button>
                </div>
            </div>
        </form>

  <form action="Control" method="post">
            <div class="border shadow rounded p-4 mt-12 mx-auto hidden" style="width: 60%;" id="thirdSection">
                <p class="tracking-tight uppercase pb-4 font-semibold text-lg">Registrar Estudiante</p>
                <div class="flex flex-col w-full justify-between items-center">
                    <div class="flex items-center w-full justify-between">
                        <div class="flex flex-col" style="width: 45%;">
                            <p class="tracking-tight">Nombre</p>
                            <input type="text" class="px-2 py-1 mt-1 border border-gray-300 truncate rounded w-full" placeholder="Ingrese un nombre ..." name="nombreAlumno" id="nombreAlumno" required>
                        </div>
                        <div class="flex flex-col" style="width: 45%;">
                            <p class="tracking-tight">Apellido</p>
                            <input type="text" class="px-2 py-1 mt-1 border border-gray-300 truncate rounded w-full" placeholder="Ingrese un apellido ..." name="apellidoAlumno" id="apellidoAlumno" required>
                        </div>
                        <div class="flex flex-col" style="width: 45%;">
                            <p class="tracking-tight">Direccion</p>
                            <input type="text" class="px-2 py-1 mt-1 border border-gray-300 truncate rounded w-full" placeholder="Ingrese una direccion ..." name="dirAlumno">
                        </div>

                        <div class="flex flex-col ml-4" style="width: 45%;">
                            <p class="tracking-tight">Teléfono</p>
                            <input type="number" class="px-2 py-1 mt-1 border border-gray-300 truncate rounded w-full" placeholder="Teléfono ..." name="telAlumno" id="telAlumno" required>
                        </div>
                    </div>
                </div>

                <div class="flex items-center w-full justify-between mt-4">
                    <div class="flex flex-col" style="width: 45%;">
                        <p class="tracking-tight">Edad</p>
                        <input type="number" class="px-2 py-1 mt-1 border border-gray-300 truncate rounded w-full" placeholder="Ingrese una edad ..." name="edadAlumno">
                    </div>
                    <div class="flex flex-col" style="width: 45%;">
                        <p class="tracking-tight">Número de documento</p>
                        <input type="number" class="px-2 py-1 mt-1 border border-gray-300 truncate rounded w-full" placeholder="ej: 123456" name="docAlumno" id="docAlumno" required>
                    </div>
                </div>

                <div class="flex w-full">
                    <div class="flex w-full justify-between">
                        <div class="flex flex-col mt-4" style="width: 45%;">
                            <p class="tracking-tight">¿Trabaja actualmente?</p>
                            <div class='relative mt-1'>
                                <select name='workSelect' id="workSelect" class='py-1 border border-gray-300 rounded appearance-none pr-8 pl-3 w-full' onchange="showWorkData()">
                                    <option value="no">No</option>
                                    <option value="si">Si</option>
                                </select>
                                <div class='pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700'>
                                    <svg class='fill-current h-4 w-4' xmlns='http://www.w3.org/2000/svg' viewBox='0 0 20 20'><path d='M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z'/></svg>
                                </div>
                            </div>
                        </div>

                        <div class="hidden mt-4" style="width: 45%;" id="workplace_div">
                            <p class="tracking-tight">Empresa en la que trabaja</p>
                            <div class='relative mt-1'>
                                <select name='empresaSelect' id="empresaSelect" class='py-1 border border-gray-300 rounded appearance-none pr-8 pl-3 w-full'>
                                    <%
                                        EmpresaDAO empresaDAO = new EmpresaDAO();
                                        List<Empresas> listEm = empresaDAO.listarE();
                                        Iterator<Empresas> iterEm = listEm.iterator();
                                        Empresas empresa = null;
                                        while (iterEm.hasNext()) {
                                            empresa = iterEm.next();


                                    %> <option value="<%=empresa.getCif()%>"><%=empresa.getNombre()%></option>

                                    <%
                                        }
                                    %>
                                </select>
                                <div class='pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700'>
                                    <svg class='fill-current h-4 w-4' xmlns='http://www.w3.org/2000/svg' viewBox='0 0 20 20'><path d='M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z'/></svg>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="flex justify-center mt-4">
                        <button type="submit" class="px-4 py-2 border rounded shadow bg-gray-50" name="accion" value="agregarAlumno">Agregar Estudiante</button>
                    </div>
                </div>
            </div>
        </form>

        <form action="Control" method="post">
            <div class="border shadow rounded p-4 mt-12 mx-auto hidden" style="width: 60%;" id="fifthSection">
                <p class="tracking-tight uppercase pb-4 font-semibold text-lg">información del lugar de trabajo</p>
                <div class="flex justify-between w-full">
                    <div class="flex flex-col" style="width: 45%;">
                        <p class="tracking-tight">Nombre de la empresa</p>
                        <input type="text" class="px-2 py-1 mt-1 border border-gray-300 truncate rounded" placeholder="Ingrese el nombre de la empresa ..." name="nomEmpresa">
                    </div>
                    <div class="flex flex-col" style="width: 45%;">
                        <p class="tracking-tight">CIF</p>
                        <input type="number" class="px-2 py-1 mt-1 border border-gray-300 truncate rounded" placeholder="Ingrese el CIF ..." name="cifEmpresa">
                    </div>
                </div>

                <div class="flex justify-between w-full mt-4">
                    <div class="flex flex-col" style="width: 45%;">
                        <p class="tracking-tight">Teléfono de la empresa</p>
                        <input type="number" class="px-2 py-1 mt-1 border border-gray-300 truncate rounded" placeholder="ej: (+57) 301-222-3659" name="telEmpresa">
                    </div>
                    <div class="flex flex-col" style="width: 45%;">
                        <p class="tracking-tight">Dirección de la empresa</p>
                        <input type="text" class="px-2 py-1 mt-1 border border-gray-300 truncate rounded" placeholder="ej: Calle 1 # 11-11" name="dirEmpresa">
                    </div>
                </div>

                <div class="flex justify-center mt-4">
                    <button type="submit" class="px-4 py-2 border rounded shadow bg-gray-50" name="accion" value="agregarEmpresa">Agregar Empresa</button>
                </div>
            </div>
        </form>

        <script>
            feather.replace()
        </script>
    </body>
</html>