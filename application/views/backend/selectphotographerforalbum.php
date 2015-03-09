<div class="row" style="padding:1% 0">
    <div class="col-md-12">
        <div class="pull-right">
        </div>
    </div>
</div>
<div class="row">
    <div class="col-lg-12">
        <section class="panel">
            <header class="panel-heading">
                Select Photographer
            </header>
            <div class="panel-body">
                <form class='form-horizontal tasi-form' method='post' action='<?php echo site_url("site/viewphotographeralbum");?>' enctype='multipart/form-data'>
                       
                        <div class=" form-group">
                          <label class="col-sm-2 control-label">Select photographer</label>
                          <div class="col-sm-4">
                            <?php 	 echo form_dropdown('photographer',$photographer,set_value('photographer'),'id="photographerid" onchange="operatorcategories()" class="chzn-select form-control" 	data-placeholder="Choose a photographer..."');
                            ?>
                          </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="normal-field">&nbsp;</label>
                            <div class="col-sm-4">
                                <button type="submit" class="btn btn-primary">Submit</button>
<!--                                <a href="<?php echo site_url(" site/viewpage "); ?>" class="btn btn-secondary">Cancel</a>-->
                            </div>
                        </div>
                </form>
                </div>
        </section>
        </div>
    </div>
