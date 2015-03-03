<?php Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl.'/css/catalog.css'); ?>
<?php $this->beginContent('//layouts/main'); ?>
<?php if($this->pageHeader) echo CHtml::tag('h1',array('class'=>'h1'),$this->pageHeader); ?>
<div class="row-fluid">
  <div class="main-content">
    <?php echo $content; ?>
  </div>
</div>
<?php $this->endContent(); ?>
