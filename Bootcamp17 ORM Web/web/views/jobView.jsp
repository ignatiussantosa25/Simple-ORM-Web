<%-- 
    Document   : jobView
    Created on : Aug 7, 2018, 10:29:55 PM
    Author     : Ignatius
--%>

<%@page import="tools.HibernateUtil"%>
<%@page import="entities.Job"%>
<%@page import="controllers.JobController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Latihan dan Coba Web</title>
    </head>
    <body>
        
        <% JobController jc = new JobController(HibernateUtil.getSessionFactory()); %>
        <table border="1">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Job ID</th>
                    <th>Job Title</th>
                    <th>Min Salary</th>
                    <th>Max Salary</th>
                    <th>Edit</th>  
                </tr>
            </thead>

            <tbody>
                <% int i = 1;
                    for (Job job : jc.getAll()) {%>                
                <tr>
                    <td><%= i %></td>
                    <td><%= job.getJobId() %></td>
                    <td><%= job.getJobTitle() %></td>
                    <td><%= job.getMinSalary() %></td>
                    <td><%= job.getMaxSalary() %></td>
                    <td><a href="../newServlet?id=<%= job.getJobId()%>" >Edit</a></td>
                </tr>
                <% i++; }%>
            </tbody>
        </table>

    </body>
</html>
