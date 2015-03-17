<?php Yii::app()->clientScript->registerCssFile(CHtml::asset(Yii::getPathOfAlias('webroot.themes.bootstrap.assets').'/css/catalog.css')); ?>
<?php $this->beginContent('//layouts/main') ?>
<!-- <div class="row-fluid">
  <div class="span9 offset3">
    <?php echo CHtml::tag('h1',array('class'=>'h1'),$this->pageHeader); ?>
  </div>
</div> -->
<div class="row">
  <div class="span9 pull-right">
    <div class="main-content" id="content">
      <?php echo $content; ?>
    </div>
  </div>
  <div class="span3 pull-left left-bar text-right">
    <div id="sidebar">
      <?php
        $this->widget('bootstrap.widgets.TbNav', array(
          'type' => TbHtml::NAV_TYPE_LIST,
          'items' => $this->sidebar,
        ));
      ?>
    </div>
  </div>
</div>
<?php $this->endContent(); ?>

