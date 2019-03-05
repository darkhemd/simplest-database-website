<!DOCTYPE html>
<html lang="de">
<head>
    <title>Anmeldeseite</title>

    </body>
</html>

<form action="anmeldeseite.php" method="get">

<p>Nutzername:
    <input type="text" name="nutzername">
    </p>
<p>Passwort:
    <input type="text" name="passwort">
    </p>
<p>
<input type="submit" value="absenden">
</p>

</form>

<?php
//Später folgende Zeile Löschen
//echo "<body style=\"background-color: #55555A; \">"; 

$nachricht = $_GET['nachricht'];
echo $nachricht;
?>