/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daos;

import entities.Employee;
import java.util.List;
import org.hibernate.SessionFactory;

/**
 *
 * @author Ignatius
 */
public class EmployeeDAO {
    private FunctionDAO fdao;
    
    public EmployeeDAO(SessionFactory factory) {
        this.fdao = new FunctionDAO(factory);
    }
    
    /**
     * Fungsi insert dan update data Job
     * @param employee
     * @return boolean true/false
     */   
    public boolean insert(Employee employee) {
        return this.fdao.insert(employee);
    }
    public boolean update(Employee employee) {
        return this.fdao.update(employee);
    }
    
    /*
    /**
     * Fungsi untuk mendapatkan semua data (getall)
     */  
    
    public List<Object> getAll(){
        return this.fdao.get("FROM Employee");
    }
    
    
    /**
     * Fungsi search
     * @param category
     * @param data - what we will find
     * @return List - List Object from Employee table
     */
    /*
    public List<Object> search(String category, String data){
        return this.fdao.get("FROM Employee WHERE " + "REGEXP_LIKE("+category+",'%"+data+"%',?,'i')");
    }
    */
    
    /**
     * Fungsi getById
     * @param employeeId - id from Employee table
     * @return Employee as object from Employee class
     */
    /*
    public Employee getEmployeeById(String employeeId){
        return (Employee) this.fdao.getById("FROM employee WHERE employeeId='"+employeeId+"'");
    }
    */
}
