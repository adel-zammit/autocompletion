<!DOCTYPE html>
  <html lang="fr">
  <head>
  <meta charset="utf-8">
   <title>Pokémon trouvé</title>
  <link rel="stylesheet" href="autocompletion.css">
  </head>
  <body>
      <div class="container" style="margin-top: 20px">
      <div class="row">
      <h1 style="text-align: center">Résultat(s)</h1>
<?php
    session_start();
    $db = new PDO("mysql:host=localhost; dbname=autocompletion;charset=utf8",'root','');
        $contenu = (String) trim($_GET['nom'])."%";
        
       
        $req_search = $db->prepare("SELECT * FROM pokemon WHERE nom LIKE ? ORDER BY nom, code LIMIT 50");
        
        $req_search->execute(array($contenu));
        
        $req_search = $req_search->fetchAll();


        foreach($req_search as $rs){
            
         echo "<a href=element.php?id=".$rs['id'].">" .$rs['nom'] . "" . $rs['code'] . "</a>"." <br>"; 
        
        }

?>
        </div>
        </div>