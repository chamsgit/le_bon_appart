<?php
require_once('./init.php'); 

include_once('./inc.php/header.php');
include_once('./inc.php/nav.php');

// echo '<pre>'; print_r(get_class_methods($annonce)); echo '</pre>';  
?>



<div class="container">
    
    <?php

    $annonce = $bdd->query("SELECT * FROM advert LIMIT 0,15" );
   

    // echo '<pre>'; print_r($afficheUneAnnonce); echo '</pre>';
        
    ?>

<table class="table  table-striped  text-center"><tr>
    <?php 
    for($i = 0; $i < $annonce->columnCount(); $i++): 

        $colonne = $annonce->getColumnMeta($i);    
        
       
    ?>
            <th><?= strtoupper($colonne['name']) ?></th>

    <?php 
        
    endfor; ?>
            <th>Consulter l'annonce</th>
            
    </tr>
     <?php while($affichage = $annonce->fetch(PDO::FETCH_ASSOC)): 
    //    echo '<pre>'; print_r($annonce); echo '</pre>';
    ?> 
        <tr>
        <?php foreach($affichage as $key => $value): ?>

                    <td><?= $value ?></td>
        
                    
      

        <?php endforeach; ?> 

        <?php 
        // $uneAnnonce = $annonce->query("SELECT * FROM advert WHERE ")
        ?>

                    <td>
                        <a href="./consulter_une_annonce.php?id= <?php $value ?>" class="btn btn-success">
                       
                        </a>
                    </td>
                   
        </tr>

    <?php endwhile; ?>

    </table>



<h6><span class="badge bg-success"><?= $annonce->rowCount() ?></span> nombres d'annonces affichées </h6>




</div>






<?php 
include('./inc.php/footer.php');
