<?php
/* @var $this NewsController */
/* @var $model News */
$this->pageTitle = CHtml::encode($model->meta_title);
$this->metaDescription = CHtml::encode($model->meta_description);
$this->metaKeywords = CHtml::encode($model->meta_keywords);

$this->breadcrumbs=array(
	$group->name => Yii::app()->createUrl('catalog/catalog/list', array('group'=>$group->url)),
	$model->name,
);

/*$this->menu=array(
	array('label'=>'Manage News', 'url'=>array('admin/default')),
	array('label'=>'Create News', 'url'=>array('admin/default/create')),
	array('label'=>'Update News', 'url'=>array('admin/default/update', 'id'=>$model->id)),
	array('label'=>'Delete News', 'url'=>'#', 'linkOptions'=>array('submit'=>array('admin/default/delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
  array('label'=>'Manage News Category', 'url'=>array('admin/newsCategory/admin')),
  array('label'=>Yii::t('app', 'logout'), 'url'=>array('/site/logout')),
);
*/
$this->pageHeader = $model->name;
?>
<div class="span9 pull-right">
	<div class="main-content" id="content">
		<div class="text-item">
			<?php echo $model->full_description; ?>
		</div>
	</div>
</div>
<div class="span3 pull-left left-bar">
	<div class="span10 text-right">
		<?php if($model->image) echo TbHtml::image(CatalogGroup::model()->getUploadPath($model->group_id).$model->image, $model->name); ?>
		<div class="main-features-item">
	    <p>Zakres średnic: <strong>DN 32-1000</strong></p>
	    <p>Ciśnienia pracy: <strong>PN 10, PN 16</strong></p>
	    <p>Zakres temp.: <strong>od -25°C do +130°C</strong></p>
	    <p>max.temp.: <strong>+150°C</strong></p>
	  </div>
	  <?php var_dump($model->property_main); ?>
	</div>
</div>

