<%-- 
    Document   : detailJobView
    Created on : Aug 13, 2018, 8:01:42 PM
    Author     : Dayinta Warih Wulandari
--%>
<%@page import="entities.Job"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% Job job = (Job) session.getAttribute("details");%>
        <hr> Region ID: <%= region.getRegionId()%>, Region Name:
        <%= region.getRegionName()%><hr>
        <% List<Country> dataCountry = region.getCountryList();
            for (Country country : dataCountry) {
                out.println("Country : " + country.getCountryId() + " - "
                        + country.getCountryName() + "<br>"
                );
                for (Location lokasi : country.getLocationList()) {
                    out.println("Locations : " + lokasi.getCity() + "<br>");
                    for (Department dept : lokasi.getDepartmentList()) {
                        out.println("Department : "
                                + dept.getDepartmentName() + "<br>");
                    }
                    out.println("<br>");
                }
        %>
        <br>
        <%}
        %>
    </body>
</html>