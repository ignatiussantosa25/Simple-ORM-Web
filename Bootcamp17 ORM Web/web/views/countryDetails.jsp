<%-- 
    Document   : countryDetails
    Created on : Aug 10, 2018, 10:43:38 AM
    Author     : Ignatius
--%>

<%@page import="entities.Region"%>
<%@page import="java.util.List"%>
<%@page import="entities.Country"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% Country country = (Country) session.getAttribute("country");
            List<Region> regions = (List<Region>) session.getAttribute("regions");%>
        <table border="0">
            <tr>
                <td>Country ID</td>
                <td>:</td>
                <td><input type="text" name="txtId" value="<%= country.getCountryId()%>" readonly="readonly" /></td>
            </tr>
            <tr>
                <td>Country Name</td>
                <td>:</td>
                <td><input type="text" name="txtName" value="<%= country.getCountryName()%>"/></td>
            </tr>
            <tr>
                <td>Regions</td>
                <td>:</td>
                <td><select name="cmbRegions">
                        <%for (Region region : regions) {%>
                        <option value="<%= region.getRegionId() %>"><%= region.getRegionName() %></option>
                        <%}%>
                    </select></td>
            </tr>
        </table>

    </body>
</html>
