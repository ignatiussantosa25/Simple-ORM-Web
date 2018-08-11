<%-- 
    Document   : detailView
    Created on : Aug 9, 2018, 3:28:06 PM
    Author     : MUHAMMAD BIN ZANDRA
--%>

<%@page import="entities.Employee"%>
<%@page import="entities.Location"%>
<%@page import="entities.Department"%>
<%@page import="entities.Country"%>
<%@page import="java.util.List"%>
<%@page import="entities.Region"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% Region region = (Region) session.getAttribute("detail"); %>
        <hr>
        Region ID : <%= region.getRegionId()%>, Region Name : <%= region.getRegionName()%>
        <hr>
        </hr>
        <% List<Country> dataCountry = region.getCountryList();
            for (Country country : dataCountry) {
                out.print("Country : "+country.getCountryName() + "----" + country.getCountryId() + "<br>");
                for (Location location : country.getLocationList()) {
                    out.print("Location : "+location.getCity() + "<br>");
                    for (Department department : location.getDepartmentList()) {
                        out.print("Dept : "+department.getDepartmentName() + "---" + department.getDepartmentId() + "<br>");
                        for (Employee employee : department.getEmployeeList()) {
                                out.print("Employee ="+employee.getFirstName()+"--"+employee.getHireDate()+"--"+employee.getSalary()+"<br>");
                            }
                    }
                }
        %>

        <% }%>
    </body>
</html>
