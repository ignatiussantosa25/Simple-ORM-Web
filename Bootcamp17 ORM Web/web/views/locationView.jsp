<%-- 
    Document   : locationView
    Created on : Aug 8, 2018, 8:10:19 AM
    Author     : kresna bayu
--%>

<%@page import="tools.HibernateUtil"%>
<%@page import="controllers.LocationController"%>
<%@page import="entities.Location" %>%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Location List</title>
    </head>
    <body>
        <%
            LocationController lc = new LocationController(HibernateUtil.getSessionFactory());
        %>
        <h1>Location</h1>
        <select name="cmbCategory">
        </select>
        <input type="text" name="txtFind" value="" />
        <input type="submit" name="btnFind" value="Find" />
        <br/><p/>
        <table border="1">
            <thead>
                <tr>
                    <th>NOMER</th>
                    <th>LOCATION ID</th>
                    <th>STREET ADDRESS</th>
                    <th>POSTAL CODE</th>
                    <th>CITY</th>
                    <th>STATE PROVINCE</th>
                                       
                </tr>
            </thead>
            <tbody>
                <%
                    int i = 1;
                   for (Location location : lc.getAll()){
                %>
                <tr>
                    <td><%= i%></td>
                    <td><%=location.getLocationId()%></td>
                    <td><%= location.getStreetAddress()%></td>
                    <td><%= location.getPostalCode()%></td>
                    <td><%= location.getCity()%></td>
                    <td><%= location.getStateProvince()%></td>
                   
                   
                </tr>
                <%
                        i++;
                    }
                %>
            </tbody>
        </table>

    </body>
</html>