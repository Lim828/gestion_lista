<%@page import="java.util.ArrayList"%>
<%@page import="com.emerii.Producto"%>
<%
    if(session.getAttribute("almacen")== null)
    {
       ArrayList<Producto> lisaux = new ArrayList<Producto>();
       session.setAttribute("almacen", lisaux);
    }
    ArrayList<Producto> almacen = (ArrayList<Producto>)session.getAttribute("almacen");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
            <h1>Inserte Nueva Tarea</h1>
        <form action="MainServlet" method="post">
            <table>
               <tr>
                   <td>Id</td>
                   <td><input type="text" name="id" value="0" size="2"></td>
               </tr> 
                <tr>
                   <td>Tarea</td>
                   <td><input type="text" name="producto" value=""></td>
               </tr>
                 
                   <td><input type="submit"  value="Procesar"></td>
               </tr>
            </table>
           
        </form>
        <a href="MainServlet?op=vaciar">Eliminar Tarea</a>
        
        <h2>Tareas Pendientes</h2>
        <table border="1">
            <tr>
                <td>Id</td>
                <td>Tarea</td>
                <td>Completado</td>
                
            </tr>
            <%
               if(almacen != null){
                   for(Producto p: almacen){
            %>
            <tr>
                <td><%= p.getId() %></td>
                <td><%= p.getProducto() %></td>
                <td><input type="checkbox" name="check" value="on" /></td>
                <td><a href="MainServlet?op=eliminar&id=<%= p.getId() %>">Eliminar</a></td>
                
            </tr>
            <%
                }
              }
            %>
        </table>
    </body>
</html>
