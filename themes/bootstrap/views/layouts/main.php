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
    Yii::app()->clientScript->registerScriptFile(CHtml::asset(Yii::getPathOfAlias('webroot.themes.bootstrap.assets').'/js/classie.js'),CClientScript::POS_END);
    Yii::app()->clientScript->registerScriptFile(CHtml::asset(Yii::getPathOfAlias('webroot.themes.bootstrap.assets').'/js/script.js'),CClientScript::POS_END);
  ?>
</head>
<body>
  <div class="layout">
    <header class="header" role="banner">
      <?php $this->renderPartial('//layouts/_header', array('showSlider'=>$this->showSlider)); ?>
    </header>
    <main class="main" role="main">
      <div class="container">
        <div class="row-fluid">
          <div class="span12">
            <?php
              if(isset($this->breadcrumbs)){
                $this->widget('bootstrap.widgets.TbBreadcrumb', array(
                  'links'=>$this->breadcrumbs,
                ));
              }
            ?>
          </div>
        </div>
        <?php echo $content; ?>
      </div>
    </main>
    <div class="layout-footer"></div>
  </div>
  <footer class="footer" role="contentinfo">
    <div class="container">
      <div class="row-fluid">
        <div class="text-center">Copyright &copy; <?php echo date('Y') ?> by <?php echo CHtml::encode(Yii::app()->name) ?></div>
      </div>
    </div>
  </footer>
</body>
</html>
