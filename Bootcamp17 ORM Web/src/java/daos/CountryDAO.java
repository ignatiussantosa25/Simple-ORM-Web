/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daos;

import entities.Country;
import java.util.List;
import org.hibernate.SessionFactory;

/**
 *
 * @author Ignatius
 */
public class CountryDAO {
    private FunctionDAO fdao;

    public CountryDAO(SessionFactory factory) {
        this.fdao = new FunctionDAO(factory);
    }
    
    /**
     * Fungsi getById mengambil data berdasarkan id tertentu pada tabel countries
     * @param countryId id dari tabel countries
     * @return Country sebagai object dari class country
     */
    public Country getById(String countryId){
        return (Country) this.fdao.getById("FROM Country WHERE countryId='"+countryId+"'");
    }
    
       /**
 * Fungsi search
 * @param category - kolum apa yang kita cari
 * @param data = apa yang kita cari
 * @return List - List object from Jobs table
 */

public List<Object> search(String category, String data)
{
    return this.fdao.get("FROM Country WHERE REGEXP_LIKE("+category+",'%"+data+"%','i')"); // query tersebut merupakan HQL //
}
}
