<?php
/* @var $this NewsController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
  'News',
);

$this->menu=array(
  array('label'=>'Create News', 'url'=>array('create')),
  array('label'=>'Manage News', 'url'=>array('admin')),
);
?>

<h1>News</h1>
<?php var_dump($model->name); ?>
<?php var_dump($pages); ?>
