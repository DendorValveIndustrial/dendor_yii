<?php
require_once 'Z:\home\dendor-pl.loc\www\protected\extensions\phamlp\vendors\phamlp\haml\HamlHelpers.php';
?><!DOCTYPE html>
<html lang="en">
<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" /><meta content="en" name="language" /><link href="<?php echo Yii::app()->request->baseUrl; ?>/css/bootstrap-styles.css" media="screen, projection" rel="stylesheet" type="text/css" /><!--blueprint CSS framework <link href="<?php echo Yii::app()->request->baseUrl; ?>/css/screen.css" media="screen, projection" rel="stylesheet" type="text/css" /><link href=" <?php echo Yii::app()->request->baseUrl; ?>/css/print.css" media="print" rel="stylesheet" type="text/css" /> -->


<!--[if lt IE 8]>
<link href="<?php echo Yii::app()->request->baseUrl; ?>/css/ie.css" media="screen, projection" rel="stylesheet" type="text/css" />
<![endif]-->

<link href=" <?php echo Yii::app()->request->baseUrl; ?>/css/main.css" rel="stylesheet" type="text/css" /><link href=" <?php echo Yii::app()->request->baseUrl; ?>/css/form.css" rel="stylesheet" type="text/css" /><title>
<?php echo $this->pageTitle; ?>

</title></head><body>
<div class="container" id="page">
<div id="header">
<div id="logo">
<?php echo CHtml::encode(Yii::app()->name); ?>

</div></div><!--header  -->
<div id="mainmenu">
<?php
$this->widget('zii.widgets.CMenu',array(
  'items'=>array(
    array('label'=>'Home', 'url'=>array('/site/index')),
    array('label'=>'About', 'url'=>array('/site/page', 'view'=>'about')),
    array('label'=>'Contact', 'url'=>array('/site/contact')),
    array('label'=>'Logout ('.Yii::app()->user->name.')', 'url'=>array('/site/logout'), 'visible'=>!Yii::app()->user->isGuest)
  ),
));
?>
</div><!--mainmenu  -->
<?php
if(isset($this->breadcrumbs)){
  $this->widget('zii.widgets.CBreadcrumbs', array(
    'links'=>$this->breadcrumbs,
  ));
}
?>
<?php echo $content; ?>

<!--content  -->
<div class="clear">
</div><div id="footer">
Copyright &copy; <?php echo date('Y'); ?> by My Company.
<br />All Rights Reserved
<br /><?php echo Yii::powered(); ?>

</div><!--footer  -->
</div><!--page  -->
</body></html>