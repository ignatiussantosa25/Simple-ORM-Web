/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import daos.CountryDAO;
import entities.Country;
import java.util.ArrayList;
import java.util.List;
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
    
    
    
    /**
     * Fungsi konversi
     * @param dataAwal - data yang belum terkonversi
     * @return 
     */
    
    private List<Country> convertToListCountry(List<Object> dataAwal)
    {
        List<Country> dataCountry = new ArrayList<>();
        for (Object object : dataAwal) {
            Country country = (Country) object;
            dataCountry.add(country);
        }
        return dataCountry;
    }
    
  
    
    public List<Country> search(String category, String data)
    {
       return this.convertToListCountry(this.countryDAO.search(category, data));
    }
    
        /**
     * Fungsi untuk menampilkan semua data pada Country
     *
     * @return hasilnya yaitu data yang didapatkan berupa List
     */
    public List<Country> getAll() {
        return this.convertToListCountry(this.countryDAO.getAll());
    }
    
}
