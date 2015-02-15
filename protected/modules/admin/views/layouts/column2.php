<?php $this->beginContent('application.modules.admin.views.layouts.main'); ?>
  <div class="container-fluid">
    <div class="row-fluid">
      <div class="span9 offset1">
        <?php echo $content; ?>
      </div>
      <div class="span2">
        <div class="well">
          <?php echo TbHtml::navList($this->menu) ?>
        </div>
      </div>
    </div>
  </div>
<?php $this->endContent() ?>
