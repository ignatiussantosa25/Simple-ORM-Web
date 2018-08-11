<%-- 
    Document   : EmployeeView
    Created on : Aug 7, 2018, 9:29:25 PM
    Author     : MUHAMMAD BIN ZANDRA
--%>

<%@page import="entities.Department"%>
<%@page import="controllers.DepartmentController"%>
<%@page import="entities.Job"%>
<%@page import="controllers.JobController"%>
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
        <title>Data Employee</title>
    </head>
    <body>
        <h1>Data Employee in Table</h1>
    </body>

    <%
        EmployeeController ec = new EmployeeController(HibernateUtil.getSessionFactory());

    %>
    <table border="0">
        <tbody>
            <tr>
                <td><select name="cmbSearch">
                        <option></option>
                    </select></td>
                <td><input type="text" name="txtSearch" value="" /></td>
                <td><input type="submit" value="Find" /></td>
        <form action="saveEmployeeView.jsp">
            <input type="submit" value="Add Employee" />
        </form>
    </tr>
</tbody>
</table>
<br>
<table border = "1">
    <thead>
        <tr>
            <th>No</th>
            <th>Employee ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Salary</th>
            <th colspan="3">Action</th>
        </tr>
    </thead>
    <%            int no = 1;
        for (Employee employee : ec.getAll()) {

    %>
    <body>

    <tr>
        <td><%= no%></td>
        <td><%= employee.getEmployeeId()%></td>  
        <td><%= employee.getFirstName() + " " + employee.getLastName()%></td>
        <td><%= employee.getEmail()%></td>
        <td><%= employee.getSalary()%></td>
        <td>
            <a href="../employeeViewServlet?id=<%= employee.getEmployeeId()%>">Edit   
        </td>
        <td>
            <a href="../detailEmployee?employeeId=<%= employee.getEmployeeId()%>">Detail </a>  
        </td>
        <td>
            <a href="../employeeViewServlet?id=<%= employee.getEmployeeId()%>">Delete   
        </td>
    </tr>

    <%
            no++;
        }
    %>
</body>
</table>
</html>

