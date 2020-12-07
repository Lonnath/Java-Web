
<%@page import="Modelo.TiposCurso"%>
<%@page import="ModeloDAO.TiposCursoDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.NotasDAO"%>
<%@page import="Modelo.Notas"%>
<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Curso"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.CursoDAO"%>
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
    <body>
        <div class="flex pt-12 px-8 items-center">
            <a href="index.html" class="flex">
                <i data-feather="book-open"></i>
                <p class="tracking-tight font-medium text-lg ml-2">Academy</p>
            </a>
        </div>

        <div class="pt-12 px-8">
            <h1 class="text-3xl mx-auto text-center font-semibold tracking-tight">Academia de clases</h1>
        </div>

        <form action="Control" method="post">

            <table class="min-w-full divide-y divide-gray-200">
                <thead>
                    <tr>
                        <td class="px-6 py-4 whitespace-nowrap">
                            ID ESTUDIANTE:<input type="text" name="id" value="<%=request.getParameter("id")%>" style="width: 80px" readonly>
                        </td>

                    </tr>

                    <tr>
                        <th scope="col" class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                            ID NOTA
                        </th>
                        <th scope="col" class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                            CURSO   
                        </th>
                        <th scope="col" class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                            NOTA
                        </th>
                    </tr>
                </thead>
                <tbody class="bg-white divide-y divide-gray-200">



                    <%
                        NotasDAO daoNotas = new NotasDAO();
                       
                        List<Notas> listE = daoNotas.listarIndividual(Long.parseLong(request.getParameter("id")));
                        Iterator<Notas> iterE = listE.iterator();
                        Notas nota = null;
                        while (iterE.hasNext()) {
                            nota = iterE.next();
                            CursoDAO cursoTmpo1 = new CursoDAO();
                            Curso tmpo1 = cursoTmpo1.listCurso(nota.getId_curso());
                            TiposCursoDAO cursoTmpo = new TiposCursoDAO();
                            TiposCurso tmpo = cursoTmpo.listCurso(tmpo1.getId_tipos_curso());
                            
                    %>
                    <tr>
                        <td class="px-6 py-4 whitespace-nowrap">
                            <%= nota.getId()%>
                        </td>
                        <td class="px-6 py-4 whitespace-nowrap">
                            <%= tmpo.getTitulo() %> - <%= tmpo.getPrograma()%> 
                        </td>
                        <td class="px-6 py-4 whitespace-nowrap text-sm">
                            <%= nota.getNota()%>
                        </td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
            <div class="border shadow rounded p-4 mt-12 mx-auto flex flex-col" style="width: 60%;">
                <p class="tracking-tight uppercase pb-4 font-semibold text-lg">Registrar Notas</p>
                <div class="flex items-center justify-between">
                    <div style="width: 45%;">
                        <p class="tracking-tight">Materias</p>
                        <div class='relative mt-1'>
                            <select name='materiaSelect' id="materiaSelect" class='py-1 border border-gray-300 rounded appearance-none pr-8 pl-3 w-full'>
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
                    </div>

                    <div class="flex flex-col mt-4" style="width: 45%;">
                        <p class="tracking-tight">Nota a asignar</p>
                        <input type="number" class="px-4 py-1 border border-gray-300 shadow rounded" name="nota">
                    </div>
                </div>

                <div class="flex justify-center mt-4">
                    <button type="submit" class="px-4 py-2 border rounded shadow bg-gray-50" name="accion" value="agregarNota">Agregar Nota</button>
                </div>
            </div>
        </form>
    </body>
</html>
