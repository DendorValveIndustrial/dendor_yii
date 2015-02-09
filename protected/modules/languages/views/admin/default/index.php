<?php
/* @var $this SystemLanguageController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'System Languages',
);

$this->menu=array(
	array('label'=>'Create SystemLanguage', 'url'=>array('create')),
	array('label'=>'Manage SystemLanguage', 'url'=>array('admin')),
);
?>

<h1>System Languages</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
