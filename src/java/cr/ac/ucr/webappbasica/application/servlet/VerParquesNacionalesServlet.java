/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package cr.ac.ucr.webappbasica.application.servlet;

import cr.ac.ucr.webappbasica.domain.ParqueNacional;
import java.io.IOException;
import java.util.LinkedList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Equipo
 */
@WebServlet(name = "VerParquesNacionalesServlet", urlPatterns = {"/verParquesNacionales"})
public class VerParquesNacionalesServlet extends HttpServlet {
    
    private String tituloPagina;
    private ParqueNacional parqueNacional;
    private LinkedList<ParqueNacional> parques;

    @Override
    public void init() throws ServletException {
        tituloPagina = "Lista de parques de Costa Rica";
        parqueNacional = new ParqueNacional(1, "Parque Nacional Volcán Turrialba");
        parques = new LinkedList<ParqueNacional>();
        parques.add(new ParqueNacional(2, "Parque Nacional Manuel Antonio"));
        parques.add(new ParqueNacional(3, "Parque Nacional Rincón de la Vieja"));
        parques.add(new ParqueNacional(4, "Parque Nacional Volcán Irazú"));   
        
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("tituloPagina", this.tituloPagina);
        request.setAttribute("parqueNacional", this.parqueNacional);
        request.setAttribute("parques", this.parques);
        RequestDispatcher requestDispatcher =  request.getRequestDispatcher("/ver_parques_nacionales.jsp");
        requestDispatcher.forward(request, response);
        
        
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }


}
