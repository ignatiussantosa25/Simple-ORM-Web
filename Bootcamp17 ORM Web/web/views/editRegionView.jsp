<%-- 
    Document   : editRegionView
    Created on : Aug 10, 2018, 9:34:11 AM
    Author     : misbah alkhafadh
--%>

<%@page import="entities.Region"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Region Page</title>
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
                <a class="nav-link" href="../index.html">
                  <span data-feather="file"></span> Dashboard <span data-feather="file"></span>
                </a>
              </li>
              <li class="nav-item">
                  <a class="nav-link" href="jobView.jsp"><span>Job<span class="sr-only">(current)</span></a>
              </li>
              <li class="nav-item">
                <a class="nav-link active" href="regionView.jsp">
                  <span data-feather="home"></span> Region <span class="sr-only">(current)</span>
                </a>
              </li>
            </ul>
          </div>
        </nav>
          
          <main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">
          <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
            <h1 class="h2">Region</h1>
          </div>

          <h2>Edit Region</h2>
          <% Region region = (Region) session.getAttribute("regionDetails");%>
          <form action="editRegionServlet" method="GET">
              <div class="form-group">
                <div class="form-control">
                    <input type="text" name="txtId" value="<%= region.getRegionId()%>" disabled="">
                </div>
                <div class="form-control">
                    <input type="text" name="txtRegionName" value="<%= region.getRegionName()%>">
                </div>
              </div>
                <input type="submit" value="Save">
          </form>
        </main>
      </div>
    </div>
                
<!--jQuery lokal -->
    <script src="../bootstrap/js/jquery/jquery.min.js"></script>
    <script src="../bootstrap/js/bootstrap/js/bootstrap.min.js"></script>

<!--Custom JS--> 
    <script src="../bootstrap/custom.js"></script>
    </body>
</html>
