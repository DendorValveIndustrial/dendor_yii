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
    Yii::app()->clientScript->registerCssFile(CHtml::asset(Yii::getPathOfAlias('webroot.themes.bootstrap.assets').'/css/home.css'));
    Yii::app()->clientScript->registerScriptFile(CHtml::asset(Yii::getPathOfAlias('webroot.themes.bootstrap.assets').'/js/classie.js'),CClientScript::POS_END);
    Yii::app()->clientScript->registerScriptFile(CHtml::asset(Yii::getPathOfAlias('webroot.themes.bootstrap.assets').'/js/script.js'),CClientScript::POS_END);
  ?>
</head>
<body>
  <div class="layout">
    <header class="header" role="banner">
      <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="navbar-inner">
          <div class="container">
            <?php echo CHtml::link('Dendor '.$this->pageHeaderBrand, Yii::app()->createUrl('site/index'), array('class'=>'brand span3')); ?>
            <div class="main-menu" id="mainMenu">
              <?php
                $this->widget('zii.widgets.CMenu',array(
                  'items'=>array(
                    //array('label'=>Yii::t('app', 'home'), 'url'=>array('/site/index')),
                    array('label'=>Yii::t('app', 'about'), 'url'=>array('/site/page', 'view'=>'about')),
                    array('label'=>Yii::t('app', 'production'), 'url'=>array('/catalog/catalog/index')),
                    array('label'=>Yii::t('app', 'news'), 'url'=> array('/news/news/index')),
                    array('label'=>Yii::t('app', 'contact'), 'url'=>array('/site/contact')),
                    array('label'=>Yii::t('app', 'admin').' ('.Yii::app()->user->name.')', 'url'=>array('admin/default/index'), 'visible'=>!Yii::app()->user->isGuest)
                  ),
                  'activeCssClass'=>'active',
                  'htmlOptions'=>array(
                      'class'=>'nav',
                  ),
                ));
              ?>
            </div>
            <button id="mainMenuShow" class="btn btn-navbar pull-right main-menu-show"><i class="fa fa-bars fa-fw"></i></button>
            <?php $this->widget('application.modules.languages.widgets.langSwitch.LangSwitchWidget', array('url'=>$this->url, 'htmlOptions'=>array('class'=>'nav pull-right country'))); ?>
          </div>
        </div>
      </div>
      <div class="container">
        <div class="row-fluid head">
          <?php $this->renderPartial('//layouts/_head_slider'); ?>
        </div>
      </div>
    </header>
    <main class="main" role="main">
      <div class="container">
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
