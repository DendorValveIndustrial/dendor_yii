<?php
/* @var $this CatalogGroupController */
/* @var $model CatalogGroup */
?>

<?php
$this->breadcrumbs=array(
	'Catalog Groups'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>Yii::t('admin','Catalog Group')),
  array('label'=>Yii::t('admin','View'), 'url'=>$model->viewUrl),
  array('label'=>Yii::t('admin','Create New Group'), 'url'=>array('create'), 'visible'=>Yii::app()->user->name === 'admin'),
  array('label'=>Yii::t('admin','Manage Groups'), 'url'=>array('admin')),
  TbHtml::menuDivider(),
  array('label'=>Yii::t('admin','Items')),
	array('label'=>Yii::t('admin','Manage Items'), 'url'=>array('/catalog/admin/default/admin')),
);
?>

<?php echo TbHtml::pageHeader(Yii::t('admin','Update'),$model->name); ?>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>
