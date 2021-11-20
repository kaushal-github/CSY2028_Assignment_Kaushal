<?php
$server = 'localhost';
$db_username = 'root';
$db_password = '';

$schema ='csy2028mydatabase';

$pdo = new PDO('mysql:dbname='.$schema.';host='.$server , $db_username, $db_password, [ PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION ]) ;
?>