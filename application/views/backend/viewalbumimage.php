

<div class="row">
  
	<div class="col-lg-12">
		<section class="panel">
			<header class="panel-heading">
                Album Image Details<a class="btn btn-primary pull-right" href="<?php echo site_url("site/createalbumimage?id=").$this->input->get('id'); ?>"><i class="icon-plus"></i>Create </a><a class="btn btn-primary pull-right saveorder">Save Order</a>
     
            </header>
            <?php
//print_r($table);
?>
<!--
      <div class="row" style="padding:1% 0">
    
    <div class="col-sm-11">
		<a class="btn btn-primary pull-right saveorder">Save Order</a>
	</div>
</div>    
-->
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
                              
                              <div class="col-md-2"><a href="<?php echo site_url('site/editalbumimage?id=').$row->photographeralbum.'&photographeralbumimage='.$row->id;?>" class="btn btn-primary btn-xs">
								<i class="icon-pencil"></i>
							</a>
							<a href="<?php echo site_url('site/deletealbumimage?id=').$row->photographeralbum.'&photographeralbumimage='.$row->id; ?>" class="btn btn-danger btn-xs">
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
    
    $(".saveorder").click(function () {
        $("#sortable>li").each(function( index ) {
            
        $.getJSON(
            "<?php echo base_url(); ?>index.php/site/saveorder?order="+$(this).attr("data-order")+"&id="+$(this).attr("data-id")+"", {
                
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