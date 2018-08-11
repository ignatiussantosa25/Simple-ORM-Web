<%-- 
    Document   : editEmployeeVIew
    Created on : Aug 10, 2018, 11:04:13 AM
    Author     : Gusma
--%>

<%@page import="entities.Department"%>
<%@page import="controllers.DepartmentController"%>
<%@page import="entities.Job"%>
<%@page import="controllers.JobController"%>
<%@page import="entities.Employee"%>
<%@page import="tools.HibernateUtil"%>
<%@page import="controllers.EmployeeController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Halaman Edit Employee</title>
    </head>
    <body>
        <% EmployeeController ec = new EmployeeController(HibernateUtil.getSessionFactory());
            DepartmentController dc = new DepartmentController(HibernateUtil.getSessionFactory());
            Employee employee = (Employee) session.getAttribute("id");
            String id = session.getAttribute("id").toString();
        %>
        <h1>Hello, Admin!</h1>
        <h4>Mau edit data employee yaaa? Gih silahkan~</h4>
        <form action="editEmployeeServlet" method="GET">
            <table border="0">
                <tr>
                    <td>First Name</td>
                    <td>: </td>
                    <td><input type="text" name="txtFirstName" value="<%= employee.getFirstName()%>" /></td>
                </tr>
                <tr>
                    <td>Last Name</td>
                    <td>: </td>
                    <td><input type="text" name="txtLastName" value="<%= employee.getLastName()%>" /></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>: </td>
                    <td><input type="text" name="txtEmail" value="<%= employee.getEmail()%>" /></td>
                </tr>
                <tr>
                    <td>No. Phone</td>
                    <td>: </td>
                    <td><input type="text" name="txtNumberPhone" value="<%= employee.getPhoneNumber()%>" /></td>
                </tr>
                <tr>
                    <td>Hire Date</td>
                    <td>: </td>
                    <td><input type="text" name="txtHireDate" value="<%= employee.getHireDate()%>" /></td>
                </tr>
                <tr>
                    <td>Job Title</td>
                    <td>: </td>
                    <td><select name="cmbJob" id="selectJob">
                            <%
                                JobController jc = new JobController(HibernateUtil.getSessionFactory());

                                for (Job jobs : jc.getAll()) {
                            %><option value="<%= jobs.getJobId()%>"><%= jobs.getJobTitle()%></option>           
                            <%    }
                            %>
                        </select></td>
                </tr>
                <tr>
                    <td>Salary</td>
                    <td>: </td>
                    <td><input type="text" name="txtSalary" value="<%= employee.getSalary()%>" /></td>
                </tr>
                <tr>
                    <td>Commision PCT</td>
                    <td>: </td>
                    <td><input type="text" name="txtCommPct" 
                               value="<% if ((employee.getCommissionPct() == null)) {
                                       out.print("0.0");
                                   } else {
                                       out.print(employee.getCommissionPct());
                                   }
                               %>"/>
                    </td>
                </tr>
                <tr>
                    <td>Manager</td>
                    <td>: </td>
                    <td><select name="cmbManager" id="selectManager">
                            <% if ((employee.getManagerId() == null)) {
                                    out.print("-");
                                } else {
                                    out.print(employee.getManagerId().getFirstName());
                                }
                            %>
                            <%
                                for (Employee e : ec.getAll()) {
                            %><option value="<%= e.getEmployeeId()%>"><%= e.getFirstName()%></option>           
                            <%    }
                            %>
                        </select></td>
                </tr>
                <tr>
                    <td>Department</td>
                    <td>: </td>
                    <td><select name="cmbDepartment" id="selectDepartment">
                            <%
                                for (Department dept : dc.getAll()) {
                            %><option value="<%= dept.getDepartmentId()%>"><%= dept.getDepartmentName()%></option>           
                            <%    }
                            %>
                        </select></td>
                </tr><br>
                <tr><input type="hidden" name="txtId" value="<%= employee.getEmployeeId()%>" />
                <td colspan="3"><input type="submit" value="Save" /></td>
                </tr>
            </table>
        </form>
    </body>
</html>
