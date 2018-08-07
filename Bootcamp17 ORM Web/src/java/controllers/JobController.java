/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import daos.JobDAO;
import entities.Job;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.SessionFactory;
import tools.HibernateUtil;

/**
 *
 * @author Ignatius
 */
public class JobController {

    private JobDAO jdao;

    public JobController() {
    }

    public JobController(SessionFactory factory) {
        this.jdao = new JobDAO(factory);
    }
    
    /**
     * 
     * @param jobId
     * @param jobTitle
     * @param minSalary
     * @param maxSalary
     * @return 
     */
    public boolean saveOrEdit(String jobId, String jobTitle,
            String minSalary, int maxSalary) {
        Job job = new Job(jobId, jobTitle, 
                Integer.parseInt(minSalary), maxSalary);
        return this.jdao.insertOrUpdate(job);
    }

    public List<Job> getAll() {
        return this.convertToListJob(this.jdao.getAll());
    }

    private List<Job> convertToListJob(List<Object> dataAwal) {
        List<Job> dataJob = new ArrayList<>();
        for (Object object : dataAwal) {
            Job job = (Job) object;
            dataJob.add(job);
        }
        return dataJob;
    }

    public List<Job> search(String category, String data) {
        return this.convertToListJob(this.jdao.search(category, data));
    }
    
    public Job getById(String jobId){
        return this.jdao.getJobById(jobId);
    }
}
