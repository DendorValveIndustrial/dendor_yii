<?php Yii::app()->clientScript->registerCssFile(CHtml::asset(Yii::getPathOfAlias('webroot.themes.bootstrap.assets').'/css/catalog.css')); ?>
<?php $this->beginContent('//layouts/main'); ?>
<div class="row-fluid">
  <div class="span9 offset3">
    <div class="page-header">
    <?php if(!empty($this->pageHeaderTitle)) echo CHtml::tag('p',array('class'=>'page-title'),$this->pageHeaderTitle); ?>
    <?php echo TbHtml::tag('h1', array('class'=> !empty($this->pageHeaderTitle) ? 'small' : ''), $this->pageHeader); ?>
    </div>
  </div>
</div>
<div class="row-fluid">
  <?php echo $content; ?>
</div>
<?php $this->endContent(); ?>
