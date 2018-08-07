/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tools;

import controllers.JobController;
import entities.Job;

/**
 *
 * @author Ignatius
 */
public class MyTester {
    public static void main(String[] args) {
        System.out.println(HibernateUtil.getSessionFactory());
        JobController jc = new JobController(
                HibernateUtil.getSessionFactory());
        
//        System.out.println(jc.saveOrEdit("AP_AD", 
//                "Application Developer", "500", 550));
        for (Job job : jc.getAll()) {
//        for (Job job : jc.search("jobId", "AD")) {
            System.out.println(job.getJobId()
                    +" - "+job.getJobTitle());
        }
        
//        Job j = jc.getById("AD_PRES");
//        System.out.println(j.getJobId()+", max salary: "
//                +j.getMaxSalary());
//        System.out.println(jc.saveOrEdit("AD_PRES", 
//                "President", "45000", 50000));
    }
}
