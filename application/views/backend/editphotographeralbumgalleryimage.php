<section class="panel">
    <header class="panel-heading">
        photographeralbumimage Details
    </header>
    <div class="panel-body">
        <form class='form-horizontal tasi-form' method='post' action='<?php echo site_url("site/editphotographeralbumgalleryimagesubmit");?>' enctype='multipart/form-data'>
            <input type="text" id="normal-field" class="form-control" name="id" value="<?php echo set_value('id',$before->id);?>">
            
<!--           style="display:none;"  -->
            <div class="form-group">
                <label class="col-sm-2 control-label" for="normal-field">photographeralbumgallery</label>
                <div class="col-sm-4">
                    <input type="text" id="normal-field" class="form-control" name="photographeralbumgalleryid" value='<?php echo set_value(' photographeralbumgalleryid ',$before->photographeralbumgallery);?>'>
                </div>
            </div>
            
            <div class="form-group">
                <label class="col-sm-2 control-label" for="normal-field">Name</label>
                <div class="col-sm-4">
                    <input type="text" id="normal-field" class="form-control" name="name" value='<?php echo set_value(' name ',$before->name);?>'>
                </div>
            </div>
            
				<div class=" form-group">
				  <label class="col-sm-2 control-label" for="normal-field">Image</label>
				  <div class="col-sm-4">
					<input type="file" id="normal-field" class="form-control" name="image" value="<?php echo set_value('image',$before->image);?>">
					<?php if($before->image == "")
						 { }
						 else
						 { ?>
							<img src="<?php echo base_url('uploads')."/".$before->image; ?>" width="140px" height="140px">
						<?php }
					?>
				  </div>
				</div>
				
<!--
            <div class="form-group">
                <label class="col-sm-2 control-label" for="normal-field">Type</label>
                <div class="col-sm-4">
                    <input type="text" id="normal-field" class="form-control" name="type" value='<?php echo set_value(' type ',$before->type);?>'>
                </div>
            </div>
-->
           
				<div class=" form-group">
				  <label class="col-sm-2 control-label">Select Type</label>
				  <div class="col-sm-4">
					<?php 	 echo form_dropdown('type',$type,set_value('type',$before->type),'onchange="operatorcategories()"class="chzn-select form-control" 	data-placeholder="Choose a type..."');
					?>
				  </div>
				</div>
				
            <div class="form-group">
                <label class="col-sm-2 control-label" for="normal-field">Order</label>
                <div class="col-sm-4">
                    <input type="text" id="normal-field" class="form-control" name="order" value='<?php echo set_value(' order ',$before->order);?>'>
                </div>
            </div>
<!--
            <div class=" form-group">
                <label class="col-sm-2 control-label" for="normal-field">Json</label>
                <div class="col-sm-8">
                    <textarea name="json" id="" cols="20" rows="10" class="form-control tinymce"><?php echo set_value( 'json',$before->json);?></textarea>
                </div>
            </div>
-->
            <div class="form-group">
                <label class="col-sm-2 control-label" for="normal-field">&nbsp;</label>
                <div class="col-sm-4">
                    <button type="submit" class="btn btn-primary">Save</button>
<!--                    <a href='<?php echo site_url("site/viewpage"); ?>' class='btn btn-secondary'>Cancel</a>-->
                </div>
            </div>
        </form>
    </div>
</section>
