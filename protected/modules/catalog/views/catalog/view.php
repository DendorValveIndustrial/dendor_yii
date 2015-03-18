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

$this->pageHeader = $model->title;
$this->subtextHeader = $model->name
?>
<div class="span9 pull-right">
	<div class="main-content" id="content">
		<?php
			if (trim($model->full_description) != '')
				echo TbHtml::tag('div', array('class'=>'text-item'), $model->full_description);
		?>
		<div class="properties">
			<?php
				$aProperty = $model->property(array('condition'=>'main=0'));
				$this->renderPartial('_view_property', array(
					'model'=>$model,
					'aProperty'=>$aProperty,
				));
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

