<%-- 
    Document   : detailLocationView
    Created on : Aug 10, 2018, 9:52:28 AM
    Author     : MUHAMMAD BIN ZANDRA
--%>

<%@page import="entities.Employee"%>
<%@page import="entities.Department"%>
<%@page import="entities.Country"%>
<%@page import="java.util.List"%>
<%@page import="entities.Location"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            Location location = (Location) session.getAttribute("detailLocation");
        %>
        <hr>

        Region ID : <%= location.getLocationId()%>, Region Name : <%= location.getStreetAddress()%>
        <%
            for (Department department : location.getDepartmentList()) {
                out.print("Dept : " + department.getDepartmentName() + "---" + department.getDepartmentId() + "<br>");
                for (Employee employee : department.getEmployeeList()) {
                    out.print("Employee =" + employee.getFirstName() + "--" + employee.getHireDate() + "--" + employee.getSalary() + "<br>");
                }
        %>

        <% }%>
    </body>
    
</html>
