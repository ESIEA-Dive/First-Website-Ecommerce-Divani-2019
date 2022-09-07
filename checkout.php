<html>
	<head>
    	<title>Divani Games</title>
        <link rel="stylesheet" href="css/Style1.css" />
    </head>
    
    <body>
    	<?php
			include("inc/function.php"); 
			include("inc/header.php"); 
			include("inc/navbar.php");
			$u_email=$_SESSION['u_email'];
			if(!isset($_SESSION['u_email'])){
				echo"<script>window.open('index.php','_self');</script>";	
			}
		?>
        <div id='checkout_user'>
        	<h4>Loggin Id is : <?php echo $u_email; ?></h4>
            <h2>Delivery Address</h2>
            <div id='checkout_user_left'>
            	<?php echo checkout_user_address(); ?>
            </div>
            <div id='checkout_user_right'>
            	<?php echo up_user_checkout(); ?>
            </div><br clear="all" />
            <h2>Order Summary</h2>
            <div class="cart">
            	<form method="post" enctype="multipart/form-data"> 
            	<?php echo single_pro(); ?>
                </form>
        </div><br clear="all" />
        <?php
			include("inc/footer.php");	 
		?>
    </body>