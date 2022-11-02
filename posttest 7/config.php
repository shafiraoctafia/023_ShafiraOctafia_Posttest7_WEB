<?php

$server = "localhost";
$username = "root";
$password = "";
$db_name = "Dfood";

$db = mysqli_connect($server, $username, $password, $db_name);

if(!$db){
    die("Gagal Terhubung!!!");
}