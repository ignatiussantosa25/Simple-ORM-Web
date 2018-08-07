/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import daos.EmployeeDAO;
import entities.Department;
import entities.Employee;
import entities.Job;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.hibernate.SessionFactory;

/**
 *
 * @author Radit Arighi
 */
public class EmployeeController {
    private final EmployeeDAO edao;
    
    public EmployeeController(SessionFactory factory){
        this.edao = new EmployeeDAO(factory);
    }
    
    /**
     * 
     * @param employeeId
     * @param firstName
     * @param lastName
     * @param email
     * @param phoneNumber
     * @param hireDate
     * @param salary
     * @param commissionPct
     * @param departmentId
     * @param employeeList
     * @param managerId
     * @param jobId
     * @return 
     */
    
    public boolean saveOrEdit(int employeeId, String firstName, String lastName, String email, String phoneNumber, Date hireDate, int salary, int commissionPct, Department departmentId, List<Employee> employeeList, Employee managerId, Job jobId){
        Employee employee = new Employee(employeeId, firstName, lastName, email, phoneNumber, hireDate, BigDecimal.ZERO, BigDecimal.ONE, departmentId, employeeList, managerId, jobId);
        return this.edao.insert(employee);
    }
    
    public List<Employee> getAll(){
        return this.convertToListEmployee(this.edao.getAll());
    }
    
    /* private List<Job> convertToListJob(List<Object> dataAwal){
        List<Job> dataJob = new ArrayList<>();
        for (Object object : dataAwal){
            Job job = (Job) object;
            dataJob.add(job);
        }
        return dataJob;
    }*/
    /*
    public List<Employee> search(String category, String data){
        return this.convertToListEmployee(this.edao.search(category, data));
    }*/
    
    /**
     * 
     * @param employeeId
     * @return 
     */
    /*
    public Employee getById(String employeeId){
        return this.edao.getEmployeeById(employeeId);
    }*/

    private List<Employee> convertToListEmployee(List<Object> dataAwal) {
        List<Employee> dataEmployee = new ArrayList<>();
        for (Object object : dataAwal){
            Employee employee = (Employee) object;
            dataEmployee.add(employee);
        }
        return dataEmployee;
    }
    
}
