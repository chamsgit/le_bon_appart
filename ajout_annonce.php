<?php
require_once('./init.php'); 

include_once('./inc.php/header.php');
include_once('./inc.php/nav.php');


if($_POST)
{

    $data = $bdd->prepare("INSERT INTO advert (title, description, postal_code, city, type, price, reservation_message) VALUES (:title, :description, :postal_code, :city, :type, :price, :reservation_message)");

    $data->bindValue(':title', $_POST['title'], PDO::PARAM_STR);
    $data->bindValue(':description', $_POST['description'], PDO::PARAM_STR);
    $data->bindValue(':postal_code', $_POST['postal_code'], PDO::PARAM_INT);
    $data->bindValue(':city', $_POST['city'], PDO::PARAM_STR);
    $data->bindValue(':type', $_POST['type'], PDO::PARAM_STR);
    $data->bindValue(':price', $_POST['price'], PDO::PARAM_INT);
    $data->bindValue(':reservation_message', $_POST['reservation_message'], PDO::PARAM_STR);
     
    $data->execute();

    // print_r($data); echo '<pre>'; "hello";

}

?>
 
        <form method="post" class="col-md-6 mx-auto">

            <div class="mb-3">
                <label for="title" class="form-label">Titre de l'annonce</label>
                <input type="text" class="form-control " id="title" name="title">
            </div> 

           
            <div class="mb-3">
                <label for="description" class="form-label">description</label>
                <textarea class="form-control" id="description" name="description" rows="3"></textarea>
            </div>

            <div class="mb-3">
                <label for="postal_code" class="form-label">Code postal</label>
                <input type="number" class="form-control " id="postal_code" name="postal_code">
            </div>
            

             <div class="mb-3">
                <label for="city" class="form-label">Ville</label>
                <input type="text" class="form-control" id="city" name="city">
            </div>

            
            <div class="mb-3">
                <label for="type" class="form-label">Type d'annonce</label>
                <select class="form-select" id="type" name="type">
                    <option value="location">Location</option>
                    <option value="vente">Vente</option>
                </select>
            </div>

            <div class="mb-3">
                <label for="price" class="form-label">prix</label>
                <input type="number" class="form-control" id="price" name="price">
            </div>
           
            <div class="mb-3">
            <label for="reservation_message" class="form-label">reservation_message</label>
            <textarea class="form-control" id="reservation_message" name="reservation_message" rows="3"></textarea>
            </div>
            <button type="submit" class="btn btn-dark mb-5">Validez</button>

<?php 
include('./inc.php/footer.php');