/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daos;

import java.util.List;

/**
 *
 * @author Ignatius
 */
public class DepartmentDAO {
    
    private FunctionDAO fdao;

    public DepartmentDAO(FunctionDAO functionDAO) {
        this.fdao = functionDAO;
    }
    
    /**
     * fungsi tampil data / get all
     * @return list object from department
     */
    public List<Object> getAll() {
        return this.fdao.get("from Department");
    }
    
}
