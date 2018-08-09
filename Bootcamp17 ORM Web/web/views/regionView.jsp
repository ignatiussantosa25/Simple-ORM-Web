<%-- 
    Document   : CountryView
    Created on : Aug 7, 2018, 10:05:32 PM
    Author     : Dayinta Warih Wulandari
--%>
<%@page import="entities.Region"%>
<%@page import="tools.HibernateUtil"%>
<%@page import="controllers.RegionController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Region Page</title>
    </head>
    <body>
        <%
            RegionController rc  = new RegionController(HibernateUtil.getSessionFactory());
        %>
        <p>
        <h1>Region</h1>
        <select name="cmbCategory">
        </select>
        <input type="text" name="txtFind" value="" />
        <input type="submit" value="Find" name="btnFind" />
    </p>
    <p></p>
    <table border="1">
        <thead>
            <tr>
                <th>Nomor</th>
                <th>Region ID</th>
                <th>Region Name</th>

            </tr>
        </thead>
        <tbody>
            <%
                int i = 1;
                for (Region region : rc.getAll()) {
            %>
            <tr>
                <td><%= i%></td>
                <td><%= region.getRegionId()%></td>
                <td><%= region.getRegionName()%></td>
            </tr>
            <%
                    i++;
                }
            %>
        </tbody>
    </table>
    <table border="0">
        <thead>
            <tr>
                <th></th>
                <th></th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Job ID</td>
                <td>
                    <input type="text" name="txtIdRegion" value="" size="10" />
                </td>
            </tr>
            <tr>
                <td>Job Title</td>
                <td>
                    <input type="text" name="txtRegionName" value="" size="15" />
                </td>
            </tr>
        </tbody>
    </table>
    <p>
        <input type="submit" value="Save" name="btnSave" />
        <input type="submit" value="Drop" name="btnDrop" />
    </p>
</body>
</html>
