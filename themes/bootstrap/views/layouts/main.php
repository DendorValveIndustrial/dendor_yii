<!DOCTYPE html>
<html lang="<?php echo Yii::app()->getLanguage(); ?>">
<head>
  <?php echo CHtml::metaTag('text/html; charset=utf-8', NULL, 'Content-Type'); ?>
  <title><?php echo CHtml::encode($this->pageTitle); ?></title>
  <?php
    echo CHtml::metaTag($this->metaDescription,'description');
    echo CHtml::metaTag($this->metaKeywords,'keywords');
    echo CHtml::linkTag('shortcut icon', 'image/x-icon', '/favicon.ico');

    $this->renderPartial('//layouts/_meta_head');

    Yii::app()->bootstrap->register();
    Yii::app()->fontawesome->register();
    Yii::app()->clientScript->registerCssFile(CHtml::asset(Yii::getPathOfAlias('webroot.themes.bootstrap.assets').'/css/screen.css'));
    Yii::app()->clientScript->registerScriptFile(CHtml::asset(Yii::getPathOfAlias('webroot.themes.bootstrap.assets').'/js/classie.min.js'),CClientScript::POS_END);
    Yii::app()->clientScript->registerScriptFile(CHtml::asset(Yii::getPathOfAlias('webroot.themes.bootstrap.assets').'/js/script.js'),CClientScript::POS_END);
    Yii::app()->clientScript->registerScriptFile(CHtml::asset(Yii::getPathOfAlias('webroot.themes.bootstrap.assets').'/js/head.min.js'),CClientScript::POS_END);
  ?>
</head>
<body>
  <div class="layout">
    <div class="header" role="banner">
      <?php $this->renderPartial('//layouts/_header', array('showSlider'=>$this->showSlider)); ?>
    </div>
    <div class="main" role="main">
      <div class="container">
        <?php $this->renderPartial('//layouts/_breadcrumb'); ?>
        <?php echo $content; ?>
      </div>
    </div>
    <div class="layout-footer"></div>
  </div>
  <div class="footer" role="contentinfo">
    <?php $this->renderPartial('//layouts/_footer'); ?>
  </div>
</body>
</html>
