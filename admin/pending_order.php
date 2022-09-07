<div id="bodyright">
	<h3>Pending Orders</h3>
    <div class="scroll">
	<form method="post" enctype="multipart/form-data">
    	<table cellspacing="0">
        	<tr>
            	<th>Sr No.</th>
                <th>Customer Email</th>
                <th>Image</th>
                <th>Product Name</th>
                <th>Quantity</th>
                <th>Invoice No.</th>
                <th>Price $</th>
                <th>Order Date</th>
                <th>Confirm Order</th>
            </tr>
            <?php include("inc/function.php"); echo pending_order(); ?>
        </table>
    </form>
</div>
</div>