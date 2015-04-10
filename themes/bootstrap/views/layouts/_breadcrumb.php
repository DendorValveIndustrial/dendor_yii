<?php if(!empty($this->breadcrumbs)): ?>
  <div class="row-fluid">
    <div class="span12">
      <?php
        $this->widget('bootstrap.widgets.TbBreadcrumb', array(
          'links'=>$this->breadcrumbs,
        ));
      ?>
    </div>
  </div>
<?php endif; ?>
