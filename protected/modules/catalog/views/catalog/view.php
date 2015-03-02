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
		<div class="properties">
			<?php
				$aProperty = $model->property(array('condition'=>'main=0'));
				$this->renderPartial('_view_property', array(
					'model'=>$model,
					'aProperty'=>$aProperty,
				));
				/*foreach($aProperty as $oProperty){
					echo CHtml::openTag('div', array('class'=>'item-property'));
					echo CHtml::tag('h3', array('class'=>'h3'), $oProperty->name);
					echo CHtml::openTag('ul');
					foreach ($oProperty->propertyValues(array('condition'=>'entity_id='.$model->id)) as $propertyValue)
						echo CHtml::tag('li', array(), $propertyValue->value);
					echo CHtml::closeTag('ul');
					echo CHtml::closeTag('div');
				}*/
			?>
		</div>
	</div>
</div>
<div class="span3 pull-left left-bar">
	<div class="span10 text-right">
		<?php if($model->image) echo TbHtml::image(CatalogGroup::model()->getUploadPath($model->group_id).$model->image, $model->name); ?>
		<div class="main-features-item">
			<?php
				$aProperty = $model->property(array('condition'=>'main=1'));
				$this->renderPartial('_main_property', array(
					'model'=>$model,
					'aProperty'=>$aProperty,
				));
			?>
	  </div>
	</div>
</div>

