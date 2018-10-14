<%--
  Created by IntelliJ IDEA.
  User: 33616
  Date: 13/10/2018
  Time: 15:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Accueil</title>
</head>
<body style="background-color: #eee">

<div align="center" style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%);">

    <div id=typeOperation style="border:solid 5px;">
        <form method="post" action="accueil">
            Quel type d'exercice veux-tu réaliser ? <br><br>
            <input type="radio" name="operation" value="+">Addition <br>
            <input type="radio" name="operation" value="-">Soustraction <br>
            <input type="radio" name="operation" value="x">Multiplication <br>
            <input id="hasard" type="checkbox" name="opeHasard" value="random">nombres au hasard<br><br>
            Quelle table veux-tu réviser ? <br><br>
            <input type="number" name="tableAFaire" min="0" max="9"><br><br>

            <input type="submit" class="btn btn-danger" style="height: 35px;" value="Commencer">
        </form>
    </div>
</div>

</body>
</html>
