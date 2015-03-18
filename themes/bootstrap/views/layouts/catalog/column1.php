<?php
  Yii::app()->clientScript->registerCssFile(CHtml::asset(Yii::getPathOfAlias('webroot.themes.bootstrap.assets').'/css/home.css'));
  Yii::app()->clientScript->registerCssFile(CHtml::asset(Yii::getPathOfAlias('webroot.themes.bootstrap.assets').'/css/catalog.css'));
?>

<?php $this->beginContent('//layouts/main'); ?>
<div class="row-fluid">
  <div class="main-content">
    <?php echo $content; ?>
  </div>
</div>
<?php $this->endContent(); ?>
