<?php
  Yii::app()->bootstrap->register();
  $adminAssetsUrl = Yii::app()->getModule('admin')->assetsUrl;
  $assetsManager = Yii::app()->clientScript;
  $assetsManager->registerCssFile($adminAssetsUrl.'/css/screen.css');
  $assetsManager->registerCssFile($adminAssetsUrl.'/css/font-awesome.min.css');
?>
<!DOCTYPE html>
<html lang="<?php echo Yii::app()->getLanguage(); ?>">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <meta http-equiv="Content-Language" content="<?php echo Yii::app()->getLanguage(); ?>">
  <title><?php echo $this->pageTitle; ?></title>
</head>
<body>
  <?php
    $this->widget('bootstrap.widgets.TbNavbar', array(
      'brandLabel' => 'Dendor Admin',
      'brandUrl' => Yii::app()->createUrl('/admin/default/index'),
      'collapse' => true,
      'display' => TbHtml::NAVBAR_DISPLAY_FIXEDTOP,
      'color' => TbHtml::NAVBAR_COLOR_INVERSE,
      'items' => array(
        array(
          'class' => 'bootstrap.widgets.TbNav',
          'items' => array(
            array('label'=>Yii::t('admin', 'web_app'), 'url'=>array('/site/index')),
            array('label'=>Yii::t('app', 'logout').' ('.Yii::app()->user->name.')', 'url'=>array('/site/logout'), 'visible'=>(!Yii::app()->user->isGuest)),
          ),
        ),
        /*array(
          'class' => 'bootstrap.widgets.TbNav',
          'items' => array(
            array('label'=>Yii::t('app', 'logout').' ('.Yii::app()->user->name.')', 'url'=>array('/site/logout'), 'visible'=>(!Yii::app()->user->isGuest && !$this->menu)),
          ),
          'htmlOptions' => array('class' => 'pull-right'),
        ),*/
        array(
          'class' => 'application.modules.languages.widgets.langSwitch.LangSwitchWidget',
          'url'=>$this->url,
          'htmlOptions' => array('class' => 'nav pull-right country'),
        ),
      ),
      'htmlOptions' => array(
        'containerOptions'=>array('style'=>'width: auto; padding: 0 20px;'),
      ),
    ));
  ?>
  <?php echo $content; ?>
</body>
</html>
