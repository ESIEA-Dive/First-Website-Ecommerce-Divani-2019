<div id="bodyright">
    <h3>Categories</h3>
    <form method="post" enctype="multiple/form-data">
        <table cellspacing="0">
            <tr>
                <th>Sr No.</th>
                <th>Category Name</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
            <?php 
                    include("inc/function.php");
                    echo veiewall_category(); 
            ?>
        </table>
    </form>    
    <h3 id="add_cat">Add New Category</h3>
    <form method="post">
        <table>
            <tr>
                <td>Enter Category Name :</td>
                <td><input type="text" name="cat_name"/></td>
            </tr>
        </table>
        <center><button name="add_cat">Add Category</button></center>
    </form>    
</div>

<?php   
     echo add_cat();    
?>