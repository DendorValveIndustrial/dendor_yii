<?php Yii::app()->clientScript->registerCssFile(CHtml::asset(Yii::getPathOfAlias('webroot.themes.bootstrap.assets').'/css/catalog.css')); ?>
<?php $this->beginContent('//layouts/main'); ?>
<div class="row-fluid">
  <div class="span9 offset3">
    <?php //echo CHtml::tag('h1',array('class'=>'h1'),$this->pageHeader); ?>
    <?php echo TbHtml::pageHeader($this->pageHeader, $this->subtextHeader); ?>
  </div>
</div>
<div class="row-fluid">
  <?php echo $content; ?>
</div>
<?php $this->endContent(); ?>
