<?php
include 'db_handler.php';


$debug = true;
$db_handler = new db_handler();
$db_handler->dsn = "mysql:dbname=php_metrics;host=localhost";
$db_handler->username = 'root';
$db_handler->password = '';

//Code that will display metrics from our database

?>