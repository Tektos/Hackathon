<?php
//connexion
$basededonnees="tourismdata";
$user="root";
$serveur="localhost";
$mdp="";
$conn=mysqli_connect($serveur,$user,$mdp,$basededonnees) ;
//mysqli_select_db($basededonnee,$con);

if (mysqli_connect_errno()) {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

?>