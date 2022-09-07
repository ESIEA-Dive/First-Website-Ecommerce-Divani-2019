<htlm>
    <head>
        <title>Divani Games</title>
        <link rel="stylesheet" href="css/Style1.css"/>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css" integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk" crossorigin="anonymous">
        <script src="js/jquery.js"></script>
        <script src="js/cycle.js"></script>
        <script>
        	$('#slide').cycle('all');
        </script>
    </head>    

    <body>
     <?php 
            include("inc/function.php");
            include("inc/header.php"); 
            include("inc/navbar.php");
            include("inc/bodyleft.php");
            include("inc/bodyright.php");
            include("inc/footer.php");
            echo add_cart();
            echo u_signup();
            echo add_whilist();
     ?> 
    </body>
</html>