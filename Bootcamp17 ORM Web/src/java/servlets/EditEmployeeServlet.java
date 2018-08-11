/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import controllers.DepartmentController;
import controllers.EmployeeController;
import entities.Department;
import entities.Employee;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import tools.HibernateUtil;

/**
 *
 * @author Gusma
 */
public class EditEmployeeServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String id = request.getParameter("textId");
        String first = request.getParameter("txtFirstName");
        String last = request.getParameter("txtLastName");
        String email = request.getParameter("txtEmail");
        String np = request.getParameter("txtNumberPhone");
        String hd = request.getParameter("txtHireDate");
        String sl = request.getParameter("txtSalary");
        String cpt = request.getParameter("txtCommPct");
        String dp = request.getParameter("cmbDepartment");
        String mg = request.getParameter("cmbManager");
        String job = request.getParameter("cmbJob");

        try (PrintWriter out = response.getWriter()) {
            EmployeeController ec = new EmployeeController(HibernateUtil.getSessionFactory());
            DepartmentController dc = new DepartmentController(HibernateUtil.getSessionFactory());
            if (ec.saveOrEdit(Integer.parseInt(id), first, last, email, np, java.sql.Date.valueOf(hd),
                    Integer.parseInt(sl),Integer.parseInt(cpt),dp,mg, job)) {
                out.println("Sipp");
            } else {
                out.println("No !!");
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
