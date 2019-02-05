<!-- Modal delete main-->
<div class="modal fade deleteGeneric" id="modalMain" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  	<div class="modal-dialog modal-dialog-centered" role="document">
    	<div class="modal-content">
     		<div class="modal-header">
       			<h5 class="modal-title" id="exampleModalLongTitle">Delete Entry</h5>
				   <i class="fas fa-times" class="close" data-dismiss="modal" aria-label="Close"></i>
        		</button>
      		</div>
      		<div class="modal-body">
        		Are you sure you want to delete this main branch?
      		</div>
      		<div class="modal-footer">
        		<button type="button" class="btn btn-secondary" data-dismiss="modal">No</button>
        		<button type="button" class="btn btn-primary btn-lg-con deleteMainConfirm" data-dismiss="modal">Delete</button>
      		</div>
    	</div>
  	</div>
</div>
	<!-- Modal delete sub -->
<div class="modal fade deleteGeneric" id="modalSub" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  	<div class="modal-dialog modal-dialog-centered" role="document">
    	<div class="modal-content">
     		<div class="modal-header">
       			<h5 class="modal-title" id="exampleModalLongTitle">Delete Entry</h5>
				   <i class="fas fa-times" class="close" data-dismiss="modal" aria-label="Close"></i>
        		</button>
      		</div>
      		<div class="modal-body">
        		Are you sure you want to delete this sub branch?
      		</div>
      		<div class="modal-footer">
        		<button type="button" class="btn btn-secondary" data-dismiss="modal">No</button>
        		<button type="button" class="btn btn-primary btn-lg-con deleteSubConfirm" data-dismiss="modal">Delete</button>
      		</div>
    	</div>
  	</div>
</div>
	<!-- Modal delete product -->
<div class="modal fade deleteGeneric" id="modalProduct" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  	<div class="modal-dialog modal-dialog-centered" role="document">
    	<div class="modal-content">
     		<div class="modal-header">
       			<h5 class="modal-title" id="exampleModalLongTitle">Delete Entry</h5>
				   <i class="fas fa-times" class="close" data-dismiss="modal" aria-label="Close"></i>
        		</button>
      		</div>
      		<div class="modal-body">
        		Are you sure you want to delete this product?
      		</div>
      		<div class="modal-footer">
        		<button type="button" class="btn btn-secondary" data-dismiss="modal">No</button>
        		<button type="button" class="btn btn-primary btn-lg-con deleteProductConfirm" data-dismiss="modal">Delete</button>
      		</div>
    	</div>
  	</div>
</div>

	<!-- Edit Modal main-->
<div class="modal fade editGeneric" id="modalMainEdit" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  	<div class="modal-dialog modal-dialog-centered" role="document">
    	<div class="modal-content">
     		<div class="modal-header">
				   <h5 class="modal-title" id="exampleModalLongTitle">Edit Entry</h5>
				   <i class="fas fa-times" class="close" data-dismiss="modal" aria-label="Close"></i>
        		</button>
      		</div>
			
			<form id="editMainDataForm" method="post" action="adminFunctions.php" enctype="multipart/form-data" class="editModalGeneral">
			  
				<div class="modal-body">
					<div class="labelGeneral">
						<label for="main_name">main_name: </label>
						<label for="main_picture">main_picture: </label>
						<label for="main_index_picture">main_index_picture: </label>
						<label for="main_icon">main_icon: </label>
					</div>
					<div class="inputGeneral">
						<input id="main_name" type="text">
						<div>

							<input class="uploadFileInput" id="main_picture" type="text">
							<label for="pictureToUpload">Upload</label>

								<input class="noneTypeInput" type="file" name="pictureToUpload" id="pictureToUpload">

						</div>
						<div>
							<input class="uploadFileInput" id="main_index_picture" type="text">
							<label for="indexToUpload">Upload</label>

								<input class="noneTypeInput" type="file" name="indexToUpload" id="indexToUpload">
						</div>
						<div>
							<input class="uploadFileInput" id="main_icon" type="text">
							<label for="iconToUpload">Upload</label>

								<input class="noneTypeInput" type="file" name="iconToUpload" id="iconToUpload">
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>

					<input type="submit" class="btn btn-primary btn-lg-con editMainModal" value="Save changes" name="mainPictureUpload">
					
				</div>
			
			</form>
			
    	</div>
  	</div>
</div>

	<!-- Edit Modal sub-->
	<div class="modal fade editGeneric" id="modalSubEdit" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  	<div class="modal-dialog modal-dialog-centered" role="document">
    	<div class="modal-content">
     		<div class="modal-header">
       			<h5 class="modal-title" id="exampleModalLongTitle">Edit Entry</h5>
				   <i class="fas fa-times" class="close" data-dismiss="modal" aria-label="Close"></i>
        		</button>
			  </div>
			<div class="editModalGeneral">
      		<div class="modal-body">
			  	<div class="labelGeneral">
					<label for="sub_name">sub_name: </label>
					<label for="main_id">on main branch: </label>
			  	</div>	
				<div class="inputGeneral">
					
					<input id="sub_name" type="text">
					<input id="main_id" type="number">

				</div>
			</div>
      		</div>
      		<div class="modal-footer">
        		<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
        		<button type="button" class="btn btn-primary btn-lg-con editSubModal" data-dismiss="modal">Save changes</button>
      		</div>
    	</div>
  	</div>
</div>
	<!-- Edit Modal product-->
	<div class="modal fade editGeneric" id="modalProductEdit" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  	<div class="modal-dialog modal-dialog-centered" role="document">
    	<div class="modal-content">
     		<div class="modal-header">
       			<h5 class="modal-title" id="exampleModalLongTitle">Edit Entry</h5>
				   <i class="fas fa-times" class="close" data-dismiss="modal" aria-label="Close"></i>
        		</button>
			</div>
			  
			<form id="productDataForm" method="post" action="adminFunctions.php" enctype="multipart/form-data" class="editModalGeneral">
      		<div class="modal-body">
			  	<div class="labelGeneral">
				  <label for="main_id_product">on main branch: </label>
				  <label for="sub_id">on sub branch: </label>
				  <label for="product_name">product_name: </label>
				  <label for="product_picture">product_picture: </label>
				  <label for="product_description">product_description: </label>
				</div>
				<div class="inputGeneral">
					<input id="main_id_product" type="number">
					<input id="sub_id" type="number">
					<input id="product_name" type="text">
					<div>
						<input class="uploadFileInput" id="product_picture" type="text">
						<label for="productPictureToUpload">Upload</label>

							<input class="noneTypeInput" type="file" name="productPictureToUpload" id="productPictureToUpload">
					</div>
					<input id="product_description" type="text">
				</div>
					
      		</div>
      		<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
				<input type="submit" class="btn btn-primary btn-lg-con editProductModal" value="Save changes">
        		
			</div>
		</form>
    	</div>
  	</div>
</div>

	<!-- add Modal main-->
<div class="modal fade editGeneric" id="modalAddMain" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  	<div class="modal-dialog modal-dialog-centered" role="document">
    	<div class="modal-content">
     		<div class="modal-header">
       			<h5 class="modal-title" id="exampleModalLongTitle">Add branch</h5>
				   <i class="fas fa-times" class="close" data-dismiss="modal" aria-label="Close"></i>
        		</button>
			  </div>
			
		<form id="addMainDataForm" method="post" action="adminFunctions.php" enctype="multipart/form-data" class="editModalGeneral">

      		<div class="modal-body">
			  	<div class="labelGeneral">
					<label for="add_main_name">main_name: </label>
					<label for="add_main_picture">main_picture: </label>
					<label for="add_main_index_picture">main_index_picture: </label>
					<label for="add_main_icon">main_icon: </label>
				</div>
				<div class="inputGeneral">
					
                    <input id="add_main_name" type="text"><br>
					<div>
						<input class="uploadFileInput" id="add_main_picture" type="text">
						<label for="newPictureToUpload">Upload</label>

							<input class="noneTypeInput" type="file" name="newPictureToUpload" id="newPictureToUpload">

					</div>

					<div>
						<input class="uploadFileInput" id="add_main_index_picture" type="text">
						<label for="newIndexToUpload">Upload</label>

							<input class="noneTypeInput" type="file" name="newIndexToUpload" id="newIndexToUpload">
					</div>

					<div>
						<input class="uploadFileInput" id="add_main_icon" type="text">
						<label for="newIconToUpload">Upload</label>

							<input class="noneTypeInput" type="file" name="newIconToUpload" id="newIconToUpload">
					</div>
				  </div>
      			</div>
				
      		<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
				<input type="submit" class="btn btn-primary btn-lg-con addMainEntry" value="Save changes" name="mainPictureUpload">
			  </div>
		</form>
    	</div>
  	</div>
</div>
	<!-- add Modal sub-->
<div class="modal fade editGeneric" id="modalAddSub" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  	<div class="modal-dialog modal-dialog-centered" role="document">
    	<div class="modal-content">
     		<div class="modal-header">
       			<h5 class="modal-title" id="exampleModalLongTitle">Add sub branch</h5>
				   <i class="fas fa-times" class="close" data-dismiss="modal" aria-label="Close"></i>
        		</button>
			  </div>
			  <div class="editModalGeneral">
      		<div class="modal-body subEditModal">
			  	<div class="labelGeneral">
					<label for="add_sub_name">sub_name: </label>
					<label for="add_sub_to_main">on main branch: </label>
				</div>	
				<div class="inputGeneral">
					<input id="add_sub_name" type="text">
					<input id="add_sub_to_main" type="number">
				</div>
			  </div>
			  </div>
      		<div class="modal-footer">
        		<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
        		<button type="button" class="btn btn-primary btn-lg-con addSubEntry" data-dismiss="modal">Save changes</button>
      		</div>
    	</div>
  	</div>
</div>
	<!-- add Modal product-->
<div class="modal fade editGeneric" id="modalAddProduct" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  	<div class="modal-dialog modal-dialog-centered" role="document">
    	<div class="modal-content">
     		<div class="modal-header">
       			<h5 class="modal-title" id="exampleModalLongTitle">Add product</h5>
				   <i class="fas fa-times" class="close" data-dismiss="modal" aria-label="Close"></i>
        		</button>
			  </div>
			<form id="addProductDataForm" method="post" action="adminFunctions.php" enctype="multipart/form-data" class="editModalGeneral">
			  
      		<div class="modal-body">
			  <div class="labelGeneral">
			  <label for="add_product_to_main">on main branch:</label>
			  <label for="add_product_to_sub">on sub branch:</label>
			  <label for="add_product_name">product_name: </label>
			  <label for="add_product_picture">product_picture: </label>
			  <label for="add_product_description">product_description: </label>

      		</div>
				<div class="inputGeneral">
					
                    <input id="add_product_to_main" type="text">
                    <input id="add_product_to_sub" type="text">
                    <input id="add_product_name" type="text">
					<div>
						<input class="uploadFileInput" id="add_product_picture" type="text">
						<label for="newProductPictureToUpload">Upload</label>

							<input class="noneTypeInput" type="file" name="newProductPictureToUpload" id="newProductPictureToUpload">
					</div>
                    <input id="add_product_description" type="text">
      		</div>
                   
      		</div>
      		<div class="modal-footer">
        		<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
        		<button type="button" class="btn btn-primary btn-lg-con addProductEntry" data-dismiss="modal">Save changes</button>
			  </div>
		</form>
    	</div>
  	</div>
</div>