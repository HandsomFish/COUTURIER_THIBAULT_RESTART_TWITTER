<?php 

    require 'database.php';

    $supp = $database->prepare("DELETE FROM tweets WHERE id = :id");
    $supp->execute(
        [
            "id" => $_POST['supprimer']
        ]
    );

header("Location: index.php");

?>