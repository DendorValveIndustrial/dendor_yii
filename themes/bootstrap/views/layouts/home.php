<!DOCTYPE html>
<html lang="<?php echo Yii::app()->getLanguage(); ?>">
<head>
  <?php echo CHtml::metaTag('text/html; charset=utf-8', NULL, 'Content-Type'); ?>
  <title><?php echo CHtml::encode($this->pageTitle); ?></title>
  <?php
    echo CHtml::metaTag($this->metaDescription,'description');
    echo CHtml::metaTag($this->metaKeywords,'keywords');
    echo CHtml::linkTag('shortcut icon', 'image/x-icon', '/favicon.ico');

    $this->renderPartial('//layouts/_head');

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
                    array('label'=>Yii::t('app', 'contact'), 'url'=>array('site/contact')),
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
          <div class="span3">
            <div class="logo">
              <?php echo CHtml::image(CHtml::asset(Yii::getPathOfAlias('webroot.themes.bootstrap.assets').'/img/logo/logo-wite270.png'),CHtml::encode(Yii::app()->name), array('width'=>'269', 'height'=>'82')); ?>
            </div>
            <div class="contact-top text-center" role="contentinfo">
              <div class="address">ul. Jaśkowa Dolina 81<br/>80-286 Gdańsk, Polska</div>
              <div class="tel"><?php echo CHtml::encode(Yii::app()->params['telOfficePol']);?></div>
              <div class="email">
                <?php
                  echo TbHtml::icon(TbHtml::ICON_ENVELOPE, array('color'=>TbHtml::ICON_COLOR_WHITE));
                  echo "&#xa0;";
                  echo TbHtml::mailto(Yii::app()->params['officeEmail'],Yii::app()->params['officeEmail']);
                ?>
              </div>
            </div>
          </div>
          <div class="span9">
            <div class="wrap-slider">
              <h1 class="pull-left"><?php echo Yii::t('app', 'pipeline_valves'); ?></h1>
              <div class="pull-right img-slider"><?php echo CHtml::image(CHtml::asset(Yii::getPathOfAlias('webroot.themes.bootstrap.assets').'/img/slide1.png'),'Armatura przemysłowa', array('width'=>'245', 'height'=>'395')); ?></div>
              <div class="slider" id="slider"><?php echo $this->widget('ext.slidr.SliderHome',array(), true); ?></div>
            </div>
          </div>
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
