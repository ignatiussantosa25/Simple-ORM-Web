<%-- 
    Document   : DepartmentView
    Created on : Aug 8, 2018, 3:10:28 AM
    Author     : budiarti
--%>

<%@page import="tools.HibernateUtil"%>
<%@page import="entities.Department"%>
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
        %>
        <p>
        <h1>Job</h1>
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
                <td><%out.print(Dept.getManagerId());%></td>
                <td><%out.print(Dept.getLocationId());%></td>
            </tr>
            <%
                    i++;
                }
            %>
        </tbody>
    </table>
    <table border="0">
        <thead>
            <tr>
                <th></th>
                <th></th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Department Id</td>
                <td>
                    <input type="text" name="txtIdDept" value="" size="10" />
                </td>
            </tr>
            <tr>
                <td>Department Name</td>
                <td>
                    <input type="text" name="txtNameDept" value="" size="15" />
                </td>
            </tr>
            <tr>
                <td>Manager Id</td>
                <td>
                    <input type="text" name="txtManId" value="" size="10" />
                </td>
            </tr>
            <tr>
                <td>Location Id</td>
                <td>
                    <input type="text" name="txtLocId" value="" size="10" />
                </td>
            </tr>
        <input type="submit" value=
        </tbody>
    </table>
    <p>"Save" name="btnSave" />
        <input type="submit" value="Drop" name="btnDrop" />
    </p>
    </body>
</html>
