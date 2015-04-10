<?php
/* @var $this CertificatesController */
/* @var $dataProvider CActiveDataProvider */
?>

<?php
$this->breadcrumbs=array(
	'Certificates',
);

$this->menu=array(
	array('label'=>'Create Certificates','url'=>array('create')),
	array('label'=>'Manage Certificates','url'=>array('admin')),
);
?>

<h1>Certificates</h1>

<?php $this->widget('bootstrap.widgets.TbListView',array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>