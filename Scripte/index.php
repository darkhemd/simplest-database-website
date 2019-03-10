<!DOCTYPE html>
<html lang="de">

<title>Projekt Webseite</title>
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
<div class="w3-top">
  <div class="w3-bar w3-red w3-card w3-left-align w3-large">
    <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-red" href="javascript:void(0);" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="http://localhost/projekt/Test.html" class="w3-bar-item w3-button w3-padding-large w3-white">Home</a>
    <a href="http://localhost/projekt/scripte/Suchseite.php" class="w3-bar-item w3-button w3-hide-small 
    w3-padding-large w3-hover-white">Konsolen-Suche</a>
</div>
   
<?php
    
    require 'db.php';
   

    $eingabe = $_GET['konsolenname'];

    echo "<h1>Programm Konsole</h1>";
    $erg = $db->query("SELECT * FROM Konsole
    WHERE Name LIKE '%".$eingabe."%'");

    echo "<table border='1'>
    <tr>
        <th>Name</th>
        <th>Preis</th>
        <th>Marke</th>
        <th>Art</th>        
        <th>Unterstzützte Medien</th>
        <th>Hardware Architektur</th>
        <th>Auflösung</th>
        <th>Erscheinungsjahr</th>
        <th>Vorgänger</th>
        <th>Nachfolger</th>
        <th>Farbe</th>
    </tr>";

    while($row = mysqli_fetch_array($erg)){
        echo "<tr>";
        echo "<td>" . $row['Name'] . "</td>";
        echo "<td>" . $row['Preis'] . "</td>";
        echo "<td>" . $row['Marke'] . "</td>";
        echo "<td>" . $row['Art'] . "</td>";
        echo "<td>" . $row['Unterstuetzte_Medien'] . "</td>";
        echo "<td>" . $row['Hardware_Architektur'] . "</td>";
        echo "<td>" . $row['Aufloesung'] . "</td>";
        echo "<td>" . $row['Erscheinungsjahr'] . "</td>";
        echo "<td>" . $row['Vorgaenger'] . "</td>";
        echo "<td>" . $row['Nachfolger'] . "</td>";
        echo "<td>" . $row['Farbe'] . "</td>";
        echo "</tr>";
    }
    echo "</table>";


    $datensatz = $erg->fetch_assoc();
    echo "<pre>";
    print_r($datensatz);
    echo "</pre>";

    //Später folgende Zeile Löschen
    //echo "<body style=\"background-color: #55555A; \">"; 

?>

</body>
</html>