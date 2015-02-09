<div class="row">
  
	<div class="col-lg-12">
		<section class="panel">
			<header class="panel-heading">
                Model Image Details<a class="btn btn-primary pull-right" href="<?php echo site_url("site/createmodelimage?id=").$this->input->get('id'); ?>"><i class="icon-plus"></i>Create </a><a class="btn btn-primary pull-right savemodelorder">Save Order</a>
     
            </header>
           
<ul id="sortable">
 <?php
foreach($table as $row) { 
    ?>
  <li class="ui-state-default" data-order="<?php echo $row->order;?>" data-id="<?php echo $row->id;?>">
                          
                          <div class="row">
                              <div class="col-md-3"><img src="<?php echo base_url('uploads')."/".$row->image; ?>"  class="img-thumbnail" width="120px" height="auto"></div>
                              <div class="col-md-7">
                              <div><h4 class="text-capitalize"><?php echo $row->name; ?></h4></div>
                              <div><span class="badge"><?php if($row->type==1){ echo "Horizontal "; } else { echo "Verticle "; } ?></span></div>
                              </div>
                              
                              <div class="col-md-2"><a href="<?php echo site_url('site/editmodelimage?id=').$row->model.'&modelimageid='.$row->id;?>" class="btn btn-primary btn-xs">
								<i class="icon-pencil"></i>
							</a>
							<a href="<?php echo site_url('site/deletealbumimage?id=').$row->model.'&modelimageid='.$row->id; ?>" class="btn btn-danger btn-xs">
								<i class="icon-trash "></i>
							</a></div>
                          </div>
                          
                          
                          
    
                           
                            
 </li>
<?php
}
?>
</ul>
			
		</section>
	</div>
</div>
<script>
    $(document).ready(function(){
        $( "#sortable" ).sortable({
  stop: function( event, ui ) {
    $("#sortable>li").each(function( index ) {
  $(this).attr("data-order",index+1);
});
  }
});
        $( "#sortable" ).disableSelection();
       
        
    }); 
    
    $(".savemodelorder").click(function () {
        $("#sortable>li").each(function( index ) {
            
        $.getJSON(
            "<?php echo base_url(); ?>index.php/site/savemodelorder?order="+$(this).attr("data-order")+"&id="+$(this).attr("data-id")+"", {
                
            },
            function (data) {
                //  alert(data);
                console.log(data);
                nodata=data;
                // $("#store").html(data);
//                changestoretable(data);

            }

        );
        }); });
  </script>



<!--

<div class="row" style="padding:1% 0">
    <div class="col-md-12">
        <a class="btn btn-primary pull-right" href="<?php echo site_url("site/createmodelimage?id=").$this->input->get('id'); ?>"><i class="icon-plus"></i>Create </a> &nbsp;
    </div>
</div>
<div class="row">
    <div class="col-lg-12">
        <section class="panel">
            <header class="panel-heading">
                modelimage Details
            </header>
            <div class="drawchintantable">
                <?php
//$this->chintantable->createsearch("modelimage List");
                ?>
                <table class="table table-striped table-hover" id="" cellpadding="0" cellspacing="0">
                    <thead>
                        <tr>
                            <th data-field="id">ID</th>
                            <th data-field="name">Name</th>
                            <th data-field="image">Image</th>
                            <th data-field="type">Type</th>
                            <th data-field="action">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                    </tbody>
                </table>
                <?php $this->chintantable->createpagination();?>
            </div>
        </section>
        <script>
            function drawtable(resultrow) {
                var logo="<img src='<?php echo base_url('/uploads/');?>/" + resultrow.image + "' width=100px;>";
                if(resultrow.type=="1")
                {
                    resultrow.type="Horizontal";
                }
                else
                {
                    resultrow.type="Verticle";
                }
                return "<tr><td>" + resultrow.id + "</td><td>" + resultrow.name + "</td><td>"+logo+"</td><td>" + resultrow.type + "</td><td><a class='btn btn-primary btn-xs' href='<?php echo site_url('site/editmodelimage?id=');?>" + resultrow.model + "&modelimageid="+resultrow.id+"'><i class='icon-pencil'></i></a><a class='btn btn-danger btn-xs' href='<?php echo site_url('site/deletemodelimage?id='); ?>" + resultrow.model + "&modelimageid="+resultrow.id+"'><i class='icon-trash '></i></a></td></tr>";
            }
            generatejquery("<?php echo $base_url;?>");
        </script>
    </div>
</div>
-->
