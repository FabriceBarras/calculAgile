package model;

import javax.servlet.http.HttpServletRequest;

public class Calcul {

    private int nombre1;
    private int nombre2;
    private String calculAFaire;
    private int correction;
    private int essais;

    public String getOperation() {
        return operation;
    }

    public void setOperation(String operation) {
        this.operation = operation;
    }

    public String getOpeHasard() {
        return opeHasard;
    }

    public void setOpeHasard(String opeHasard) {
        this.opeHasard = opeHasard;
    }

    private String operation;
    private String opeHasard;

    public int getEssais() {
        return essais;
    }

    public void setEssais(int essais) {
        this.essais = essais;
    }

    public String getResultat() {
        return resultat;
    }

    public void setResultat(String resultat) {
        this.resultat = resultat;
    }

    private String resultat;

    public Calcul(int nombre1, int nombre2, String calculAFaire, int correction, String resultat , int essais, String operation, String opeHasard) {
        this.nombre1 = nombre1;
        this.nombre2 = nombre2;
        this.calculAFaire = calculAFaire;
        this.correction = correction;
        this.resultat = resultat;
        this.essais =essais;
        this.operation=operation;
        this.opeHasard=opeHasard;
    }

    public Calcul() {
    }

    public int getNombre1() {
        return nombre1;
    }

    public void setNombre1(int nombre1) {
        this.nombre1 = nombre1;
    }

    public int getNombre2() {
        return nombre2;
    }

    public void setNombre2(int nombre2) {
        this.nombre2 = nombre2;
    }


    public String getCalculAFaire() {
        return calculAFaire;
    }

    public void setCalculAFaire(String calculAFaire) {
        this.calculAFaire = calculAFaire;
    }

    public int getCorrection() {
        return correction;
    }

    public void setCorrection(int correction) {
        this.correction = correction;
    }


    public void genereCalcul(HttpServletRequest req){
        nombre1 = (int) Math.floor(Math.random() * 50);
        nombre2 = (int) Math.floor(Math.random() * 50);
        if (req.getParameter("operation")!= null){
            if (req.getParameter("operation").equals("+")){
                correction = nombre1 + nombre2;
                calculAFaire = "" + nombre1 + "+" + nombre2;
            }
            if (req.getParameter("operation").equals("-")){
                correction = nombre1 - nombre2;
                calculAFaire = "" + nombre1 + "-" + nombre2;
            }
            if (req.getParameter("operation").equals("x")){
                correction = nombre1 * nombre2;
                calculAFaire = "" + nombre1 + "x" + nombre2;
            }
        }
     }

    public void corrigerCalcul(HttpServletRequest req) {
        int reponseUser = Integer.parseInt(req.getParameter("reponseUser"));
        correction = Integer.parseInt((req.getParameter("correction")));
        if ((req.getParameter("essais")) != null){
            essais = Integer.parseInt((req.getParameter("essais")));
        }
        if (reponseUser == correction) {
              resultat = "Bravo, vous avez trouvé !";
        } else if (essais >= 2) {
                resultat = "Raté, le résultat était " + correction;

        } else {
            resultat = "Raté essaie encore !";
            essais++;
        }

    }


}
