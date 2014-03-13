/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package cr.ac.ucr.webappbasica.domain;

import java.util.LinkedList;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
/**
 *
 * @author Equipo
 */
public class ParqueNacionalTest {
    
    private ParqueNacional parqueNacional;
    private LinkedList<ParqueNacional> parques;

    @Before
    public void setUp() {
        parqueNacional = new ParqueNacional(1, "Parque Nacional Volcán Turrialba");
        parques = new LinkedList<ParqueNacional>();
        parques.add(new ParqueNacional(2, "Parque Nacional Manuel Antonio"));
        parques.add(new ParqueNacional(3, "Parque Nacional Rincón de la Vieja"));
        parques.add(new ParqueNacional(4, "Parque Nacional Volcán Irazú"));        
    }//setUp
    
    @After
    public void tearDown() {
    }//tearDown

    @Test
    public void test() {        
        System.out.println("Nombre: "+parqueNacional.getNombreParque());  
//        for (int i = 0; i < parques.size(); i++) {            
//            System.out.println("Nombre: "+parques.get(i).getNombreParque());    
//        }//for
                
        for (ParqueNacional parqueTemp : parques) {
            System.out.println("Nombre: "+parqueTemp.getNombreParque());    
        }//for-each   
    }//test
}
