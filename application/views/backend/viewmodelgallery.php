	<div class="row">
  
	<div class="col-lg-12">
		<section class="panel">
			<header class="panel-heading">
                Model gallery Details<a class="btn btn-primary pull-right"  href="<?php echo site_url('site/createmodelgallery?id=').$this->input->get('id'); ?>"><i class="icon-plus"></i>Create </a>
                <a class="btn btn-primary pull-right savemainmodelgalleryorder">Save Order</a>
     
            </header>
           
<ul id="sortable">
 <?php
foreach($table as $row) { 
    ?>
  <li class="ui-state-default" data-order="<?php echo $row->order;?>" data-id="<?php echo $row->id;?>">
                          
                          <div class="row">
                              <div class="col-md-3"><img src="<?php echo base_url('uploads')."/".$row->image; ?>"  class="img-thumbnail" width="120px" height="auto"></div>
                              <div class="col-md-7">
                              <div><h4 class="text-capitalize"><?php echo $row->title; ?></h4></div>
<!--                              <div><span class="badge"><?php if($row->type==1){ echo "Horizontal "; } else { echo "Verticle "; } ?></span></div>-->
                              </div>
                              
                              <div class="col-md-2"><a href="<?php echo site_url('site/editmodelgallery?id=').$row->model.'&modelgalleryid='.$row->id;?>" class="btn btn-primary btn-xs"><i class="icon-pencil"></i>
							</a>
							<a href="<?php echo site_url('site/deletemodelgallery?id=').$row->model.'&modelgalleryid='.$row->id; ?>" class="btn btn-danger btn-xs">
								<i class="icon-trash "></i>
							</a> 
                         </div>
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
    
    $(".savemainmodelgalleryorder").click(function () {
        $("#sortable>li").each(function( index ) {
            
        $.getJSON(
            "<?php echo base_url(); ?>index.php/site/savemainmodelgalleryorder?order="+$(this).attr("data-order")+"&id="+$(this).attr("data-id")+"", {
                
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
<div class=" row" style="padding:1% 0;">
	<div class="col-md-12">
	
		<a class="btn btn-primary pull-right"  href="<?php echo site_url('site/createmodelgallery?id=').$this->input->get('id'); ?>"><i class="icon-plus"></i>Create </a> &nbsp; 
	</div>
	
</div>
<div class="row">
	<div class="col-lg-12">
		<section class="panel">
			<header class="panel-heading">
                Model Gallery Details 
            </header>
			<table class="table table-striped table-hover  fpTable lcnp" cellpadding="0" cellspacing="0" width="100%">
			<thead>
				<tr>
					<th>Id</th>
					<th>model</th>
					<th>Image</th>
					<th> Actions </th>
				</tr>
			</thead>
			<tbody>
			   <?php foreach($table as $row) { ?>
					<tr>
						<td><?php echo $row->id;?></td>
						<td><?php echo $row->modelname;?></td>
						<td><img src="<?php echo base_url('uploads')."/".$row->image; ?>" width="50px" height="auto"></td>
						
						<td>
							<a href="<?php echo site_url('site/editmodelgallery?id=').$row->model.'&modelgalleryid='.$row->id;?>" class="btn btn-primary btn-xs">
								<i class="icon-pencil"></i>
							</a>
							<a href="<?php echo site_url('site/deletemodelgallery?id=').$row->model.'&modelgalleryid='.$row->id; ?>" class="btn btn-danger btn-xs">
								<i class="icon-trash "></i>
							</a> 
							
						</td>
					</tr>
					<?php } ?>
			</tbody>
			</table>
		</section>
        </div>
	</div>



-->
