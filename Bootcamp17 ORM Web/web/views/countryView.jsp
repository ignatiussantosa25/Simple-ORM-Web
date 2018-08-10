<%-- 
    Document   : CountryView
    Created on : Aug 7, 2018, 8:48:01 PM
    Author     : Simbok_pc
--%>

<%@page import="entities.Region"%>
<%@page import="controllers.RegionController"%>
<%@page import="entities.Country"%>
<%@page import="tools.HibernateUtil"%>
<%@page import="controllers.CountryController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Country View</title>
    </head>
    <body>
        <%
             CountryController cc = new CountryController(HibernateUtil.getSessionFactory());
             RegionController rc = new RegionController(HibernateUtil.getSessionFactory());
        %>
        <form>
            <h1>Country</h1>
            <select name="cmbCategory"></select>
            
            <table border="1">
                <input type="text" name="search" value="" />
                <input type="submit" name="" value="Find" />
                <br/>
                <br/>
                <thead>
                    <tr>
                        <th>Nomor</th>
                        <th>Country ID</th>
                        <th>Country Name</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        int i = 1;
                        for (Country country : cc.getAll()) {
                    %>
                    <tr>         
                        <td><%=i%></td>
                        <td><%out.print(country.getCountryId());%></td>
                        <td><%out.print(country.getCountryName());%></td>
                    </tr>
                    <%
                        i++;
                        }
                    %>
                </tbody>
                <select name="cmbRegion">
                    <% for (Region region : rc.getAll()) {%>
                        <option><%= region.getRegionName() %></option>
                    <%}%>                    
                </select>
            </table>
        </form>
        
    </body>
</html>
