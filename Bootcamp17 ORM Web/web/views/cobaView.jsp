<%-- 
    Document   : cobaView
    Created on : Aug 8, 2018, 10:45:52 AM
    Author     : Ignatius
--%>

<%@page import="entities.Job"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>cobaView.jsp Page</title>
    </head>
    <body>
        <% List<Job> jobs = (List<Job>)session
                .getAttribute("message"); 
        int i = 1;
        for (Job job : jobs) {
            out.println(i+". "+job.getJobId()+" : "+job.getJobTitle()+
                    ", has salaries max "+job.getMaxSalary());
            out.println("<hr>");
            i++;
        }
        %>
        
    </body>
</html>
