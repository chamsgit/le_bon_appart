<?php 
require_once('./init.php'); 

include_once('./inc.php/header.php');
include_once('./inc.php/nav.php');


$uneAnnonce = $bdd->query("SELECT * FROM advert");
$afficheUneAnnonce = $uneAnnonce->fetch(PDO::FETCH_ASSOC);


?>

<?php
// $_GET[""];
?>

<table class="table  table-striped  text-center"><tr>

<?php echo '<pre>'; print_r($afficheUneAnnonce); echo '</pre>'; ?>



</table>


<?php 
include('./inc.php/footer.php');