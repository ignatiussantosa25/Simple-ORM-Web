<%-- 
    Document   : coba1View
    Created on : Aug 8, 2018, 11:44:50 AM
    Author     : Ignatius
--%>

<%@page import="entities.Job"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% Job job = (Job) session.getAttribute("jobDetails");%>
        <h1>Hello, <%= job.getJobId()%></h1>
        <hr>
        <form action="editJobServlet" method="GET">
            <table border="0">
                <tr>
                    <td>Your Title is</td>
                    <td>: </td>
                    <td><input type="text" name="txtJobTitle" 
                               value="<%= job.getJobTitle()%>" readonly="readonly"/></td>
                <tr>
                    <td>minimum salary</td>
                    <td>: U$D </td>
                    <td><input type="text" name="txtMinSalary" 
                               value="<%= job.getMinSalary()%>" /></td>
                </tr>
                <tr>
                    <td>maximum salary</td>
                    <td>: U$D </td>
                    <td><input type="text" name="txtMaxSalary" 
                               value="<%= job.getMaxSalary()%>" /></td>
                </tr>
                <tr><input type="hidden" name="txtId" 
                           value="<%= job.getJobId()%>" />
                <td colspan="3"><input type="submit" value="Save" /></td>
                </tr>
            </table>

        </form>
    </body>
</html>
