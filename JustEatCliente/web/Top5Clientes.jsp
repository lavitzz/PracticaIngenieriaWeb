<%-- 
    Document   : Top5Clientes
    Created on : 28-nov-2015, 21:10:40
    Author     : MJ
--%>

<%@page import="java.util.Iterator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            table, th, td {
                border: 1px solid black;
                border-collapse: collapse;
            }
            th, td {
                 padding: 5px;
                 text-align: center;
            }
</style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Top 5 Clientes</title>
    </head>
    <body>
        <h1>Top 5 Clientes</h1>
            <%-- start web service invocation --%><hr/>
    <%
        
        
    try {
	ea.services.ServicesSoap_Service service = new ea.services.ServicesSoap_Service();
	ea.services.ServicesSoap port = service.getServicesSoapPort();
	// TODO process result here
	java.util.List<java.lang.String> result = port.getTopFiveClientes();
	//out.println("Result = "+result);
        Iterator<String> it = result.iterator();
        %>
        <table>
  <tr>
    <th>Nombre</th>
    <th>1er Apellido</th>
    <th>2do Apellido</th>
    <th>Pedidos</th>
  </tr>
        <%
        while(it.hasNext()){
            out.println("<tr>");
            out.println("<td>"+it.next()+"</td>");
            out.println("<td >"+it.next()+"</td>");
            out.println("<td>"+it.next()+"</td>");
            out.println("<td >"+it.next()+"</td>");
            out.println("</tr>");
        }
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    
    %>
    <%-- end web service invocation --%><hr/>
        </table>
        
        <a href="index.jsp">Volver</a>
    </body>
</html>