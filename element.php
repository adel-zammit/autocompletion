<!DOCTYPE html>
  <html lang="fr">
  <head>
  <meta charset="utf-8">
   <title>Pokémon trouvé</title>
   <link rel="stylesheet" href="autocompletion.css"/>
  </head>
  <body>
      <h1>Descriptif</h1>
      <div class="container">
      <div class="row">

<?php

    session_start();
    // Connexion DB
    $db = new PDO("mysql:host=localhost; dbname=autocompletion;charset=utf8",'root','');
    //Condition if = Si
    if(isset($_GET['id'],)){
        $id = $_GET['id'];
        //Préparation requette
        $req = $db->prepare("SELECT * FROM pokemon WHERE id = '$id' ORDER BY nom, code, description");
        // Selection tout id commencent par .'%' 
        $id = $id.'%';
        
        //$req->bindValue(':name', $name);
        $req->execute(array($id));
        
        $req = $req->fetchAll(PDO::FETCH_ASSOC);

        // Boucle
        foreach($req as $reqs){
            ?>
                <div class="result">
                    <?= $reqs['nom'] . " " .$reqs['code'] ?>
                </div>
                
                <div class="fdp">
            <?php
            echo $reqs['description'];
        }
    } 
?>
</div>
</div>
</div>
</body>
</html>