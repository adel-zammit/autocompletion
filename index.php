<?php
//Démarrage de la session
session_start();
//Connexion bdd
$db = new PDO('mysql:localhost;dbname=autocompletion;charset=utf8','root','');
//Création de la requétte 
$query = $db->query('SELECT * FROM autocompletion ORDER BY id ASC');
$query = $db->query('SELECT nom FROM autocompletion WHERE ORDER BY id ASC');
//Condition
 if(isset($_GET['nom'])) {
    // header(location ="document.location.href='recherche.php'");
 }
?>

<!DOCTYPE html>
<html>
    <head>
            <meta charset="utf-8"/>
            <link rel="stylesheet" href="autocompletion.css"/>
            <script src="https://code.jquery.com/jquery.com/jquery-3.2.1.slim.min.js"></script>
    </head>

<body>

    <div class="form-groupe">
    <h1 style="text-align: center">Moteur de recherche</h1>

        <form  method="GET" action="recherche.php">

        <input class="form-control" type="text" id="search-result" value="" placeholder="Rechercher" name="nom"/>
        <input type="submit" value="entrée"  class="button" id="entrée" name="button"/>

    </form>  
    </div>
  
  <div style="margin-top: 20px">
  <div id="result-search">

  </div>
  </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js/"></script>
    <script src="https://cdnjs.cloundflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    
    <!-- Début de script -->
    <script>
    $(document).ready(function() {
        $('#search-result').keyup(function(){
            $('#result-search').html('');
            //Déclaration variable
           var nom = $(this).val();
           console.log(nom);
           //Condition
            if(nom != ""){
                $.ajax({
                    type: "GET",
                    url: 'results.php',
                    data: 'nom=' + encodeURIComponent(nom),
                    success: function(data){
                        if(data !=""){
                            console.log(data);
                             $('#result-search').append(data);

                        }else{
                            document.getElementById('result-search').innerHTML = "<div style='font-size: 20px; text-align: center; margin-top: 10px'>Aucun résultat trouvé</div>"

                        }
                    }    
                });
            }

            //alert('ok');
        });
    });
    </script>



    </body>
</html>