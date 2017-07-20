package amm.m3;

import amm.m3.Classi.Gruppo;
import amm.m3.Classi.GruppoFactory;
import amm.m3.Classi.Post;
import amm.m3.Classi.PostFactory;
import amm.m3.Classi.Utente;
import amm.m3.Classi.UtenteFactory;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class Bacheca extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        HttpSession session = request.getSession(false);

        if (session != null && session.getAttribute("loggedIn") != null && session.getAttribute("loggedIn").equals(true)) { 

            Integer loggedUserID = (Integer) session.getAttribute("loggedUserID"); 
            Utente utente = UtenteFactory.getInstance().getUserById(loggedUserID); 
            
                ArrayList < Post > posts = new ArrayList < > (); 
                posts = PostFactory.getInstance().getPostList(utente);  
                request.setAttribute("posts", posts); 
                ArrayList < Utente > amici = UtenteFactory.getInstance().getFriendsByUser(utente);   
                request.setAttribute("amici", amici);
                ArrayList < Gruppo > gruppi = GruppoFactory.getInstance().getGroupList(utente); 
                request.setAttribute("gruppi", gruppi);

                request.getRequestDispatcher("bacheca.jsp").forward(request, response); 
                return;
            }
        request.getRequestDispatcher("bacheca.jsp").forward(request, response);
        return;


    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
            return "Short description";
        } // </editor-fold>

}