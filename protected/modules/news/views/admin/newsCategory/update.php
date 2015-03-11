<?php
/* @var $this NewsCategoryController */
/* @var $model NewsCategory */
?>

<?php
$this->breadcrumbs=array(
	'News Categories' => array('index'),
	$model->name => array('view', 'id'=>$model->id),
	'Update',
);

$this->menu=array(
  array('label'=>Yii::t('admin', 'Category')),
  array('label'=>Yii::t('admin','Create'), 'url'=>array('create'), 'visible'=>Yii::app()->user->name === 'admin'),
  array('label'=>Yii::t('admin','Manage'), 'url'=>array('admin')),
  TbHtml::menuDivider(),
  array('label'=>Yii::t('admin','news')),
  array('label'=>Yii::t('admin','Manage'), 'url'=>array('/news/admin/default/index')),
);
?>

<?php echo TbHtml::pageHeader(Yii::t('admin','Update'),$model->name); ?>
<?php $this->renderPartial('_form', array('model'=>$model)); ?>
