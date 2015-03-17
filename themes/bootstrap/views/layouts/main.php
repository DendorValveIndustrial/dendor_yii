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
    Yii::app()->clientScript->registerCssFile(CHtml::asset(Yii::getPathOfAlias('webroot.themes.bootstrap.assets').'/css/main.css'));
    Yii::app()->clientScript->registerScriptFile(CHtml::asset(Yii::getPathOfAlias('webroot.themes.bootstrap.assets').'/js/classie.js'),CClientScript::POS_END);
    Yii::app()->clientScript->registerScriptFile(CHtml::asset(Yii::getPathOfAlias('webroot.themes.bootstrap.assets').'/js/script.js'),CClientScript::POS_END);
  ?>
</head>
<body>
  <div class="layout">
    <header class="header" role="banner">
      <?php $this->renderPartial('//layouts/_navbar'); ?>
      <div class="container">
        <div class="row-fluid head">
          <div class="span3">
            <div class="logo">
              <?php echo CHtml::image(CHtml::asset(Yii::getPathOfAlias('webroot.themes.bootstrap.assets').'/img/logo/logo-wite270.png'),CHtml::encode(Yii::app()->name), array('width'=>'269', 'height'=>'82')); ?>
            </div>
            <div class="contact-top text-center" role="contentinfo">
              <!-- <div class="address">ul. Jaśkowa Dolina 81<br/>80-286 Gdańsk, Polska</div> -->
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
              <h1><?php echo $this->pageHeader; ?></h1>
              <div class="subtext-header"><?php echo $this->subtextHeader; ?></div>
              <div class="pull-right img-slider">
                <?php
                  if(isset($this->imgSlider))
                    echo CHtml::image($this->imgSlider,$this->pageHeader, array('width'=>'150', 'height'=>'240'));
                ?>
              </div>
            </div>
          </div>
        </div>
      </div>
    </header>
    <main class="main" role="main">
      <div class="container">
        <?php
          if(isset($this->breadcrumbs)){
            $this->widget('bootstrap.widgets.TbBreadcrumb', array(
              'links'=>$this->breadcrumbs,
            ));
          }
        ?>
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
