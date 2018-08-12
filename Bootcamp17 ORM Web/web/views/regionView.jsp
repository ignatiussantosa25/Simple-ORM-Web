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
        <!--Style Bootstrap-->
        <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
        
        <!--Style Custom-->
        <!--<link rel="stylesheet" href="../bootstrap/css/custom.css">-->
        <link rel="stylesheet" href="../bootstrap/css/dashboard.css">
    </head>

    <body>
        <!--Navigation-->
        <nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0">
            <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#">Latihan Web Java</a>
            <input class="form-control form-control-dark w-100" type="text" placeholder="Search" aria-label="Search">
            <ul class="navbar-nav px-3">
              <li class="nav-item text-nowrap">
                <a class="nav-link" href="#">Cari</a>
              </li>
            </ul>
        </nav>
        <!--End NAvigation-->
        
    <div class="container-fluid">
      <div class="row">
        <nav class="col-md-2 d-none d-md-block bg-light sidebar">
          <div class="sidebar-sticky">
            <ul class="nav flex-column">
              <li class="nav-item">
                <a class="nav-link" href="index.html">
                  <span data-feather="file"></span> Dashboard <span data-feather="file"></span>
                </a>
              </li>
              <li class="nav-item">
                  <a class="nav-link" href="views/jobView.jsp"><span>Job<span class="sr-only">(current)</span></a>
              </li>
              <li class="nav-item">
                <a class="nav-link active" href="regionView.jsp">
                  <span data-feather="home"></span> Region <span class="sr-only">(current)</span>
                </a>
              </li>
            </ul>
          </div>
        </nav>
         <%
            RegionController rc  = new RegionController(HibernateUtil.getSessionFactory());
        %>
          <main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">
          <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
            <h1 class="h2">Region</h1>
            <div class="btn-toolbar mb-2 mb-md-0">
              <div class="btn-group mr-2">
                
                <!--Modal-->
                <button type="button" class="btn btn-sm btn-outline-secondary" data-toggle="modal" data-target="#exampleModal" data-whatever="">Tambah Data</button>

                <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                  <div class="modal-dialog" role="document">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">New message</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                        </button>
                      </div>
                      <div class="modal-body">
                        <form>
                          <div class="form-group">
                            <label for="recipient-id" class="col-form-label">Region Id:</label>
                            <input type="text" class="form-control" id="recipient-id">
                          </div>
                          <div class="form-group">
                            <label for="recipient-name" class="col-form-label">Region Name:</label>
                            <input type="text" class="form-control" id="recipient-name">
                          </div>
                        </form>
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Save</button>
                      </div>
                    </div>
                  </div>
                </div>
                <!--End Modal-->
              </div>
                
                <div class="input-group mb-0">
                <div class="input-group-prepend">
                  <button class="btn btn-outline-secondary dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Category</button>
                  <div class="dropdown-menu">
                    <a class="dropdown-item" href="#">ID</a>
                    <a class="dropdown-item" href="#">Region Name</a>
                  </div>
                </div>
                    <input type="text" class="form-control" aria-label="Text input with dropdown button" placeholder="Search">
              </div>
            </div>
          </div>

          <h2>Data Region</h2>
          <div class="table-responsive">
            <table class="table table-striped table-sm">
              <thead>
                <tr>
                  <th style="text-align: center">No</th>
                  <th style="text-align: center">Region ID</th>
                  <th>Region Name</th>
                  <th>Action</th>
                </tr>
              </thead>
              <tbody>
                <%
                int i = 1;
                for (Region region : rc.getAll()) {
                %>
            <tr>
                <td style="text-align: center"><%= i%></td>
                <td style="text-align: center"><%= region.getRegionId()%></td>
                <td><%= region.getRegionName()%></td>
                <td>
                    <a href="../newServlet1?id=<%= region.getRegionId()%>" class="btn btn-outline-success btn-sm">Detail</a>
                    <a href="../editRegionServlet?id=<%= region.getRegionId()%>" class="btn btn-outline-primary btn-sm">Edit</a>
                    <a href="#" class="btn btn-outline-danger btn-sm">Delete</a>
                </td>
            </tr>
            <%
                    i++;
                }
            %>
              </tbody>
            </table>
          </div>
        </main>
      </div>
    </div>
    
<!--jQuery lokal -->
    <script src="../bootstrap/js/popper.min.js"></script>
    <script src="../bootstrap/js/jquery-slim.min.js"></script>
    <script src="../bootstrap/js/bootstrap.min.js"></script>

<!--Custom JS--> 
    <script src="../bootstrap/js/custom.js"></script>
    </body>
</html>
