<!DOCTYPE html>
<html lang="de">
<head>
<title>Adminback</title>   >_
<meta charset="UTF-8">
</html>

<?php
require 'db.php';

$na = $_GET['name'];
$pr = $_GET['preis'];
$ma = $_GET['marken'];
$ar = $_GET['art'];
$me = $_GET['medien'];
$arch = $_GET['architektur'];
$res = $_GET['res'];
$rel = $_GET['release'];
$vor = $_GET['vorher'];
$nach = $_GET['nachher'];
$farbe = $_GET['farbe'];

$db->query("INSERT INTO konsole (Name, Preis, Marke, Art, Unterstuetzte_Medien, Hardware_Architektur, Aufloesung, 
Erscheinungsjahr, Vorgaenger, Nachfolger, Farbe) values ('$na', '$pr', '$ma', '$ar', '$me', 
'$arch', '$res', '$rel', '$vor', '$nach', '$farbe')");




?>