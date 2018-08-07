/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daos;

import entities.Job;
import java.util.List;
import org.hibernate.SessionFactory;

/**
 *
 * @author Ignatius
 */
public class JobDAO {

    private FunctionDAO fdao;

    public JobDAO() {
    }
    
    public JobDAO(SessionFactory factory) {
        this.fdao = new FunctionDAO(factory);
    }

    /**
     * Fungsi insert or update data Jooooooob
     *
     * @param job
     * @return boolean true/false
     */
    public boolean insertOrUpdate(Job job) {
        return this.fdao.insertOrUpdate(job);
    }

    /**
     * Fungsi untuk mendapatkan semua data/getall
     *
     * @return List
     */
    public List<Object> getAll() {
        return this.fdao.get("FROM Job");
    }

    /**
     * Fungsi search
     *
     * @param category - what colum we will find
     * @param data - what we will find
     * @return List - List Object from Jobs table
     */
    public List<Object> search(String category, String data) {
        return this.fdao.get("FROM Job WHERE "
                +category+ " LIKE '%"+data+"%'");
    }

    /**
     * Fungsi getById
     *
     * @param jobId - id from Jobs table
     * @return Job as object from Job class
     */
    public Job getJobById(String jobId) {
        return (Job) this.fdao
                .getById("FROM Job WHERE jobId='" + jobId + "'");
    }
}
