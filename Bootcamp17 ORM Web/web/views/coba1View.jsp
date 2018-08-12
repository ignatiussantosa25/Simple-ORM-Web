<%-- 
    Document   : coba1View
    Created on : Aug 8, 2018, 11:49:45 AM
    Author     : AINAN-Gaul
--%>

<%@page import="entities.Job"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    </head>
    <body>
        <% Job job = (Job) session.getAttribute("jobDetails"); %>
        <h1>Hello, <% job.getJobId(); %></h1>
        <hr>
        <form action="editJobServlet" method="GET">
            <table border="0">
                    <tr>
                        <th></th>
                        <th></th>
                        <th></th>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
            </table>
        </form>
    </body>
</html>
