/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daos;

import entities.Department;
import java.util.List;
import org.hibernate.SessionFactory;

/**
 *
 * @author Ignatius
 */
public class DepartmentDAO {
    
    private FunctionDAO fdao;

    public DepartmentDAO(SessionFactory factory) {
        this.fdao = new FunctionDAO(factory);
    }
    
    /**
     * fungsi tampil data / get all
     * @return list object from department
     */
    public List<Object> getAll() {
        return this.fdao.get("from Department");
    }
    
    /**
     * Fungsi yang digunakan untuk mencari data Department
     * @param category - what column we will find
     * @param data - what we will find
     * @return List
     */
    public List<Object> search(String category, String data){
        return  this.fdao.get("FROM Department WHERE " +category+ " LIKE '%" +data+ "%'");
    }
    public Department getDepartmentById(Integer departmentId) {
        return (Department) this.fdao
                .getById("FROM Department WHERE departmentId='" + departmentId + "'");
    }
}
