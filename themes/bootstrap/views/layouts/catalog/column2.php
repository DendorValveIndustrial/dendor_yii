<?php Yii::app()->clientScript->registerCssFile(CHtml::asset(Yii::getPathOfAlias('webroot.themes.bootstrap.assets').'/css/catalog.css')); ?>
<?php $this->beginContent('//layouts/main') ?>
<div class="row-fluid">
  <div class="span9 offset3">
    <?php echo TbHtml::pageHeader($this->pageHeader, ''); ?>
  </div>
</div>
<div class="row-fluid">
  <div class="span3 left-bar text-right">
    <div id="sidebar" class="span11">
      <?php
        $this->widget('bootstrap.widgets.TbNav', array(
          'type' => TbHtml::NAV_TYPE_LIST,
          'items' => $this->sidebar,
        ));
      ?>
    </div>
  </div>
  <div class="span9">
    <div class="main-content" id="content">
      <?php echo $content; ?>
    </div>
  </div>
</div>
<?php $this->endContent(); ?>

