<?php

error_reporting(0);
$db = new mysqli('localhost','root', '',  'test1'); 
$db->set_charset('utf8');

print_r ($db->connect_error);
if ($db->connect_error) {
    die('Sorry - gerade gibt es ein Problem');
}

?>