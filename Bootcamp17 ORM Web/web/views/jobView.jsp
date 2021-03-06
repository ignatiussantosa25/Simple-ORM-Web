<%-- 
    Document   : jobView
    Created on : Aug 7, 2018, 10:29:55 PM
    Author     : Ignatius
--%>

<%@page import="tools.HibernateUtil"%>
<%@page import="entities.Job"%>
<%@page import="controllers.JobController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Job</title>
        <!--Style Bootstrap-->
        <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">

        <!--Style Custom-->
        <!--<link rel="stylesheet" href="../bootstrap/css/custom.css">-->
        <link rel="stylesheet" href="../bootstrap/css/dashboard.css">

    </head>
    <body>
        <nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0">
            <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#">Latihan Web Java</a>
            <input class="form-control form-control-dark w-100" type="text" placeholder="Search" aria-label="Search">
            <ul class="navbar-nav px-3">
                <li class="nav-item text-nowrap">
                    <a class="nav-link" href="#">Cari</a>
                </li>
            </ul>
        </nav>

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
                            <li class="nav-item active">
                                <a class="nav-link active" href="jobView.jsp">
                                    <span data-feather="home"></span> Job <span class="sr-only">(current)</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="regionView.jsp"><span data-feather="file"></span>Region</a>
                            </li>
                        </ul>
                    </div>
                </nav>

                <main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">
                    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
                        <h1 class="h2">Job</h1>
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
                                                        <label for="recipient-name" class="col-form-label">Job ID:</label>
                                                        <input type="text" class="form-control" id="recipient-name">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="recipient-name" class="col-form-label">Job Title</label>
                                                        <input type="text" class="form-control" id="recipient-name">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="recipient-name" class="col-form-label">Min Salary</label>
                                                        <input type="text" class="form-control" id="recipient-name">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="recipient-name" class="col-form-label">Max Salary</label>
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
                            <button class="btn btn-sm btn-outline-secondary dropdown-toggle">
                                <span data-feather="calendar"></span>
                                Kategori
                            </button>
                        </div>
                    </div>

                    <h2>Data Job</h2>
                    <div class="table-responsive">
                        <% JobController jc = new JobController(HibernateUtil.getSessionFactory()); %>
                        <table class="table table-striped table-sm">
                            <thead>
                                <tr>
                                    <th style="text-align: center">No</th>
                                    <th>Job ID</th>
                                    <th>Job Title</th>
                                    <th>Min Salary</th>
                                    <th>Max Salary</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <% int i = 1;
                      for (Job job : jc.getAll()) {%>                
                                <tr>
                                    <td style="text-align: center"><%= i%></td>
                                    <td><%= job.getJobId()%></td>
                                    <td><%= job.getJobTitle()%></td>
                                    <td><%= job.getMinSalary()%></td>
                                    <td><%= job.getMaxSalary()%></td>
                                    <td>
                                        <a href="../newServlet1?id=<%= job.getJobId()%>" class="btn btn-outline-success btn-sm">Detail</a>
                                        <a href="../editJobServlet?jobId=<%= job.getJobId()%>" class="btn btn-outline-primary btn-sm">Edit</a>
                                        <a href="../newServlet1?id=<%= job%>" class="btn btn-outline-danger btn-sm">Delete</a>
                                    </td>
                                </tr>
                                <% i++;
                    }%>
                                </tr>
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
        <!--<script src="../bootstrap/js/modal.js"></script>-->
        <script src="../bootstrap/js/custom.js"></script>
        <!--jQuery lokal -->
        <script src="../bootstrap/js/popper.min.js"></script>
        <script src="../bootstrap/js/jquery-slim.min.js"></script>
        <script src="../bootstrap/js/bootstrap.min.js"></script>

        <!--Custom JS--> 
        <!--<script src="../bootstrap/js/modal.js"></script>-->
        <script src="../bootstrap/js/custom.js"></script>
        <script>
            $('#exampleModal').on('show.bs.modal', function (event) {
                var button = $(event.relatedTarget) // Button that triggered the modal
                var recipient = button.data('whatever') // Extract info from data-* attributes
                // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
                // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
                var modal = $(this)
                modal.find('.modal-title').text('Tambah Data ' + recipient)
                modal.find('.modal-body input').val(recipient)
            })
        </script>
    </body>
</html>
