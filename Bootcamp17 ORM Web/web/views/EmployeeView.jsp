<%-- 
    Document   : EmployeeView
    Created on : Aug 7, 2018, 9:29:25 PM
    Author     : MUHAMMAD BIN ZANDRA
--%>

<%@page import="controllers.EmployeeController"%>
<%@page import="entities.Employee"%>
<%@page import="tools.HibernateUtil"%>
<%@page import="daos.EmployeeDAO"%>
<%@page import="daos.FunctionDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>

    <%
        HibernateUtil hibernateUtil = new HibernateUtil();
        EmployeeController ec = new EmployeeController(new EmployeeDAO(new FunctionDAO(hibernateUtil.getSessionFactory())));

    %>

    <table border = "1" width = "50%" align = "center">
        <thead>
            <tr>
                <th>No</th>
                <th>Employee ID</th>
                <th>First name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Phone Number</th>
                <th>Hire Date</th>
                <th>Salary</th>
                <th>Commission PCT</th>
          </tr>
        </thead>
        <%   
            int no = 1;
            for (Employee employee : ec.getAll()) {

        %>
        <body>

        <tr>
            <td><%out.print(no);%></td>
            <td><%out.print(employee.getEmployeeId());%></td>  
            <td><%out.print(employee.getFirstName());%></td>
            <td><%out.print(employee.getLastName());%></td>
            <td><%out.print(employee.getEmail());%></td>
            <td><%out.print(employee.getPhoneNumber());%></td>
            <td><%out.print(employee.getHireDate());%></td>
            <td><%out.print(employee.getSalary());%></td>
            <td><%out.print(employee.getCommissionPct());%></td>
      </tr>

        <%
          no++;  }
        %>

    </body>
</table>
    
</html>
