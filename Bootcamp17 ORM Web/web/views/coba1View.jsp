<%-- 
    Document   : coba1View
    Created on : Aug 8, 2018, 11:49:45 AM
    Author     : Dayinta Warih Wulandari
--%>

<%@page import="entities.Job"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Detail Job Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    </head>
    <body>

        <% Job job = (Job) session.getAttribute("detail");%>
        <h1>Hello, <%=job.getJobTitle()%><br>
        </h1>
        <hr>        
        <table border="0">
            <tr>
                <th></th>
                <th></th>
            </tr>
            <tr>
                <td>Job ID</td>
                <td> : </td>
                <td><%=job.getJobId()%></td>
            </tr>
            <tr>
                <td>Job Title</td>
                <td> : </td>
                <td><%=job.getJobTitle()%></td>
            </tr>
            <tr>
                <td>Min Salary</td>
                <td> : </td>
                <td><%=job.getMinSalary()%></td>
            </tr>
            <tr>
                <td>Max Salary</td>
                <td> : </td>
                <td><%=job.getMaxSalary()%></td>
            </tr>
        </table>
    </body>
</html>
