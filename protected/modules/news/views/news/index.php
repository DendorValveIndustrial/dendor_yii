<?php
/* @var $this NewsController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'News',
);

$this->menu=array(
  array('label'=>'Admin'),
	array('label'=>'Create News', 'url'=>array('create')),
  array('label'=>'Manage News', 'url'=>array('admin')),
);
?>

<!-- <h1>News</h1> -->

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
  'summaryText' => 'Страница {page}',
  'template' => '{items}{pager}{summary}',
)); ?>
