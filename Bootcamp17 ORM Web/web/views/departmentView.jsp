<%-- 
    Document   : DepartmentView
    Created on : Aug 8, 2018, 3:10:28 AM
    Author     : budiarti
--%>

<%@page import="controllers.EmployeeController"%>
<%@page import="entities.Location"%>
<%@page import="controllers.LocationController"%>
<%@page import="tools.HibernateUtil"%>
<%@page import="entities.Department"%>
<%@page import="entities.Employee"%>
<%@page import="controllers.DepartmentController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            DepartmentController departmentController = new DepartmentController(HibernateUtil.getSessionFactory());
            LocationController lc = new LocationController(HibernateUtil.getSessionFactory());
            EmployeeController ec = new EmployeeController(HibernateUtil.getSessionFactory());
        %>
        <p>
        <h1>Department</h1>
        <select name="cmbCategory">
        </select>
        <input type="text" name="txtFind" value="" />
        <input type="submit" value="Find" name="btnFind" />
    </p>
    <p></p>
    <table border="1">
        <thead>
            <tr>
                <th>Nomor</th>
                <th>ID Department</th>
                <th>Department Name</th>
                <th>Manager Id</th>
                <th>Location Id</th>
                <th>Edit</th>

            </tr>
        </thead>
        <tbody>
            <%
                    
                int i = 1;
                for (Department Dept : departmentController.getAll()) {
                     
            %>
            <tr>
                <td><%= i%></td>
                <td><%= Dept.getDepartmentId()%></td>
                <td><%= Dept.getDepartmentName()%></td>
                <td>
                    <%       

                        if(Dept.getManagerId() !=null ){
                        out.print(Dept.getManagerId().getEmployeeId());
                    }                    %>
                </td>
                <td><% out.println( Dept.getLocationId().getLocationId());%></td>
                <td><a href="../departmentEditServlet?id=<%= Dept.getDepartmentId() %>"> Edit </td>
            </tr>
            <%
                    i++;
                }
            %>
        </tbody>
    </table>
</body>
</html>
