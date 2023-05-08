<?php

require "database.php";

$requete = $database->prepare("SELECT * FROM tweets ORDER BY id DESC");


$requete->execute();

//ETAPE 3 - ON EN FAIT UN TRUC
//Toutes les données : tu en fais un tableau
$allTweets = $requete->fetchAll(PDO::FETCH_ASSOC); 

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Twitter</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <h1>Twitter</h1>
    <div class="searchBars">
        <form action="envoitweet.php" method="POST">
            <input type="text" name="tweet" placeholder="Tell the world what you're thinking">
            <button type="submit">Tweet!</button>
        </form>

        <form action="searchTweet.php" method="GET">
            <input type="text" name="search" placeholder="Search specific tweets">
            <button type="submit">Search</button>
        </form>
    </div>

    <br>
    <br>

    <?php foreach($allTweets as $tweets) { ?>
        <p><?= $tweets['id']?></p>
        <textarea name="tweet" id="" cols="30" rows="10"><?= $tweets['contenu']?></textarea>
        <form action="delete.php" method="POST">
                <input type="hidden" name="supprimer" value="<?= $tweets['id'] ?>">
                <button type="submit">Supprimer</button>
            </form>
    <?php } ?>

</body>
</html>