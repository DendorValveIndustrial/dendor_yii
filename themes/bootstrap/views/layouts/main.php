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
    Yii::app()->clientScript->registerScriptFile(CHtml::asset(Yii::getPathOfAlias('webroot.themes.bootstrap.assets').'/js/head.min.js'),CClientScript::POS_END);
    //Yii::app()->clientScript->registerScriptFile(CHtml::asset(Yii::getPathOfAlias('webroot.themes.bootstrap.assets').'/js/script.js'),CClientScript::POS_END);
    Yii::app()->clientScript->registerScript('main_script','function disableOther(e){"mainMenuShow"!==e&&classie.toggle(mainMenuShow,"disabled")}var mainMenu=document.getElementById("mainMenu"),mainMenuShow=document.getElementById("mainMenuShow"),body=document.body;mainMenuShow.onclick=function(){classie.toggle(this,"active-menu"),classie.toggle(mainMenu,"open"),disableOther("mainMenuShow")};',CClientScript::POS_END);
    Yii::app()->clientScript->registerScript('googleAnalytics','(function(i,s,o,g,r,a,m){i["GoogleAnalyticsObject"]=r;i[r]=i[r]||function(){(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o), m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)})(window,document,"script","//www.google-analytics.com/analytics.js","ga");ga("create", "UA-49160204-1", "dendor.pl"); ga("send", "pageview");',CClientScript::POS_END);
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
  <?php  ?>
</body>
</html>
