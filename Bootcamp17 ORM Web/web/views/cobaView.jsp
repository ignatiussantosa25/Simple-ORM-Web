<%-- 
    Document   : cobaView
    Created on : Aug 8, 2018, 11:50:44 AM
    Author     : MUHAMMAD BIN ZANDRA
--%>

<%@page import="java.util.List"%>
<%@page import="entities.Job"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
        <% List<Job> data = (List<Job>) session.getAttribute("message"); %>
        
        <%
        for (Job job : data) {
            
            out.println(job.getJobId()+"---"+job.getJobTitle()+"--"+job.getMaxSalary());
           
            out.println("<hr>"); 
            }
        %>
        
        
    
</html>
