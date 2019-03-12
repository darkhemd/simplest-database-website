<!DOCTYPE html>
<html lang="de">
<head>
<title>Admincenter</title>>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Lato", sans-serif}
.w3-bar,h1,button {font-family: "Montserrat", sans-serif}
.fa-anchor,.fa-coffee {font-size:200px}
</style>


//Kopfzeile
<div class="w3-top">
  <div class="w3-bar w3-red w3-card w3-left-align w3-large">
    <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-red" href="javascript:void(0);" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="http://localhost/projekt/startseite.html" class="w3-bar-item w3-button w3-padding-large w3-white">Home</a>
    <a href="http://localhost/projekt/scripte/Suchseite.php" class="w3-bar-item w3-button w3-hide-small 
    w3-padding-large w3-hover-white">Konsolen-Suche</a>
</div>
    </body>
</html>


<form action="adminback.php" method="get">

<p>Name:
    <input type="text" name="name">
    </p>
<p>Preis:
    <input type="text" name="preis">
    </p>
<p>Marke:
    <input type="text" name="marken">
    </p>
<p>Art:
    <input type="text" name="art">
    </p>
<p>Unterstützte Medien:
    <input type="text" name="medien">
    </p>
<p>Hardware Architektur:
    <input type="text" name="architektur">
    </p>
<p>Auflösung:
    <input type="text" name="res">
    </p>
<p>Erscheinungsjahr:
    <input type="text" name="release">
    </p>
<p>Vorgänger:
    <input type="text" name="vorher">
    </p>
<p>Nachfolger:
    <input type="text" name="nachher">
    </p>
<p>Farbe:
    <input type="text" name="farbe">
    </p>


<p>
    <button class="w3-button w3-black w3-padding-large w3-large w3-margin-top">Weiter</button>
    </p>

</form>

<?php
//Später folgende Zeile Löschen
//echo "<body style=\"background-color: #55555A; \">"; 
?>