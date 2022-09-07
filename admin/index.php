<html>
    <head>
        <title>Admin Panel</title>
        <link rel="stylesheet" href="css/Style.css"/>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css" integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk" crossorigin="anonymous">
        <script src="../js/jquery.js"></script>
        <script>
			$(document).ready(function(){
                $('#bodyright table tr:even').css("background","#e4e4e4");
            });
        </script>
    </head>
        
    <body>
        <?php include("inc/header.php");         
        include("inc/bodyleft.php");
        include("inc/bodyright.php");
  ?> 
    </body>
</html>