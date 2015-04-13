<?php
/* @var $this CertificatesController */
/* @var $model Certificates */
?>

<?php
$this->breadcrumbs=array(
	'Certificates'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>Yii::t('app','Сertificate')),
	array('label'=>Yii::t('admin','Manage'), 'url'=>array('admin')),
);
?>

<?php echo TbHtml::pageHeader(Yii::t('admin','Create'),Yii::t('app','Сertificate')); ?>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>
