<html>
	<head>
    	<title>Divani Games</title>
        <link rel="stylesheet" href="css/Style1.css" />
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css" integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk" crossorigin="anonymous">
    </head>
    
    <body>
    	<?php
			include("inc/function.php"); 
			include("inc/header.php"); 
			include("inc/navbar.php");
		?>
        <div class="cart">
        	<form method="post" enctype="multipart/form-data">
            	<?php echo cart_display(); ?>
            </form>
        </div>
    </body>
</html>