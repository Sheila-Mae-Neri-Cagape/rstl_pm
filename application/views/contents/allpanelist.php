 <style type="text/css">
   .color:hover{
    color:blue;
   }
 </style>

 <div class="row col-md-12 text-center " style="text-align:center">
  <div class="row col-md-12">
  <p id="demo"></p>
  <h3 class="text-center">DEPARTMENT OF SCIENCE AND TECHNOLOGY</h3>
  <h4 class="text-center">Regional Office No. X</h4>
  <hr>  
  <h2 class="text-center">List of Active Panelists <button type="button" class="btn btn-info " data-toggle="modal" data-target="#myFormModal" >Add New
        </button></h2> 
  </div>
 </div>
  
<table class="table table-striped table-bordered table-hover" id="esttable">
  <thead style="background-color: lightblue">
    <tr>
      <th>Panelist ID: </th>
      <th>Name: </th>
      
      <th>Unit: </th>
      <th>Action</th>
    </tr>
  </thead>
  <tbody>
    <?php 
      if(isset($panelist)){
        foreach ($panelist as $key) {
    ?>
    <tr>
      <td><?php echo $key->user_id; ?></td>
      <td><?php echo $key->firstname." ".$key->lastname; ?></td>
      <td><?php echo $key->section_unit; ?></td>
      
      <td>
        <input type="hidden" id="<?php echo $key->user_id."panelStat"; ?>" name="<?php echo $key->user_id."panelStat"; ?>" value="<?php echo $key->status; ?>">
        <?php 
          if ($key->status == 1) {
            ?>
            <span data-toggle="tooltip" data-placement="top" title="Disable"  class="glyphicon glyphicon-remove-circle changeStat color" aria-hidden="true" id="<?php echo($key->user_id); ?>" style="cursor: pointer; color: red;"></span> &nbsp;    
          <?php } else {
            ?>
            <span data-toggle="tooltip" data-placement="top" title="Enable" class="glyphicon glyphicon-ok-circle changeStat color" aria-hidden="true" id="<?php echo($key->user_id); ?>" style="cursor: pointer; color: green;"></span> &nbsp;    
          <?php }
          
         ?>
        
        
        
      </td>
    </tr>

    <?php
        }
      }

     ?>
    
  </tbody>
</table>

    <script type="text/javascript">
      $(document).ready(function(){
          $('#esttable').DataTable({
              initComplete: function () {
                  this.api().columns().every( function () {
                      var column = this;
                      var select = $('<select><option value=""></option></select>')
                          .appendTo( $(column.footer()).empty() )
                          .on( 'change', function () {
                              var val = $.fn.dataTable.util.escapeRegex(
                                  $(this).val()
                              );
       
                              column
                                  .search( val ? '^'+val+'$' : '', true, false )
                                  .draw();
                          } );
       
                      column.data().unique().sort().each( function ( d, j ) {
                          select.append( '<option value="'+d+'">'+d+'</option>' )
                      } );
                  } );
              }
          });
      });

      $(document).ready(function(){
          $('[data-toggle="tooltip"]').tooltip();
      });

      $('.changeStat').click(function(){
        
          var id = $(this).attr('id');
          var stat = $("input[name="+id+"panelStat]").val();
          var formdata = new Array(stat,id);
          console.log(formdata);
          $.ajax({
          url: 'http://'+window.location.host+'/shl/main/changePanelStat',
          type: "POST",
          data: {"data":formdata},
          success: function(data){
            $("#reloadDiv").load('http://'+window.location.host+'/shl/main/getAllPanelists');
            var fade_in = function() {
                $("#myFormModal").modal('hide');
                $('.alerttt').text( data);
                $('.modal-backdrop').remove(); // removes the grey overlay.
                $('body').removeClass('modal-open');
                $(".alerttt").show();
              }

              var fade_out = function() {
                $(".alerttt").fadeOut().empty();
              }
              setTimeout(fade_in,500);
              setTimeout(fade_out, 3000);
          },
            error: function(){
              
              var fade_in = function() {
                $('.alerttt').text( "Unable to change panelist status." );
                $(".alerttt").show();
              }

              var fade_out = function() {
                $(".alerttt").fadeOut().empty();
              }
              setTimeout(fade_in,500);
              setTimeout(fade_out, 3000);
          }
        });
        });
       </script>
