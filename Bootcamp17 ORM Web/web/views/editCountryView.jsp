<%-- 
    Document   : editCountryView
    Created on : Aug 9, 2018, 4:53:58 PM
    Author     : BINTANG
--%>

<%@page import="controllers.RegionController"%>
<%@page import="entities.Region"%>
<%@page import="entities.Location"%>
<%@page import="java.util.List"%>
<%@page import="entities.Country"%>
<%@page import="tools.HibernateUtil"%>
<%@page import="controllers.CountryController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Data Country</title>
        <!--Style Bootstrap-->
        <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">

        <!--Style Custom-->
        <!--<link rel="stylesheet" href="../bootstrap/css/custom.css">-->
        <link rel="stylesheet" href="../bootstrap/css/dashboard.css">
    </head>
    <body>
        <div class="container">
            <h1>Edit Data Country</h1>
            <%
                Country country = (Country) session.getAttribute("countryId");

            %>
            
            <hr>
            <form action="actionCountryServlet" method="GET" >
                <div class="form-group row">
                    <label for="inputCountryId" class="col-sm-2 col-form-label">Country ID</label>
                    <div class="col-sm-10">
                        <input type="text"  readonly class="form-control-plaintext" id="inputCountryId" value="<%=country.getCountryId()%>">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="inputCountryName" class="col-sm-2 col-form-label">Country Name</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="inputCountryName" value="<%=country.getCountryName()%>">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="inputRegionId" class="col-sm-2 col-form-label">Region ID</label>
                    <div class="col-sm-10">
                        <select id="inputRegionId" class="form-control" name="cmbRegion">
                            <option selected value="<%=country.getRegionId().getRegionId()%>"><%=country.getRegionId().getRegionName()%></option>
                            <%
                                RegionController rc = new RegionController(HibernateUtil.getSessionFactory());

                                for (Region region : rc.getAllSort("regionId", "asc")) {%>
                            <option value="<%=region.getRegionId()%>">    <% out.println(region.getRegionName()); %>  </option>  <%
                                }
                            %>
                        </select>
                    </div>
                </div>
                <div class="form-group row text-center">
                    
                        <input type="submit" value="Save" class="btn btn-outline-secondary">
                    
                </div>         
            </form>
        </div>
        <!--jQuery lokal -->
        <script src="../bootstrap/js/popper.min.js"></script>
        <script src="../bootstrap/js/jquery-slim.min.js"></script>
        <script src="../bootstrap/js/bootstrap.min.js"></script>

        <!--Custom JS--> 
        <!--<script src="../bootstrap/js/modal.js"></script>-->
        <script src="../bootstrap/js/custom.js"></script>
        <!--jQuery lokal -->
        <script src="../bootstrap/js/popper.min.js"></script>
        <script src="../bootstrap/js/jquery-slim.min.js"></script>
        <script src="../bootstrap/js/bootstrap.min.js"></script>

        <!--Custom JS--> 
        <!--<script src="../bootstrap/js/modal.js"></script>-->
        <script src="../bootstrap/js/custom.js"></script>                      
    </body>
</html>
