<?php Yii::app()->clientScript->registerCssFile(CHtml::asset(Yii::getPathOfAlias('webroot.themes.bootstrap.assets').'/css/catalog.css')); ?>
<?php $this->beginContent('//layouts/home'); ?>
<?php //if($this->pageHeader) echo CHtml::tag('h1',array('class'=>'h1'),$this->pageHeader); ?>
<div class="row-fluid">
  <div class="main-content">
    <?php echo $content; ?>
  </div>
</div>
<?php $this->endContent(); ?>
