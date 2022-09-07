<div id="bodyright">
	<h3>Customers</h3>
    <form id='search' method="post">
    	<input type="text" name="u_query" placeholder="Enter Customer Name" />
        <button name='u_search'><i class="fas fa-search"></i></button>
    </form>
    <div class="scroll">
	<form method="post" enctype="multipart/form-data">
    	<table cellspacing="0">
        	<tr>
            	<th>Sr No.</th>
                <th>Name</th>
                <th>Email</th>
                <th>Password</th>
                <th>Address</th>
                <th>Pincode</th>
                <th>DOB</th>
                <th>Phone No.</th>
                <th>Image</th>
                <th>Country</th>
                <th>State</th>
                <th>Reg Date</th>
            </tr>
            <?php include("inc/function.php"); echo viewall_cust(); ?>
        </table>
    </form>
    </div>
</div>