<%-- 
    Document   : CountryView
    Created on : Aug 7, 2018, 10:05:32 PM
    Author     : Dayinta Warih Wulandari
--%>
<%@page import="entities.Location"%>
<%@page import="controllers.LocationController"%>
<%@page import="entities.Department"%>
<%@page import="java.util.List"%>
<%@page import="tools.HibernateUtil"%>
<%@page import="controllers.RegionController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Location Page</title>
    </head>
    <body>
        <%
            LocationController lc = new LocationController(HibernateUtil.getSessionFactory());
        %>
        <p>
        <h1>Location</h1>
        <select name="cmbCategory">
        </select>
        <input type="text" name="txtFind" value="" />
        <input type="submit" value="Find" name="btnFind" />
    </p>
    <p><a href="../addLocationServlet">Tambah</a></p>
    <table border="1">
        <thead>
            <tr>
                <th>Nomor</th>
                <th>Location ID</th>
                <th>Street Address</th>
                <th>Postal Code</th>
                <th>City</th>
                <th>State Province</th>
                <th>Country ID</th>
                <th colspan="3">Action</th>
            </tr>
        </thead>
        <tbody>
            
            <%
                int i = 1;
                for (Location location : lc.getAll()) {
            %>
            <tr>
                <td><%= i%></td>
                <td><%= location.getLocationId()%></td>
                <td><%= location.getStreetAddress() %></td>
                <td><%= location.getPostalCode() %></td>
                <td><%= location.getCity() %></td>
                <td><%
                    if (location.getStateProvince() != null) {
                        
                        out.print(location.getStateProvince());                            
                        }
                    %></td>
                <td><%
                    if (location.getCountryId() != null) {
                        out.print(location.getCountryId().getCountryName());
                        }
                    %></td>
                
                <td><a href="../getIdLocationServlet?locationId=<%=location.getLocationId()%>">Edit</a></td>
                <td><a href="../detailLocationServlet?locationId=<%=location.getLocationId()%>">Lihat</a></td>
                <td><a href="../deleteLocationServlet?locationId=<%=location.getLocationId()%>">Delete</a></td>
            
            </tr>
            <%
                    i++;
                }
            %>
        </tbody>
    </table>
        
</body>
</html>
