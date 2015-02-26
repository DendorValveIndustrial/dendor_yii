<?php $this->beginContent('application.modules.admin.views.layouts.main'); ?>
  <div class="container-fluid">
    <div class="row-fluid">
      <div class="span2">
        <div class="well">
          <?php echo TbHtml::navList($this->menu) ?>
        </div>
      </div>
      <div class="span9">
        <?php echo $content; ?>
      </div>
    </div>
  </div>
<?php $this->endContent() ?>
