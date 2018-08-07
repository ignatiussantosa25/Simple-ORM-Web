/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import daos.CountryDAO;
import org.hibernate.SessionFactory;

/**
 *
 * @author budiarti
 */
public class CountryController {
    private CountryDAO countryDAO;

    public CountryController(SessionFactory factory) {
        this.countryDAO = new CountryDAO(factory);
    }
    
    /**
     * fungsi menampilakan data berdasarkan id
     * @param countryId id yg dipilih
     * @return menampilkandata sesuai parameter
     */
    public Object FindById(String countryId){
        return this.countryDAO.getById(countryId);
    }   
    
}
