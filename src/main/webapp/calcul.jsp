<%@page import="model.*" contentType="text/html" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Bootstrap Theme Company</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="styles.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

</head>


<body style="background-color: #eee">
    <% //if (request.getAttribute("essais") == null ||
        //    request.getAttribute("resultat") == "Bravo, vous avez trouvé !" ) { %>

        <div class="jumbotron text-center"
             style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%);">
            <form method="get" action="calcul">

                <input type="submit" value="Nouveau calcul" class="btn btn-danger" style="height: 35px;">

                <input type="text" hidden value="<% if ( request.getAttribute("operation")!= null){
               out.print( request.getAttribute("operation"));
           }    %>" name="operation">

                <input type="text" hidden value="<% if ( request.getAttribute("opeHasard")!= null){
               out.print( request.getAttribute("opeHasard"));
           }    %>" name="opeHasard">

            </form>
            <!--    </div>

    <%// } else { %>

       <div class="jumbotron text-center"
             style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%);">-->
            <p>
                <% if (request.getAttribute("calculAFaire") != null) {
                    out.print(request.getAttribute("calculAFaire"));
                }
                %>
            </p>

            <div class="input-group" style="display:inline-flex">
                <form method="post" action="calcul">
                    <input type="number" name="reponseUser" title="Réponse"
                           style="font-size:20px; display:inline; margin-bottom:5px; padding: 5px; width: 200px; height: 35px;"
                           required/>

                    <input type="text" hidden
                           value="<% if ( request.getAttribute("calculAFaire")!= null){
               out.print( request.getAttribute("calculAFaire"));
           }    %>"
                           name="calculAFaire">

                    <input type="number" hidden value="<% if ( request.getAttribute("correction")!= null){
               out.print( request.getAttribute("correction"));
           }    %>" name="correction">

                    <input type="number" hidden value="<% if ( request.getAttribute("essais")!= null){
               out.print( request.getAttribute("essais"));
           }    %>" name="essais">

                    <input type="text" hidden value="<% if ( request.getAttribute("operation")!= null){
               out.print( request.getAttribute("operation"));
           }    %>" name="operation">

                    <input type="text" hidden value="<% if ( request.getAttribute("opeHasard")!= null){
               out.print( request.getAttribute("opeHasard"));
           }    %>" name="opeHasard">


                    <input type="submit" class="btn btn-danger" style="height: 35px;" id="boutonValiderCalcul"
                           value="Envoyer réponse">
                </form>
            </div>

            <div id="resultat">
                <p>
                    <% if (request.getAttribute("resultat") != null) {
                        out.print(request.getAttribute("resultat"));
                    }
                    %>
                </p>
            </div>
        </div>
<% //} %>


</body>


</html>