<%-- 
    Document   : editLocationView
    Created on : Aug 9, 2018, 4:11:23 PM
    Author     : MUHAMMAD BIN ZANDRA
--%>

<%@page import="controllers.CountryController"%>
<%@page import="entities.Department"%>
<%@page import="entities.Country"%>
<%@page import="java.util.List"%>
<%@page import="entities.Location"%>
<%@page import="tools.HibernateUtil"%>
<%@page import="controllers.LocationController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Location's Page</h1>
        
        <% String locationId = session.getAttribute("sendLocationId").toString();
            LocationController locationController = new LocationController(HibernateUtil.getSessionFactory());
        
        Location location = locationController.findByID(locationId);
        CountryController cc = new CountryController(HibernateUtil.getSessionFactory());
        List<Country> countries = (List<Country>) session.getAttribute("countries");
        %>
        
        <form method="GET" action="editLocationServlet"> 
            <table>
                <tr>
                    <td>ID :</td>
                    <td>
                        <input type="hidden" name="txtLocationId" value="<%= location.getLocationId() %>">
                    </td>
                </tr>

                <tr>
                    <td>Street Address</td>
                    <td>
                        <input type="text" name="txtLocationStreet" value="<%= location.getStreetAddress() %>">
                    </td>
                </tr>

                <tr>
                    <td>Postal Code</td>
                    <td>
                        <input type="text" name="txtLocationPostal" value="<%= location.getPostalCode() %>">
                    </td>
                </tr>

                <tr>
                    <td>City</td>
                    <td>
                        <input type="text" name="txtLocationCity" value="<%= location.getCity() %>">
                    </td>
                </tr>

                <tr>
                    <td>State Province</td>
                    <td>
                        <input type="text" name="txtLocationState" value="<%= location.getStateProvince() %>">
                    </td>
                </tr>
                
                <tr>
                    <td>Country</td>
                    <td><select name="cmbCountry" >
                            `
                            <%for (Country country : countries) {%>
                            <option value="<%= country.getRegionId()%>"><%= country.getCountryName()%></option>
                            <%}%>
                        </select>
                    </td>
                </tr>
                
            </table>
            <input type="submit" name="btnSave" value="submit">
        </form>
    </body>
</html>
