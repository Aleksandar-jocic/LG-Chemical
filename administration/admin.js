
$(document).ready(function(){
  
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
    $('.deleteMe').click(function(){

      var el = this;
      var id = this.id;
      var splitid = id.split("_");

      // Delete id
      var deleteid = splitid[1];
      //  console.log(deleteid);

      // AJAX Request
      $.ajax({
        url: './adminFunctions.php',
        type: 'POST',
        data: 'deleteSth=' + deleteid,
        success: function(response){

          if(response == 1){
        // Remove row from HTML Table
        console.log("deleted");
        
        $(el).parent().fadeOut(800,function(){
            $(this).remove();
        console.log("deleted");

        });
          }else{
            console.log(response);
            
            alert('Invalid ID.');
          }

        }
      });

    });
   
});