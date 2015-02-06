<?php
/* @var $this NewsController */
/* @var $data News */
?>
<section>
	<?php echo CHtml::tag('h2',array('class'=>'h2'),CHtml::link(CHtml::encode($data->title), array('index', 'url'=>$data->url))); ?>
	<?php echo CHtml::tag('p',array(),CHtml::encode($data->short_description)); ?>
  <?php echo CHtml::tag('p',array('class'=>'text-right'),CHtml::link(Yii::t('app','read_more').'...', array('view', 'id'=>$data->id), array('class'=>'btn btn-link'))); ?>
</section>
<div class="line line-dotted"></div>
