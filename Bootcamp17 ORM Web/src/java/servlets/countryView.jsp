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
    </head>
    <body>
        <div class="container">
            <%
                CountryController cc = new CountryController(HibernateUtil.getSessionFactory());
            %>
            <form>
                <h1>Country</h1>


                <table class="table table-striped">
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
                    <span><input type="text" name="search" value="" /></span>
                    <span><input type="submit" name="" value="Find" class="btn btn-outline-secondary"/></span>
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
                <div class="text-center"> <a class="btn btn-outline-success " href="../saveCountryServlet">Tambah</a> </div>


            </form>
        </div>
        
    </body>
</html>
