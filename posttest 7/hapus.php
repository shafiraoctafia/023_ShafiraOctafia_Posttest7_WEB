<?php
    require 'config.php';
    if(isset($_GET['id'])){
        $id = $_GET['id'];
    }
    $result = mysqli_query($db, 
    "DELETE FROM visitors WHERE id='$id'");

    if($result){
        header("location:hasilform.php");
    }

?>