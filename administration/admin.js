$(document).ready(function () {

  //*************          DELETE MAIN ENTRY         *************//
  $('.deleteMain').click(function () {

    var id = $(this).attr('rel');
    $('.deleteMainConfirm').attr('rel', id);

    console.log($('.deleteMainConfirm').attr('rel', id));
    console.log($(id));
  });
  $('.deleteMainConfirm').click(function () {

    // Delete id
    var deleteId = $(this).attr('rel');
    console.log(deleteId);

    // AJAX Request
    $.ajax({
      url: './adminFunctions.php',
      type: 'POST',
      data: 'deleteMain=' + deleteId,
      success: function (response) {

        if (response == 1) {
          // Remove row from HTML Table
          var elementToDelete = $('#delete_' + deleteId);
          $(elementToDelete).parent().fadeOut(800, function () {
            $(this).remove();
          });
        } else {
          alert('Invalid ID.');
        }
      }
    });
  });
  //*************          DELETE SUB ENTRY         *************//

  $('.deleteSub').click(function () {

    var id = $(this).attr('rel');
    $('.deleteSubConfirm').attr('rel', id);

    console.log($('.deleteSubConfirm').attr('rel', id));
    console.log($(id));
  });
  $('.deleteSubConfirm').click(function () {

    // Delete id
    var deleteId = $(this).attr('rel');
    console.log(deleteId);
    var data = {
      deleteSub: deleteId
    }
    // AJAX Request
    $.ajax({
      url: './adminFunctions.php',
      type: 'POST',
      data: data,
      success: function (response) {

        if (response == 1) {
          // Remove row from HTML Table
          var elementToDelete = $('#deleteSub_' + deleteId);
          $(elementToDelete).parent().fadeOut(800, function () {
            $(this).remove();
          });
        } else {
          alert('Invalid ID.');
        }
      }
    });
  });
  //*************          DELETE PRODUCT ENTRY         *************//

  $('.deleteProduct').click(function () {

    var id = $(this).attr('rel');
    $('.deleteProductConfirm').attr('rel', id);

    console.log($('.deleteProductConfirm').attr('rel', id));
    console.log($(id));
  });
  $('.deleteProductConfirm').click(function () {

    // Delete id
    var deleteId = $(this).attr('rel');
    console.log(deleteId);

    // AJAX Request
    $.ajax({
      url: './adminFunctions.php',
      type: 'POST',
      data: 'deleteProduct=' + deleteId,
      success: function (response) {

        if (response == 1) {
          // Remove row from HTML Table
          var elementToDelete = $('#deleteProduct_' + deleteId);
          $(elementToDelete).parent().fadeOut(800, function () {
            $(this).remove();
          });
        } else {
          alert('Invalid ID.');
        }
      }
    });
  });

  //*************          EDIT MAIN ENTRY         *************//
  $('.editMain').click(function () {

    var id = $(this).attr('rel');
    $('.editMainModal').attr('rel', id);

    var main_name = $(this).parent().prev().prev().prev().prev()[0].innerText;
    var main_picture = $(this).parent().prev().prev().prev()[0].innerText;
    var main_index_picture = $(this).parent().prev().prev()[0].innerText;
    var main_icon = $(this).parent().prev()[0].innerText;

    $('#main_name').val(main_name);
    $('#main_picture').val(main_picture);
    $('#main_index_picture').val(main_index_picture);
    $('#main_icon').val(main_icon);

  });
  //          main picture upload         //
  $('#pictureToUpload').change(function() {

    var targetFile = $('#pictureToUpload');
    targetFile = targetFile.val().split("fakepath\\")[1];
    
    $('#main_picture').val(targetFile);
    
  });
  //          main index upload         //
  $('#indexToUpload').change(function() {

    var targetFile = $('#indexToUpload');
    targetFile = targetFile.val().split("fakepath\\")[1];
    
    $('#main_index_picture').val(targetFile);
    
  });
  //          main icon upload         //
  $('#iconToUpload').change(function() {

    var targetFile = $('#iconToUpload');
    targetFile = targetFile.val().split("fakepath\\")[1];
    
    $('#main_icon').val(targetFile);
    
  });

  $('#editMainDataForm').submit(function(e) {
    e.preventDefault();
    
    $('#modalMainEdit').modal('hide');

    var sameMainId = $('.editMainModal').attr('rel');
    console.log(sameMainId);

    var newMainName = $('#main_name').val();
    var newMainPicture = $('#main_picture').val();
    var newMainIndexPicture = $('#main_index_picture').val();
    var newMainIcon = $('#main_icon').val();

    var editRow = $('#edit_' + sameMainId);
    console.log(editRow);
    
    var formData = new FormData(this);
    formData.append('changeThisMainId', sameMainId);
    formData.append('newMainName', newMainName);
    formData.append('newMainPicture', newMainPicture);
    formData.append('newMainIndexPicture', newMainIndexPicture);
    formData.append('newMainIcon', newMainIcon);

    $.ajax({
      url: './adminFunctions.php',
      type: 'POST',
      data: formData,
      success: function (response) {
        if (response == 1) {

          editRow.prev()[0].innerText = newMainIcon;
          editRow.prev().prev()[0].innerText = newMainIndexPicture;
          editRow.prev().prev().prev()[0].innerText = newMainPicture;
          editRow.prev().prev().prev().prev()[0].innerText = newMainName;

          console.log('updated successfully');
        }
      },
      cache: false,
      contentType: false,
      processData: false
    });
  })
  
  //*************          EDIT SUB ENTRY         *************//

  $('.editSub').click(function () {

    var id = $(this).attr('rel');
    $('.editSubModal').attr('rel', id);

    var sub_name = $(this).parent().prev()[0].innerText;
    var main_id = $(this).parent().prev().prev().prev()[0].innerText;

    $('#main_id').val(main_id);
    $('#sub_name').val(sub_name);

  });
  $('.editSubModal').click(function () {

    var sameSubId = $(this).attr('rel');

    var newSubName = $('#sub_name').val();
    var newMainId = $('#main_id').val();

    var data = {
      changeThisSubId: sameSubId,
      subName: newSubName,
      mainId: newMainId,
    };

    var editRow = $('#editSub_' + sameSubId);
    console.log(editRow.prev()[0].innerText);

    $.ajax({

      url: './adminFunctions.php',
      type: 'POST',
      data: data,
      success: function (response) {
        if (response == 1) {

          editRow.prev()[0].innerText = newSubName;
          editRow.prev().prev().prev()[0].innerText = newMainId;

          console.log(editRow.prev()[0].innerText);
          console.log(editRow.prev().prev()[0].innerText);

        }
      }
    })
  })
  //*************          EDIT PRODUCT ENTRY         *************//
 
  $('.editProduct').click(function () {

    var id = $(this).attr('rel');
    $('.editProductModal').attr('rel', id);

    var main_id_product = $(this).parent().prev().prev().prev().prev().prev().prev()[0].innerText;
    var sub_id = $(this).parent().prev().prev().prev().prev().prev()[0].innerText;
    var product_name = $(this).parent().prev().prev().prev()[0].innerText;
    var product_picture = $(this).parent().prev().prev()[0].innerText;
    var product_description = $(this).parent().prev()[0].innerText;

    $('#main_id_product').val(main_id_product);
    $('#sub_id').val(sub_id);
    $('#product_name').val(product_name);
    $('#product_picture').val(product_picture);
    $('#product_description').val(product_description);

  });
  //          product picture upload         //
  $('#productPictureToUpload').change(function() {

    var targetFile = $('#productPictureToUpload');
    targetFile = targetFile.val().split("fakepath\\")[1];
    
    $('#product_picture').val(targetFile);
    
  });
  $('#productDataForm').submit(function (e) {
    e.preventDefault();

    $('#modalProductEdit').modal('hide');

    var sameProductId = $('.editProductModal').attr('rel');

    var mainProductId = $('#main_id_product').val();
    var subId = $('#sub_id').val();
    var productName = $('#product_name').val();
    var productPicture = $('#product_picture').val();
    var productDescription = $('#product_description').val();

    var formData = new FormData(this);
    formData.append('changeThisProductId', sameProductId);
    formData.append('mainProductId', mainProductId);
    formData.append('subId', subId);
    formData.append('productName', productName);
    formData.append('productPicture', productPicture);
    formData.append('productDescription', productDescription);

    var editRow = $('#editProduct_' + sameProductId);

    $.ajax({

      url: './adminFunctions.php',
      type: 'POST',
      data: formData,
      success: function (response) {
        if (response == 1) {

          editRow.prev()[0].innerText = productDescription;
          editRow.prev().prev()[0].innerText = productPicture;
          editRow.prev().prev().prev()[0].innerText = productName;
          editRow.prev().prev().prev().prev().prev()[0].innerText = subId;
          editRow.prev().prev().prev().prev().prev().prev()[0].innerText = mainProductId;

          console.log('updated successfully');
        }
      },
      cache: false,
      contentType: false,
      processData: false
    })
  });

  //*************          ADD MAIN ENTRY         *************//
  $('#newPictureToUpload').change(function() {

    var targetFile = $('#newPictureToUpload');
    targetFile = targetFile.val().split("fakepath\\")[1];
    
    $('#add_main_picture').val(targetFile);
    
  });
  //          main index upload         //
  $('#newIndexToUpload').change(function() {

    var targetFile = $('#newIndexToUpload');
    targetFile = targetFile.val().split("fakepath\\")[1];
    
    $('#add_main_index_picture').val(targetFile);
    
  });
  //          main icon upload         //
  $('#newIconToUpload').change(function() {

    var targetFile = $('#newIconToUpload');
    targetFile = targetFile.val().split("fakepath\\")[1];
    
    $('#add_main_icon').val(targetFile);
    
  });

  $('#addMainDataForm').submit(function(e) {
    e.preventDefault();

    $('#modalAddMain').modal('hide');
    
    var addMain = true;

    var mainName = $('#add_main_name').val();
    var mainPicture = $('#add_main_picture').val();
    var mainIndexPicture = $('#add_main_index_picture').val();
    var mainIcon = $('#add_main_icon').val();

    var formData = new FormData(this);
    formData.append('addMain', addMain);
    formData.append('mainName', mainName);
    formData.append('mainPicture', mainPicture);
    formData.append('mainIndexPicture', mainIndexPicture);
    formData.append('mainIcon', mainIcon);

    $.ajax({

      url: './adminFunctions.php',
      type: 'POST',
      data: formData,
      success: function (response) {

        if (response == 1) {
          // window.location.reload();
          console.log(response);
          
        }
      },
      cache: false,
      contentType: false,
      processData: false
    })
  })

  //*************          ADD SUB ENTRY         *************//
  $('.addSubEntry').click(function() {

    var addSub = true;

    var subName = $('#add_sub_name').val();
    var subBelongsTo = $('#add_sub_to_main').val();

    var data = {
      addSub: addSub,
      subName: subName,
      subBelongsTo: subBelongsTo,
    }
    
    $.ajax({

      url: './adminFunctions.php',
      type: 'POST',
      data: data,
      success: function (response) {

        if (response == 1) {
          window.location.reload();
        }
      }
    })
  });
  
  //*************          ADD PRODUCT ENTRY         *************//
  $('.addProductEntry').click(function() {

    var addProduct = true;

    var productName = $('#add_product_name').val();
    var productPicture = $('#add_product_picture').val();
    var productDescription = $('#add_product_description').val();
    var belongsToSub = $('#add_product_to_sub').val();
    var belongsToMain = $('#add_product_to_main').val();
    

    var data = {
      addProduct: addProduct,
      productName: productName,
      productPicture: productPicture,
      productDescription: productDescription,
      belongsToSub: belongsToSub,
      belongsToMain: belongsToMain,
    }
    
    $.ajax({

      url: './adminFunctions.php',
      type: 'POST',
      data: data,
      success: function (response) {

        if (response == 1) {
          window.location.reload();
        }
      }
    })
  });
});