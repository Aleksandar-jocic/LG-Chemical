<!-- Modal delete main-->
<div class="modal fade" id="modalMain" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  	<div class="modal-dialog modal-dialog-centered" role="document">
    	<div class="modal-content">
     		<div class="modal-header">
       			<h5 class="modal-title" id="exampleModalLongTitle">Delete Entry</h5>
        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
          			<span aria-hidden="true">&times;</span>
        		</button>
      		</div>
      		<div class="modal-body">
        		Are you sure you want to delete this main branch?
      		</div>
      		<div class="modal-footer">
        		<button type="button" class="btn btn-secondary" data-dismiss="modal">No</button>
        		<button type="button" class="btn btn-primary deleteMainConfirm" data-dismiss="modal">Delete</button>
      		</div>
    	</div>
  	</div>
</div>
	<!-- Modal delete sub -->
<div class="modal fade" id="modalSub" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  	<div class="modal-dialog modal-dialog-centered" role="document">
    	<div class="modal-content">
     		<div class="modal-header">
       			<h5 class="modal-title" id="exampleModalLongTitle">Delete Entry</h5>
        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
          			<span aria-hidden="true">&times;</span>
        		</button>
      		</div>
      		<div class="modal-body">
        		Are you sure you want to delete this sub branch?
      		</div>
      		<div class="modal-footer">
        		<button type="button" class="btn btn-secondary" data-dismiss="modal">No</button>
        		<button type="button" class="btn btn-primary deleteSubConfirm" data-dismiss="modal">Delete</button>
      		</div>
    	</div>
  	</div>
</div>
	<!-- Modal delete product -->
<div class="modal fade" id="modalProduct" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  	<div class="modal-dialog modal-dialog-centered" role="document">
    	<div class="modal-content">
     		<div class="modal-header">
       			<h5 class="modal-title" id="exampleModalLongTitle">Delete Entry</h5>
        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
          			<span aria-hidden="true">&times;</span>
        		</button>
      		</div>
      		<div class="modal-body">
        		Are you sure you want to delete this product?
      		</div>
      		<div class="modal-footer">
        		<button type="button" class="btn btn-secondary" data-dismiss="modal">No</button>
        		<button type="button" class="btn btn-primary deleteProductConfirm" data-dismiss="modal">Delete</button>
      		</div>
    	</div>
  	</div>
</div>
	<!-- Edit Modal main-->
<div class="modal fade" id="modalMainEdit" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  	<div class="modal-dialog modal-dialog-centered" role="document">
    	<div class="modal-content">
     		<div class="modal-header">
       			<h5 class="modal-title" id="exampleModalLongTitle">Edit Entry</h5>
        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
          			<span aria-hidden="true">&times;</span>
        		</button>
      		</div>
      		<div class="modal-body">
				<form method="post" action="adminFunctions.php">
			  
					<label for="main_name">main_name: </label>
					<input id="main_name" type="text"><br>

					<label for="main_picture">main_picture: </label>
					<input id="main_picture" type="text"><br>

					<label for="main_index_picture">main_index_picture: </label>
					<input id="main_index_picture" type="text"><br>

					<label for="main_icon">main_icon: </label>
					<input id="main_icon" type="text">
				</form>
      		</div>
      		<div class="modal-footer">
        		<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
        		<button type="button" class="btn btn-primary editMainModal" data-dismiss="modal">Save changes</button>
      		</div>
    	</div>
  	</div>
</div>
	<!-- Edit Modal sub-->
	<div class="modal fade" id="modalSubEdit" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  	<div class="modal-dialog modal-dialog-centered" role="document">
    	<div class="modal-content">
     		<div class="modal-header">
       			<h5 class="modal-title" id="exampleModalLongTitle">Edit Entry</h5>
        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
          			<span aria-hidden="true">&times;</span>
        		</button>
      		</div>
      		<div class="modal-body">
				<form method="post" action="adminFunctions.php">
					
					<label for="main_id">belongs to main_id: </label>
					<input id="main_id" type="number"><br>
					
					<label for="sub_name">sub_name: </label>
					<input id="sub_name" type="text"><br>

				</form>
      		</div>
      		<div class="modal-footer">
        		<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
        		<button type="button" class="btn btn-primary editSubModal" data-dismiss="modal">Save changes</button>
      		</div>
    	</div>
  	</div>
</div>
	<!-- Edit Modal product-->
	<div class="modal fade" id="modalProductEdit" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  	<div class="modal-dialog modal-dialog-centered" role="document">
    	<div class="modal-content">
     		<div class="modal-header">
       			<h5 class="modal-title" id="exampleModalLongTitle">Edit Entry</h5>
        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
          			<span aria-hidden="true">&times;</span>
        		</button>
      		</div>
      		<div class="modal-body">
				<form method="post" action="adminFunctions.php">
			  
					<label for="main_id_product">belongs to main_id: </label>
					<input id="main_id_product" type="number"><br>

					<label for="sub_id">belongs to sub_id: </label>
					<input id="sub_id" type="number"><br>

					<label for="product_name">product_name: </label>
					<input id="product_name" type="text"><br>

					<label for="product_picture">product_picture: </label>
					<input id="product_picture" type="text">

					<label for="product_description">product_description: </label>
					<input id="product_description" type="text">
				</form>
      		</div>
      		<div class="modal-footer">
        		<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
        		<button type="button" class="btn btn-primary editProductModal" data-dismiss="modal">Save changes</button>
      		</div>
    	</div>
  	</div>
</div>

	<!-- add Modal main-->
<div class="modal fade" id="modalAddMain" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  	<div class="modal-dialog modal-dialog-centered" role="document">
    	<div class="modal-content">
     		<div class="modal-header">
       			<h5 class="modal-title" id="exampleModalLongTitle">Add branch</h5>
        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
          			<span aria-hidden="true">&times;</span>
        		</button>
      		</div>
      		<div class="modal-body">
				<form method="post" action="adminFunctions.php">
					
					<label for="add_main_name">main_name: </label>
                    <input id="add_main_name" type="text"><br>

                    <label for="add_main_picture">main_picture: </label>
                    <input id="add_main_picture" type="text"><br>

                    <label for="add_main_index_picture">main_index_picture: </label>
                    <input id="add_main_index_picture" type="text"><br>

                    <label for="add_main_icon">main_icon: </label>
                    <input id="add_main_icon" type="text"><br>
                   
				</form>
      		</div>
      		<div class="modal-footer">
        		<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
        		<button type="button" class="btn btn-primary addMainEntry" data-dismiss="modal">Save changes</button>
      		</div>
    	</div>
  	</div>
</div>