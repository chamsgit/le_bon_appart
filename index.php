<?php
require_once('./init.php'); 

include_once('./inc.php/header.php');
include_once('./inc.php/nav.php');

// echo '<pre>'; print_r(get_class_methods($annonce)); echo '</pre>';  
?>



<div class="container">
    
    <?php

    $annonce = $bdd->query("SELECT * FROM advert LIMIT 0,15");
    

    // echo '<pre>'; print_r($annonce); echo '</pre>';
        
    ?>

<table class="table  table-striped  text-center"><tr>
    <?php 
    for($i = 0; $i < $annonce->columnCount(); $i++): 

        $colonne = $annonce->getColumnMeta($i);    
        
       
    ?>
            <th><?= strtoupper($colonne['name']) ?></th>

    <?php 
        
    endfor; ?>
           
            
    </tr>
     <?php while($affichage = $annonce->fetch(PDO::FETCH_ASSOC)): 
    //    echo '<pre>'; print_r($affichage); echo '</pre>';
     ("SELECT id_annonce FROM advert ORDER BY id_annonce DESC");

    ?> 
        <tr>
            <?php foreach($affichage as $key => $value): ?>

                <td><?= $value ?></td>
                
            <?php endforeach; ?> 
            
                   
        </tr>

    <?php endwhile; ?>
    </table>



<h6><span class="badge bg-success"><?= $annonce->rowCount() ?></span> nombres d'annonces affichées </h6>




</div>






<?php 
include('./inc.php/footer.php');
