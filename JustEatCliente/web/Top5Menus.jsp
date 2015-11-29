<%-- 
    Document   : Top5Platos
    Created on : 27-nov-2015, 9:18:59
    Author     : David
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
        <title>Top 5 Menús</title>
    </head>
    <body>
        <h1>Top 5 Menús</h1>
            <%-- start web service invocation --%><hr/>
    <%
        
        
    try {
	ea.services.ServicesSoap_Service service = new ea.services.ServicesSoap_Service();
	ea.services.ServicesSoap port = service.getServicesSoapPort();
	// TODO process result here
	java.util.List<java.lang.String> result = port.getTopFiveMenus();
	//out.println("Result = "+result);
        Iterator<String> it = result.iterator();
        %>
        <table>
  <tr>
    <th>Menús</th>
    <th>Pedidos</th>
  </tr>
        <%
        while(it.hasNext()){
            out.println("<tr>");
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
