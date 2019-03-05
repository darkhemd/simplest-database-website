<!DOCTYPE html>
<html lang="de">
<head>
<title>SpielekonsolenDB</title>
   
    <?php
    
    require 'db.php';
    echo "<p align=\"center\">SpielekonsolenDB</p>";

    $eingabe = $_GET['konsolenname'];

    echo "<h1>Programm Konsole</h1>";
    $erg = $db->query("SELECT * FROM Konsole
    WHERE Name LIKE '%".$eingabe."%'");

echo "<table border='1'>
<tr>
<th>Name</th>
<th>Preis</th>
<th>Marke</th>
<th>Unterstzützte Medien</th>
<th>Hardware Architektur</th>
<th>Auflösung</th>
<th>Erscheinungsjahr</th>
<th>Vorgänger</th>
<th>Nachfolger</th>
<th>Farbe</th>
</tr>";

while($row = mysqli_fetch_array($erg))
{
echo "<tr>";
echo "<td>" . $row['Name'] . "</td>";
echo "<td>" . $row['Preis'] . "</td>";
echo "<td>" . $row['Marke'] . "</td>";
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