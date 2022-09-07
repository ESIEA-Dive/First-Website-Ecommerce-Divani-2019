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
        <div id='user_left'>
            <?php
            	if(isset($_GET['mycart'])){
					echo"<h3>My Cart</h3>
							<form class='mycart' method='post' enctype='multipart/form-data'>
									";echo cart_display();
								echo"
                                </form><br clear='all' />";
                }
                else if(isset($_GET['mywishlist'])){
                    echo"<h3>My Wishlist</h3>
                        <form class='mycart' method='post' enctype='multipart/form-data'>
                            ";echo wish_display();
                            echo"</table>
                        </form><br clear='all' />";
                }
                else if(isset($_GET['mypass'])){
                    echo"<h3>Update Password</h3>";
                    echo up_pass();
                }
                else if(isset($_GET['myorder'])){
                    echo"<h3>My Orders</h3>
                    <form class='myorder' method='post' enctype='multipart/form-data'>
                        ";echo user_order();
                        echo"</table>
                    </form><br clear='all' />";	
				}else{ 
			?>
            <h3>My Account</h3>
            <?php echo user_pro(); }?>
        </div>

        <div id='user_right'>
        	<h3>Welcome</h3>
            <?php echo get_u_img(); ?>
            <ul>
            	<li><a href="user_pro.php"><i class="fas fa-user-circle"></i> My Account</a></li>
                <li><a href="user_pro.php?myorder"><i class="fas fa-receipt"></i> My Order</a></li>
                <li><a href="user_pro.php?mycart"><i class="fa fa-shopping-cart"></i> Cart</a></li>
                <li><a href="user_pro.php?mywishlist"><i class="fas fa-heart"></i> My Wishlist</a></li>
                <li><a href="user_pro.php?mypass"><i class="fas fa-key"></i> Change Password</a></li>
            </ul>
        </div><br clear="all" />
        <?php
			include("inc/footer.php"); 
		?>
    </body>
</html>