<?php session_start(); 
    if(!isset($_SESSION['a_email'])){
        header("Location:login.php");	
    }
?>
<div class='flip-scale-up-hor' id="header">
    <h1><b class='slide-in-blurred-tl'>Divani <span> Games </span></b><label><a class="slide-in-blurred-tr" href="logout.php"><i class="fas fa-sign-out-alt"></i></a></label></h1>
</div>