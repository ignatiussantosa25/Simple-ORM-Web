<%-- 
    Document   : detailRegion
    Created on : Aug 9, 2018, 1:31:58 PM
    Author     : Ignatius
--%>

<%@page import="entities.Department"%>
<%@page import="entities.Location"%>
<%@page import="java.util.List"%>
<%@page import="entities.Country"%>
<%@page import="entities.Region"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% Region region = (Region) session.getAttribute("details");%>
        <hr> Region ID: <%= region.getRegionId()%>, Region Name:
        <%= region.getRegionName()%><hr>
        <% List<Country> dataCountry = region.getCountryList();
            for (Country country : dataCountry) {
                out.println("Country : "+country.getCountryId() + " - " 
                        + country.getCountryName()+"<br>"
                );                
                for (Location lokasi : country.getLocationList()) {
                        out.println("Locations : "+lokasi.getCity()+"<br>");
                        for (Department dept : lokasi.getDepartmentList()) {
                                out.println("Department : "
                                        +dept.getDepartmentName()+"<br>");
                            }
                        out.println("<br>");
                    }
        %>
        <br>
        <%}
        %>
    </body>
</html>
