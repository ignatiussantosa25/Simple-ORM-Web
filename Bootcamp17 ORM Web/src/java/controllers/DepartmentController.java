/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import daos.DepartmentDAO;
import entities.Department;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.SessionFactory;

/**
 *
 * @author MUHAMMAD BIN ZANDRA
 */
public class DepartmentController {
    
    private final DepartmentDAO departmentDAO;

    public DepartmentController(SessionFactory factory) {
        this.departmentDAO = new DepartmentDAO(factory);
    }
    
    /**
     * function convert list
     * @param dataAwal an object old where data for all object
     * @return datas= object list for department object
     */
    private List<Department> listDepartment(List<Object> dataAwal) {
        List<Department> datas = new ArrayList<>();
        for (Object object : dataAwal) {
            Department department = (Department) object;
            datas.add(department);
        }
        return datas;
    }
    
    /**
     * /**
     * Fungsi yang digunakan untuk mencari data Department
     * @param category 
     * @param data
     * @return List
     */
    public List<Department> find(String category, String data){
        return this.listDepartment(this.departmentDAO.search(category, data));
    }
    
    /**
     * function select all data
     * @return list objct from object department
     */
    public List<Department> getAll() {
        return this.listDepartment(this.departmentDAO.getAll());
    }
    public Department getById(Integer departmentId) {
        return departmentDAO.getDepartmentById(departmentId);
     }
}
