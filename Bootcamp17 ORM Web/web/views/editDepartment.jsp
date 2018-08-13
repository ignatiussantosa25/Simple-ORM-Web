<%-- 
    Document   : editDepartment
    Created on : Aug 9, 2018, 4:59:02 PM
    Author     : iqbael17
--%>

<%@page import="entities.Department"%>
<%@page import="tools.HibernateUtil"%>
<%@page import="org.hibernate.Hibernate"%>
<%@page import="controllers.DepartmentController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% DepartmentController dc = new DepartmentController(HibernateUtil.getSessionFactory());
            Department department = (Department) session.getAttribute("id");
            String id = session.getAttribute("id").toString();
        %>
        <h1>Halo <%= department.getDepartmentId() %></h1>
        <hr>
        <form action="editDepartmentServlet" method="GET">
            <table border="0">
                <tr>
                    <td>Id Department</td>
                    <td>:</td>
                      <td><input type="text" name="textDepatmentName" value="<%=department.getDepartmentId()%>" /></td>
                            </tr>
                <tr>
                    <td>Department Name</td>
                    <td>:</td>
                    <td><input type="text" name="textDepatmentName" value="<%=department.getDepartmentName()%>" /></td>
                </tr>
                <tr>
                    <td>Manager Id</td>
                    <td>:</td>
                    <td><input type="text" name="textManagerId" value="<% 
                               if(department.getManagerId() != null){
                                   out.print(department.getManagerId().getEmployeeId());
                               }
                               %>" /></td>
                </tr>
                <tr>
                    <td>Location id</td>
                    <td>:</td>
                    <td><input type="text" name="textLocationId" value="<%= department.getLocationId().getLocationId()%>" /></td>                    
                </tr>
                <tr>
                <input type="hidden" name="textId" value="<%= department.getDepartmentId()%>" />
                <td colspan="3">

                    <input type="submit" value="Save" />
                </td>    
                </tr>             
            </table>
        </form>
    </body>
</html>
