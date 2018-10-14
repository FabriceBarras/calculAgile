package controller;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/accueil")


public class AccueilServlet extends HttpServlet {

    String operation;
    String opeHasard;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        operation = req.getParameter("operation");
        opeHasard = req.getParameter("opeHasard");

        req.setAttribute("operation",operation);
        req.setAttribute("opeHasard",opeHasard);


        this.getServletContext().getRequestDispatcher("/calcul.jsp").forward(req, resp);

    }
}
