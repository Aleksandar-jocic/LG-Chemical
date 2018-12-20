$(document).ready(function(){
  
    $('.deleteMain').click(function () {

      var id = $(this).attr('rel');
      $('.deleteMainConfirm').attr('rel', id);

      console.log($('.deleteMainConfirm').attr('rel', id));
      console.log($(id));
    });

    $('.deleteSub').click(function () {

      var id = $(this).attr('rel');
      $('.deleteSubConfirm').attr('rel', id);


      console.log($('.deleteSubConfirm').attr('rel', id));
      console.log($(id));
      
      
    });

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

    $('.editMainModal').click(function () {

      var sameMainId = $(this).attr('rel');

      var newMainName =  $('#main_name').val();
      var newMainPicture =  $('#main_picture').val();
      var newMainIndexPicture =  $('#main_index_picture').val();
      var newMainIcon =  $('#main_icon').val();
      
      var data = {changeThisMainId: sameMainId, mainName: newMainName, mainPicture: newMainPicture, mainIndexPicture: newMainIndexPicture, mainIcon: newMainIcon};

      var editRow = $('#edit_' + sameMainId);
      console.log(editRow.prev()[0].innerText);
      
      $.ajax({

        url: './adminFunctions.php',
        type: 'POST',
        data: data,
        success: function(response) {
          if(response == 1) {

              editRow.prev()[0].innerText = newMainIcon;
              editRow.prev().prev()[0].innerText = newMainIndexPicture;
              editRow.prev().prev().prev()[0].innerText = newMainPicture;
              editRow.prev().prev().prev().prev()[0].innerText = newMainName;
              
            console.log('updated successfully');
          }
        }
      })
    })

    var changeId;
    $('.changeMe').click(function () {
      var el = this;
      var id = this.id;
      var splitid = id.split("_");
      changeId = splitid[1];
      $('.update').css('display', 'block');
    });

        $('.changePerson').click(function () {

        console.log(changeId);
          

          var newNameFor = $('.newNameInput').val();
          var newLastNameFor = $('.newLastNameInput').val();

          var data = {changeSth: changeId, newName: newNameFor, newLastName: newLastNameFor};

          $.ajax({

            url: './adminFunctions.php',
            type: 'POST',
            data: data,
            success: function(response) {

                if(response == 1) {
                  
                  var id = $('#cha_' + changeId);

                  id.parent().fadeOut(800,function(){

                    id.parent().show('');
                    
                      console.log(id.parent());
                      

                  });
                  
                  console.log("response good");
                  
                } else {

                  console.log("response not so good");

                }
            }
          });

        });

    // Delete 
    $('.deleteMainConfirm').click(function(){

      // Delete id
      var deleteId = $(this).attr('rel');
      console.log(deleteId);
      
      // AJAX Request
      $.ajax({
        url: './adminFunctions.php',
        type: 'POST',
        data: 'deleteMain=' + deleteId,
        success: function(response){

          if(response == 1){
        // Remove row from HTML Table
            var elementToDelete = $('#delete_' + deleteId);
            $(elementToDelete).parent().fadeOut(800,function() {
              $(this).remove();
        });
          }else{
            alert('Invalid ID.');
          }
        }
      });
    });


    $('.deleteSubConfirm').click(function(){

      // Delete id
      var deleteId = $(this).attr('rel');
      console.log(deleteId);
      var data = {deleteSub: deleteId}
      // AJAX Request
      $.ajax({
        url: './adminFunctions.php',
        type: 'POST',
        data: data,
        success: function(response){

          if(response == 1){
        // Remove row from HTML Table
            var elementToDelete = $('#deleteSub_' + deleteId);
            $(elementToDelete).parent().fadeOut(800,function() {
              $(this).remove();
        });
          }else{
            alert('Invalid ID.');
          }
        }
      });
    });
});