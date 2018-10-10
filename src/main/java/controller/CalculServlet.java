package controller;

import model.Calcul;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/calcul")
public class CalculServlet extends HttpServlet {


    private String calculAFaire;

    private int correction;
    private String resultat;
    private int essais;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Calcul calculGenere = new Calcul();
        calculGenere.genereCalcul();
        calculAFaire= calculGenere.getCalculAFaire();
        correction = calculGenere.getCorrection();

        req.setAttribute("calculAFaire",calculAFaire);
        req.setAttribute("correction",correction);
        this.getServletContext().getRequestDispatcher("/index.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Calcul calculCorrige = new Calcul();
        calculCorrige.corrigerCalcul(req);

        calculAFaire = req.getParameter("calculAFaire");
        int reponseUser = Integer.parseInt(req.getParameter("reponseUser"));

        correction = calculCorrige.getCorrection();
        resultat = calculCorrige.getResultat();
        essais = calculCorrige.getEssais();

        req.setAttribute("calculAFaire",calculAFaire);
        req.setAttribute("reponseUser",reponseUser);
        req.setAttribute("correction",correction);
        req.setAttribute("resultat",resultat);
        req.setAttribute("essais",essais);

        this.getServletContext().getRequestDispatcher("/index.jsp").forward(req, resp);
    }

    @Override
    public void init() {
    }
}
