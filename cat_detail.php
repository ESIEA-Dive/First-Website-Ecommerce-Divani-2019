<htlm>
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
			echo "<div id='bodyleft'><ul>"; echo add_cart(); cat_detail(); sub_cat_detail(); echo"</ul></div>";
			if(isset($_GET['cat_id']) or isset($_GET['sub_cat_id'])){
				echo "<div class='bodyright' id='bodyright'>
						<ul>"; viewall_sub_cat(); viewall_cat(); echo"</ul>
					</div><br clear='all' />";
			}
			else{
				include("inc/bodyright.php");	
			}
			include("inc/footer.php"); 
		?>
    </body>
</html>