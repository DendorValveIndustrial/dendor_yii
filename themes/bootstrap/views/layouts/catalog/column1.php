<?php Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl.'/css/catalog.css'); ?>
<?php $this->beginContent('//layouts/main'); ?>
<div class="row-fluid">
  <div class="span9 offset3">
    <?php echo CHtml::tag('h1',array('class'=>'h1'),$this->pageHeader); ?>
  </div>
</div>
<div class="row-fluid">
  <?php echo $content; ?>
</div>
<?php $this->endContent(); ?>
