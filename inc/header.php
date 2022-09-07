<?php session_start(); ?>
<div id="header">
            <div class='slide-in-blurred-tl' id="logo">
                <a href="index.php"><img class='blink-1' src="imgs/logo.png"/><a>
            </div>

            <div id="link">
                <ul>
                    <?php if(!isset($_SESSION['u_email'])){ ?>
                    
                    <li><a href="#"><i class="fa fa-user-plus"></i> Signup</a>
                <form method="post" enctype="multipart/form-data">
                    <table>
                        <tr>
                            <td>Enter Your Name</td>
                            <td><input type="text" name="u_name" required="required" pattern="[a-z A-Z]{2,30}" maxlength="30" minlength='2'/></td>
                        </tr>
                        <tr>
                            <td>Enter Your Email</td>
                            <td><input type="email" name="u_email"  required="required" pattern="[a-z A-Z 0-9 ^@._-]{5,50}" maxlength="50" minlength='5'/></td>
                        </tr>
                        <tr>
                            <td>Upload Your Picture</td>
                            <td><input type="file" name="u_img" accept="image/jpeg" /></td>
                        </tr>
                        <tr>
                            <td>Enter Your Address</td>
                            <td><textarea name='u_add' required="required" pattern="[a-z A-Z 0-9 ^/-.]{10,100}" maxlength="100" minlength='10'></textarea></td>
                        </tr>
                        <tr>
                            <td>Enter Your Country</td>
                            <td><input type="text" name="u_country" required="required" /></td>
                        </tr>
                        <tr>
                            <td>Enter Your Region</td>
                            <td><input type="text" name="u_state" required="required" /></td>
                        </tr>
                        <tr>
                            <td>Enter Your Pincode</td>
                            <td><input type="tel" name="u_pin"><input type="tel" name="u_pin" required="required" pattern="[0-9]{6}" maxlength="6" minlength='3'/></td>
                        </tr>
                        <tr>
                            <td>Enter Your DOB</td>
                            <td><input type="date" name="u_date" required="required"/></td>
                        </tr>
                        <tr>
                            <td>Enter Your Phone No.</td>
                            <td><input type="tel" name="u_phone" required="required" pattern="[0-9 ^+]{10,13}" maxlength="13" minlength='10'/></td>
                        </tr>
                    </table>
                    <center>
                        <input id="btn" type="submit" name="u_signup" Value='SignUp' />
                        <input id="btn" type="reset" name="reset" Value='Reset' />
                    </center>
                </form>
            </li>
            <li><a href="#"><i class="fa fa-user"></i> Login</a>
                    <form method="post" id='login'>
                    <table>
                        <tr>
                            <td>Enter Your Email</td>
                            <td><input type="email" name="login_email" required="required" pattern="[a-z A-Z 0-9 ^@._-]{5,50}" maxlength="50" minlength='5' /></td>
                        </tr>
                        <tr>
                            <td>Enter Your Password</td>
                            <td><input type="password" name="login_pass" required="required" maxlength="20" minlength='8' /></td>
                        </tr>
                    </table>
                    <center>
                        <input id="btn" type="submit" name="login_btn" value='Login' />
                        <input id="btn" type="button" name="for_pass" value="Forget Password ?" />     
                   </center>
                </form>
                    </li>
                <?php echo login(); }else{ ?>
            <li><a href='#'><i class="fas fa-user-circle"></i> Account</a>
                <ul>
                    <li><a href='user_pro.php'><i class="fas fa-user-circle"></i> My Account</a></li>
                    <li><a href='user_pro.php?myorder'><i class="fas fa-receipt"></i> My Orders</a></li>
                    <li><a href='user_pro.php?mycart'><i class="fa fa-shopping-cart"></i> My Shopping Cart <span style="margin-left: 8%"><?php echo cart_caount(); ?></span></a></li>
                    <li><a href='user_pro.php?mywishlist'><i class="fas fa-heart"></i> Wish List</a></li>
                    <li><a href='user_pro.php?mypass'><i class="fas fa-key"></i> Change Password</a></li>
                    <li><a href='logout.php'><i class="fas fa-sign-out-alt"></i> Logout</a></li>
                </ul>
            </li>
            <?php } ?>
                </ul>
        </div>
        <div id="search">
            <form method="get" action='search.php' enctype="multipart/form-data">
                <input type="text" name='user_query' placeholder="Search Here">
                <button name='search' id="search_btn"><i class="fa fa-search"></i></button>
                <button id="cart_btn"><a href='cart.php'><i class="fa fa-shopping-cart"></i>    <?php echo cart_caount(); ?> </a></button>
            </form>
        </div>