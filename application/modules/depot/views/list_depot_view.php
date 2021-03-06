<?php defined('BASEPATH') OR exit('No direct script access allowed');?>
  <div class="row">
    <div class="col-lg-12">
      <a href="<?php echo site_url('depot/create');?>" class="btn btn-primary">Add Depot</a>
    </div>
  </div>
  <div class="row">
  </br>
  </br>
  <?php echo $this->session->flashdata('msg');  ?>

    <div class="col-lg-12 col-sm-12">
     <div class="panel default blue_title h2">
        <div class="panel-body">
        <ul class="nav nav-tabs">

        <li class="active"><a data-toggle="tab" href="#tab1"><b>My Depots</b></a></li>
        <li><a data-toggle="tab" href="#tab2"><b>Other Depots</b></a></li>
        </ul>
        <div class="tab-content">
        <div id="tab1" class="tab-pane fade in active">
        <form id="my_depots">

          <div class="table-responsive">
              <table id="table1" class="table table-bordered table-hover table-striped" cellspacing="0" width="100%">
                <thead>
                <tr class="button"></tr>
                  <tr>
                    <th>Depot Location</th>
                    
                    <th style="width:250px;">Action</th>
                  </tr>
                </thead>
                <tbody>
                </tbody>

                <tfoot>
                  <tr>
                    <th>Depot Location</th>
                    
                    <th>Action</th>
                  </tr>
                </tfoot>
              </table>
            </div>

        </form>
        </div>
        <div id="tab2" class="tab-pane fade">
        <form id="other_depots">
        <div class="table-responsive">
          <table id="table2" class="table table-bordered table-hover table-striped" cellspacing="0" width="100%">
            <thead>
            <tr class="button"></tr>
              <tr>
                <th >Depot Location</th>
                
                <th style="width:250px;">Action</th>
              </tr>
            </thead>
            <tbody>
            </tbody>

            <tfoot>
              <tr>
                <th>Depot Location</th>
                
                <th>Action</th>
              </tr>
            </tfoot>
          </table>
        </div>

        </form>
    </div>

    </div>
    </div>
    </div>
    </div>
    </div>


    <div class="col-lg-12" style="margin-top: 10px;">
     

  <script type="text/javascript">

    var table1;
    $(document).ready(function() {
      table1 = $('#table1').DataTable({ 
        "processing": true, //Feature control the processing indicator.
        "serverSide": true, //Feature control DataTables' server-side processing mode.
        
        // Load data for the table's content from an Ajax source
        "ajax": {
            "url": "<?php echo site_url('depot/action_list')?>",
            "type": "POST"
        },

        //Set column definition initialisation properties.
        "columnDefs": [
        { 
          "targets": [ -1 ], //last column
          "orderable": true, //set not orderable
        },
        ],

      });
    });
   </script>

     <script type="text/javascript">

    var table2;
    $(document).ready(function() {
      table2 = $('#table2').DataTable({ 
        "processing": true, //Feature control the processing indicator.
        "serverSide": true, //Feature control DataTables' server-side processing mode.
        
        // Load data for the table's content from an Ajax source
        "ajax": {
            "url": "<?php echo site_url('depot/action_list')?>",
            "type": "POST"
        },

        //Set column definition initialisation properties.
        "columnDefs": [
        { 
          "targets": [ -1 ], //last column
          "orderable": true, //set not orderable
        },
        ],

      });
    });
   </script>
   <script type="text/javascript">

               window.setTimeout(function() {
                  $("#alert-message").fadeTo(500, 0).slideUp(500, function(){
                      $(this).remove(); 
                  });
              }, 5000);
        </script> 
  </body>
</html>