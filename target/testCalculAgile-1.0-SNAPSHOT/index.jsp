<%@page import="model.*" contentType="text/html" pageEncoding="UTF-8"%>
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


<form method="get" action ="calcul">
    <input type="submit" value="Nouveau calcul">
</form>

<p>
    <% if(request.getAttribute("calculAFaire")!=null)
            {out.print(request.getAttribute("calculAFaire"));
            }
    %>
</p>

<form method="post" action="calcul">
    <input type="number"name="reponseUser" title="Réponse" required/>

    <input type="text" hidden
           value="<% if ( request.getAttribute("calculAFaire")!= null){
               out.print( request.getAttribute("calculAFaire"));
           }    %>"
           name="calculAFaire" >

    <input type="number" hidden value="<% if ( request.getAttribute("correction")!= null){
               out.print( request.getAttribute("correction"));
           }    %>"  name="correction" >

    <input type="number" hidden value="<% if ( request.getAttribute("essais")!= null){
               out.print( request.getAttribute("essais"));
           }    %>"  name="essais" >

    <input type="submit">
</form>

<p>
    <% if (request.getParameter("reponseUser")!=null){
            if((request.getAttribute("correction")!=null || request.getAttribute("reponseUser") != null)&& (int) request.getAttribute("essais")>=3)
                {out.print(request.getAttribute("correction"));
                }
        }

    %>
</p>
<p>

    <% if(request.getAttribute("resultat")!=null)
    {out.print(request.getAttribute("resultat"));
    }
    %>
</p>

</body>


</html>