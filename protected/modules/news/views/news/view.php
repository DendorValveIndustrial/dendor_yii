<?php
/* @var $this NewsController */
/* @var $model News */
$this->pageTitle = CHtml::encode($model->meta_title);
$this->metaDescription = CHtml::encode($model->meta_description);
$this->metaKeywords = CHtml::encode($model->meta_keywords);

$this->breadcrumbs=array(
	Yii::t('app','news')=>array('index'),
	$category->name => Yii::app()->createUrl('news/news/list', array('path'=>$category->url)),
	$model->title,
);

if (empty($category))
	unset($this->breadcrumbs['']);

$this->menu=array(
	array('label'=>'Manage News', 'url'=>array('admin/default')),
	array('label'=>'Create News', 'url'=>array('admin/default/create')),
	array('label'=>'Update News', 'url'=>array('admin/default/update', 'id'=>$model->id)),
	array('label'=>'Delete News', 'url'=>'#', 'linkOptions'=>array('submit'=>array('admin/default/delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
  array('label'=>'Manage News Category', 'url'=>array('admin/newsCategory/admin')),
  array('label'=>Yii::t('app', 'logout'), 'url'=>array('/site/logout')),
);

$this->pageHeader = $model->title;
?>
<div class="span9 pull-right">
	<div class="main-content" id="content">
		<div class="text-item">
			<?php echo $model->full_description; ?>
		</div>
	</div>
</div>
<div class="span3 pull-left left-bar text-right">
	<div class="span10">
	<?php if($model->image) echo TbHtml::tag('p',array(),TbHtml::imagePolaroid(Yii::app()->params['uploadPath'].$model->image, $model->title)); ?>
	<?php echo TbHtml::muted(TbHtml::icon(TbHtml::ICON_CALENDAR).' '.TbHtml::i(Yii::app()->dateFormatter->format('d MMMM yyyy', $model->publish_date))); ?>
	</div>
</div>

