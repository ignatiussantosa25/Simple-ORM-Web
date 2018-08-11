<%-- 
    Document   : addLocation
    Created on : Aug 10, 2018, 10:41:48 AM
    Author     : MUHAMMAD BIN ZANDRA
--%>

<%@page import="entities.Country"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>add location</h1>
        <% List<Country> countries = (List<Country>) session.getAttribute("countries"); %>
        
        <form method="POST" action="saveLocationServlet"> 
            <table>
                <tr>
                    <td>ID :</td>
                    <td>
                        <input type="type" name="txtLocationId" value="">
                    </td>
                </tr>

                <tr>
                    <td>Street Address</td>
                    <td>
                        <input type="text" name="txtLocationStreet" value="">
                    </td>
                </tr>

                <tr>
                    <td>Postal Code</td>
                    <td>
                        <input type="text" name="txtLocationPostal" value="">
                    </td>
                </tr>

                <tr>
                    <td>City</td>
                    <td>
                        <input type="text" name="txtLocationCity" value="">
                    </td>
                </tr>

                <tr>
                    <td>State Province</td>
                    <td>
                        <input type="text" name="txtLocationState" value="">
                    </td>
                </tr>
                
                <tr>
                    <td>Country</td>
                    <td><select name="cmbCountry">
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
