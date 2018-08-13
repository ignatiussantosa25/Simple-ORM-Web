<%-- 
    Document   : CountryView
    Created on : Aug 7, 2018, 8:48:01 PM
    Author     : Simbok_pc
--%>

<%@page import="entities.Country"%>
<%@page import="tools.HibernateUtil"%>
<%@page import="controllers.CountryController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Country View</title>
        <!--Style Bootstrap-->
        <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">

        <!--Style Custom-->
        <!--<link rel="stylesheet" href="../bootstrap/css/custom.css">-->
        <link rel="stylesheet" href="../bootstrap/css/dashboard.css">
    </head>
    <body>
        <div class="container">
            <%
                CountryController cc = new CountryController(HibernateUtil.getSessionFactory());
            %>
            <form>
                <h1>Country</h1>


                <table class="table table-striped">
                    <form>
                        <div class="form-row">
                            <div class="col-2">
                                <div class="dropdown">
                                    <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Category
                                    </a>

                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                        <a class="dropdown-item" href="#">CountryId</a>
                                        <a class="dropdown-item" href="">CountryName</a>
                                        <a class="dropdown-item" href="#">RegionId</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-6">
                                <input type="text" class="form-control" placeholder="Search">
                            </div>
                            <div class="col-2">
                                <input type="submit" class="form-control" value="Find" class="btn btn-outline-secondary">
                            </div>
                        </div>
                    </form>

                    <br/>
                    <br/>
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Country ID</th>
                            <th>Country Name</th>
                            <th>Region ID</th>
                            <th>Action</th>

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
                            <td><%out.print(country.getRegionId().getRegionId());%></td>

                            <td>

                                <span> <a class="btn btn-outline-info" href="../editCountryServlet?countryId=<%=country.getCountryId()%>">Edit</a> </span>
                                <span> <a class="btn btn-outline-danger" href="../deleteCountryServlet?countryId=<%=country.getCountryId()%>">Delete</a> </span>


                            </td>
                        </tr>
                        <%

                                i++;
                            }
                        %>
                    </tbody>
                </table>
                <div class="text-center"> <a class="btn btn-outline-success " href="insertCountryView.jsp">Tambah</a></div>


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
