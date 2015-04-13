<?php
/* @var $this CertificatesController */
/* @var $model Certificates */


$this->breadcrumbs=array(
	'Certificates'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>Yii::t('app','Сertificate')),
	array('label'=>Yii::t('admin','Create'), 'url'=>array('create'), 'visible'=>Yii::app()->user->name === 'admin'),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#certificates-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<?php echo TbHtml::pageHeader(Yii::t('admin','Manage'),Yii::t('app','Сertificate')); ?>

<p>
    You may optionally enter a comparison operator (<b>&lt;</b>, <b>&lt;=</b>, <b>&gt;</b>, <b>&gt;=</b>, <b>
        &lt;&gt;</b>
or <b>=</b>) at the beginning of each of your search values to specify how the comparison should be done.
</p>

<?php echo CHtml::link('Advanced Search','#',array('class'=>'search-button btn')); ?>
<div class="search-form" style="display:none">
<?php $this->renderPartial('_search',array(
	'model'=>$model,
)); ?>
</div><!-- search-form -->

<?php $this->widget('bootstrap.widgets.TbGridView',array(
	'id'=>'certificates-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
    array(
      'name'=>'id',
      'value' => '$data->id',
      'htmlOptions'=>array('class'=>'span1'),
    ),
		'name',
		'image',
		'file',
		'active',
		//'deleted',
		array(
			'class'=>'bootstrap.widgets.TbButtonColumn',
      'buttons'=>array(
        'delete'=>array(
          'visible'=>'Yii::app()->user->name === "admin"',
        ),
        'view'=>array(
          'visible'=>'false',
        ),
      ),
		),
	),
)); ?>
