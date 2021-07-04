<?php 
// CONNEXION A LA BASE DE DONNEE
$bdd = new PDO('mysql:host=localhost;dbname=le_bon_appart', 'root', '', array(PDO::ATTR_ERRMODE => PDO::ERRMODE_WARNING, PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8'));
// print_r($bdd);
// CONSTANTE pour indiquer où se situe les fichiers du site 
define("RACINE_SITE", $_SERVER['DOCUMENT_ROOT'] . '/PHP/le_bon_appart/');
$_SERVER['DOCUMENT_ROOT'];
//  echo RACINE_SITE; 

// FAILLE XSS 
foreach($_POST as $key => $value)
{
    $_POST[$key] = htmlspecialchars($value);
}