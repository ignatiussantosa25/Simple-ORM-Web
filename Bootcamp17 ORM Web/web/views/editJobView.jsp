<%-- 
    Document   : coba1View
<<<<<<< HEAD
    Created on : Aug 8, 2018, 12:49:34 PM
    Author     : MUHAMMAD BIN ZANDRA
--%>

<%@page import="java.util.List"%>
<%@page import="entities.Job"%>
<%@page import="tools.HibernateUtil"%>
<%@page import="org.hibernate.Hibernate"%>
<%@page import="controllers.JobController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% JobController jc = new JobController(HibernateUtil.getSessionFactory()); %>
        <% String data = session.getAttribute("message").toString();
            Job j = jc.getById(data);
        %>

        <form method="GET" action="editJobServlet"> 
            <table>
                <tr>
                    <td>ID :</td>
                    <td>
                        <input type="hidden" name="txtId" value="<%=j.getJobId()%>">
                    </td>
                </tr>

                <tr>
                    <td>Title</td>
                    <td>
                        <input type="text" name="txtTitle" value="<%=j.getJobTitle()%>">
                    </td>
                </tr>

                <tr>
                    <td>Min</td>
                    <td>
                        <input type="text" name="txtMin" value="<%=j.getMaxSalary()%>">
                    </td>
                </tr>

                <tr>
                    <td>Max:</td>
                    <td>
                        <input type="text" name="txtMax" value="<%=j.getMinSalary()%>">
                    </td>
                </tr>

            </table>
            <input type="submit" name="btnSave" value="submit">
        </form>    
    </body>
</html>
