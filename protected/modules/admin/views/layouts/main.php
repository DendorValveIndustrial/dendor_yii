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
            array('url' => Yii::app()->createUrl('/catalog/admin/default/admin'), 'label' => Yii::t('admin','catalog')),
            array('url' => Yii::app()->createUrl('/languages/admin/default/admin'), 'label' => Yii::t('admin','languages'), 'visible'=>Yii::app()->user->name === 'admin'),
            array('url' => Yii::app()->createUrl('/news/admin/default'), 'label' => Yii::t('admin','news')),
            array('url' => Yii::app()->createUrl('/pages/admin/default/admin'), 'label' => Yii::t('admin','pages')),
            array('url' => Yii::app()->createUrl('/sliders/admin/default/admin'), 'label' => Yii::t('admin','sliders')),
            array('url' => Yii::app()->createUrl('/users/admin/default/admin'), 'label' => Yii::t('admin','users'), 'visible'=>Yii::app()->user->name === 'admin'),
          ),
        ),
        array(
          'class' => 'application.modules.languages.widgets.langSwitch.LangSwitchWidget',
          'url'=>$this->url,
          'htmlOptions' => array('class' => 'nav pull-right country'),
        ),
        array(
          'class' => 'bootstrap.widgets.TbNav',
          'items' => array(
            array('label'=>Yii::t('admin', 'web_app'), 'url'=>array('/site/index')),
            array('label'=>Yii::t('app', 'logout').' ('.Yii::app()->user->name.')', 'url'=>array('/site/logout')),
          ),
          'htmlOptions' => array('class' => 'pull-right'),
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
