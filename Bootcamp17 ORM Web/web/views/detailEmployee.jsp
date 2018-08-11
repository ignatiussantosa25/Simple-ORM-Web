<%-- 
    Document   : detailEmployee
    Created on : Aug 9, 2018, 3:03:08 PM
    Author     : Gusma
--%>

<%@page import="controllers.EmployeeController"%>
<%@page import="tools.HibernateUtil"%>
<%@page import="entities.Job"%>
<%@page import="entities.Location"%>
<%@page import="entities.Department"%>
<%@page import="java.util.List"%>
<%@page import="entities.Employee"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employee Details Page</title>
    </head>
    <body>

        <% Employee employee = (Employee) session.getAttribute("details");%>
        <h1>Hai! <%= employee.getFirstName()%></h1>
        <hr><hr>
        Employee ID : <%= employee.getEmployeeId() %><br>
        First Name :<%= employee.getFirstName() %><br>
        Last Name :<%= employee.getLastName()  %><br>
        Email :<%= employee.getEmail() %><br>
        Phone Number :<%= employee.getPhoneNumber()  %><br>
        Hire Date :<%= employee.getHireDate() %><br>
        Job ID : <%= employee.getJobId().getJobTitle() %><br>
        Salary :<%= employee.getSalary() %><br>
        Commission PCT :<%if (employee.getCommissionPct() == null) {
                        out.print("0.0");
                    } else {
                        out.print(employee.getCommissionPct());
                    }
                    %><br>
        Manager ID :<% if ((employee.getManagerId() == null)) {
                            out.print("-");
                        } else {
                            out.print(employee.getManagerId().getFirstName());
                        }
                    %><br>
        Department ID :<%=employee.getDepartmentId().getDepartmentName()%><br>
      
        
        <br>
    </body>
</html>
