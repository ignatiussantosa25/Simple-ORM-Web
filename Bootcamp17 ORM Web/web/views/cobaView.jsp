<%-- 
    Document   : cobaView
    Created on : Aug 8, 2018, 10:53:11 AM
    Author     : AINAN-Gaul
--%>

<%@page import="java.util.List"%>
<%@page import="entities.Job"%>
<%@page import="tools.HibernateUtil"%>
<%@page import="controllers.JobController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            List<Job> jobs = (List<Job>) session.getAttribute("message");
            int i = 1;
            for (Job job : jobs){
                out.println(i+". "+job.getJobId()+" - "+job.getJobTitle()+" has maximum salary "+job.getMaxSalary());
                out.println("<hr>");
                i++;
            }
        %>
    </body>
</html>
