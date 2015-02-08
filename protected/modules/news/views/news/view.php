<?php
/* @var $this NewsController */
/* @var $model News */

$this->breadcrumbs=array(
	Yii::t('app','news')=>array('index'),
	$category->name => Yii::app()->createUrl('news/news/list', array('path'=>$category->url)),
	$model->title,
);

if (empty($category))
	unset($this->breadcrumbs['']);

$this->menu=array(
	array('label'=>'List News', 'url'=>array('index')),
	array('label'=>'Create News', 'url'=>array('create')),
	array('label'=>'Update News', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete News', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage News', 'url'=>array('admin')),
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

<?php
	//$this->sidebar = CMap::mergeArray($this->sidebar, array('label' => Yii::t('app','category')));
	//var_dump($this->breadcrumbs['']);
?>
