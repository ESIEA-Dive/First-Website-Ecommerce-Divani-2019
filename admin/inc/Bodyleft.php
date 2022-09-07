<div id="bodyleft">
    <h3>Content Management</h3>

    <ul>
        <li><a href="index.php">Home</a></li>
        <h3>Categories Management</h3>
        <li><a href="index.php?viewall_cat">Categories</a></li>
        <li><a href="index.php?viewall_sub_cat">Sub Categories</a></li>
        <h3>Product Management</h3>
        <li><a href="index.php?add_products">Add Products</a></li>
        <li><a href="index.php?viewall_products">Products</a></li>
        <li><a href="index.php?wish">WishList Products</a></li>
        <li><a href="index.php?out_stock">Out Of Stock Products</a></li>
        <h3>Order Management</h3>
        <li><a href="index.php?complete_order">Completed Orders</a></li>
    	<li><a href="index.php?pending_order">Pending Orders</a></li>
    	<li><a href="index.php?cancel_order">Cancelled Orders</a></li>
        <h3>Other Management</h3>
        <li><a href="index.php?customer">Customers</a></li>
        <li><a href="index.php?slider">Edit Image Slider</a></li>
    </ul>

</div>

<?php
    if(isset($_GET['slider'])){
        include("slider.php");	
    }
    if(isset($_GET['customer'])){
		include("customer.php");	
	}
    if(isset($_GET['cancel_order'])){
		include("cancel_order.php");	
	}
	if(isset($_GET['pending_order'])){
		include("pending_order.php");	
	}
	if(isset($_GET['complete_order'])){
		include("complete_order.php");	
	}
    if(isset($_GET['out_stock'])){
        include("out_stock.php");	
    }
    if(isset($_GET['wish'])){
        include("wish.php");	
    }
    if(isset($_GET['viewall_cat'])){
            include("cat.php");
    }
    if(isset($_GET['viewall_sub_cat'])){
        include("sub_cat.php");
    }
    if(isset($_GET['add_products'])){
        include("add_products.php");
    }
        if(isset($_GET['viewall_products'])){
        include("viewall_products.php");
    }
    
?>