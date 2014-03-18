/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package cr.ac.ucr.webappbasica.application.servlet;

import cr.ac.ucr.webappbasica.domain.ParqueNacional;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Equipo
 */
public class InsertarParqueNacionalServlet extends HttpServlet {
    
    private  ParqueNacional parqueNacional;

    @Override
    public void init() throws ServletException {
        this.parqueNacional = new ParqueNacional();
    }
        
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        this.parqueNacional.setIdParque(Integer.parseInt(request.getParameter("idParque")));
        this.parqueNacional.setNombreParque(request.getParameter("nombreParque"));
        request.setAttribute("parqueNacional", this.parqueNacional);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/mostar_parque_insertado.jsp");
        dispatcher.forward(request, response);
        
    }

}
