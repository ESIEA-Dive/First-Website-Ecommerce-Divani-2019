<?php
	session_start();
	include("inc/function.php");
	echo login();
?>
<html>
	<head>
    	<title>Admin Panel</title>
        <link rel="stylesheet" href="css/Style.css" />
        <script src="../js/jquery.js"></script>
        <script>
			$(document).ready(function(){
                $('#bodyright table tr:even').css("background","#e4e4e4");
            });
        </script>
    </head>
    
    <body style="background:#fff; padding:0% 1% 1% 1%">
    	<div id='login'>
        	<h3>Admin Login</h3>
        	<form method="post">
            	<table>
                	<tr>
                    	<td>Enter Admin Name</td>
                        <td><input type="text" name="a_name" required pattern="[a-z A-Z]{2,20}" maxlength="20" minlength="2" /></td>
                    </tr>
                    <tr>
                    	<td>Enter Admin Email</td>
                        <td><input type="email" name="a_email" required pattern="[a-z A-Z 0-9 ^@.-_]{5,50}" maxlength="50" minlength="5" /></td>
                    </tr>
                    <tr>
                    	<td>Enter Admin Password</td>
                        <td><input type="password" name="a_pass" required maxlength="20" minlength="8" /></td>
                    </tr>
                </table>
                <center><button id='login_btn' name="login">Login</button></center>
            </form>
        </div>
    </body>
</html>