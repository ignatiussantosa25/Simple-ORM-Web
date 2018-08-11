<%-- 
    Document   : saveEmployeeView
    Created on : Aug 10, 2018, 8:34:13 AM
    Author     : Gusma
--%>

<%@page import="entities.Department"%>
<%@page import="entities.Job"%>
<%@page import="controllers.JobController"%>
<%@page import="controllers.DepartmentController"%>
<%@page import="entities.Employee"%>
<%@page import="tools.HibernateUtil"%>
<%@page import="controllers.EmployeeController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Employee Page</title>
    </head>
    <body>
      
        <h1>Add Data Employee</h1>
        <hr>
        <form action="editEmployeeServlet" method="GET">
            <table border="0">
                <tr>
                    <td>First Name</td>
                    <td>: </td>
                    <td><input type="text" name="txtFirstName" value="" /></td>
                </tr>
                <tr>
                    <td>Last Name</td>
                    <td>: </td>
                    <td><input type="text" name="txtLastName" value="" /></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>: </td>
                    <td><input type="text" name="txtEmail" value="" /></td>
                </tr>
                <tr>
                    <td>No. Phone</td>
                    <td>: </td>
                    <td><input type="text" name="txtNumberPhone" value="" /></td>
                </tr>
                <tr>
                    <td>Hire Date</td>
                    <td>: </td>
                    <td><input type="text" name="txtHireDate" value="" /></td>
                </tr>
                <tr>
                    <td>Job Title</td>
                    <td>: </td>
                    <td><select name="cmbJob" id="selectJob">
                            
                        </select></td>
                </tr>
                <tr>
                    <td>Salary</td>
                    <td>: </td>
                    <td><input type="text" name="txtSalary" value="" /></td>
                </tr>
                <tr>
                    <td>Commision PCT</td>
                    <td>: </td>
                    <td><input type="text" name="txtCommPct" 
                               value=""/>
                    </td>
                </tr>
                <tr>
                    <td>Manager</td>
                    <td>: </td>
                    <td><select name="cmbManager" id="selectManager">
                            
                           <option value=""</option>           
                           
                        </select></td>
                </tr>
                <tr>
                    <td>Department</td>
                    <td>: </td>
                    <td><select name="cmbDepartment" id="selectDepartment">
                            <option value=""></option>
                        </select></td>
                </tr><br>
                <tr><input type="hidden" name="txtId" value="" />
                <td colspan="3"><input type="submit" value="Save" /></td>
                </tr>
            </table>
    </body>
</html>
