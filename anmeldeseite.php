<!DOCTYPE html>
<html lang="de">
<head>
    <title>Anmeldeseite</title>
</html>


<?php
require 'db.php';

    $user = $_GET['nutzername'];
    $psw = $_GET['passwort'];

    $erg = $db->query("SELECT * FROM anmeldung WHERE Name LIKE '%".$user."%'");
    $erg_arr = $erg->fetch_assoc();

if($psw == $erg_arr["Passwort"])
{
    echo "Geht";
    header("Location: suchseite.php");
}
else
{
	header("Location: anmeldefenster.php?nachricht=Falsche Eingabe");
    //Später folgende Zeile Löschen
    //echo "<body style=\"background-color: #55555A; \">";
}

?>