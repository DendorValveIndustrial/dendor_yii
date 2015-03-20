<?php
/* @var $this NewsController */
/* @var $model News */
$this->layout = '//layouts/catalog/view_item';

$this->pageTitle = CHtml::encode($model->meta_title);
$this->metaDescription = CHtml::encode($model->meta_description);
$this->metaKeywords = CHtml::encode($model->meta_keywords);

$this->breadcrumbs=array(
	$group->name => Yii::app()->createUrl('catalog/catalog/list', array('group'=>$group->url)),
	$model->name,
);

$this->pageHeaderTitle = $model->title;
$this->pageHeader = $model->name;
$this->subtextHeader = '';
?>
<div class="span3 left-bar">
	<div class="span10 text-right">
		<div class="item-image">
			<?php if($model->image) echo TbHtml::image(CatalogGroup::model()->getUploadPath($model->group_id).$model->image, $model->name); ?>
		</div>
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
<div class="span9">
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

