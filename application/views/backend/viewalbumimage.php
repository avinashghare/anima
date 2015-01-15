<div class="row" style="padding:1% 0">
    <div class="col-md-12">
        <a class="btn btn-primary pull-right" href="<?php echo site_url("site/createalbumimage"); ?>"><i class="icon-plus"></i>Create </a> &nbsp;
    </div>
</div>
<div class="row">
    <div class="col-lg-12">
        <section class="panel">
            <header class="panel-heading">
                albumimage Details
            </header>
            <div class="drawchintantable">
                <?php $this->chintantable->createsearch("albumimage List");?>
                <table class="table table-striped table-hover" id="" cellpadding="0" cellspacing="0">
                    <thead>
                        <tr>
                            <th data-field="id">ID</th>
                            <th data-field="name">Name</th>
                            <th data-field="image">Image</th>
                            <th data-field="type">Type</th>
                            <th data-field="order">Order</th>
                            <th data-field="json">Json</th>
                            <th data-field="photographeralbum">Photographer Album</th>
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
                return "<tr><td>" + resultrow.id + "</td><td>" + resultrow.name + "</td><td>" + resultrow.image + "</td><td>" + resultrow.type + "</td><td>" + resultrow.order + "</td><td>" + resultrow.json + "</td><td>" + resultrow.photographeralbum + "</td><td><a class='btn btn-primary btn-xs' href='<?php echo site_url('site/editalbumimage?id=');?>" + resultrow.id + "'><i class='icon-pencil'></i></a><a class='btn btn-danger btn-xs' href='<?php echo site_url('site/deletealbumimage?id='); ?>" + resultrow.id + "'><i class='icon-trash '></i></a></td></tr>";
            }
            generatejquery("<?php echo $base_url;?>");
        </script>
    </div>
</div>
