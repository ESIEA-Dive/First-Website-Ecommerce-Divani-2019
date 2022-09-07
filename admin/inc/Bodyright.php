<?php 
if(!isset($_GET['viewall_cat'])){ 
    if(!isset($_GET['viewall_sub_cat'])){
        if(!isset($_GET['add_products'])){
            if(!isset($_GET['viewall_products'])){
                if(!isset($_GET['out_stock'])){
                    if(!isset($_GET['wish'])){
                        if(!isset($_GET['complete_order'])){
                            if(!isset($_GET['pending_order'])){
                                if(!isset($_GET['cancel_order'])){
                                    if(!isset($_GET['customer'])){
                                        if(!isset($_GET['slider'])){
    ?>

<div id="bodyright">
        <?php if(isset($_GET['edit_cat'])){
                include("edit_cat.php");
                }
                if(isset($_GET['edit_sub_cat'])){
                 include("edit_sub_cat.php");  
                }
                if(isset($_GET['edit_pro'])){
                 include("edit_pro.php"); 
                }else{
                    include("inc/function.php");
                    echo overview();	
                }                 
        ?>    
                  
</div>
<?php } } } } } } } } } } }?>
