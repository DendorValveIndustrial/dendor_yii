<?php
/* @var $this NewsController */
/* @var $data News */
?>
<section>
	<?php echo CHtml::tag('h2',array('class'=>'h2'),CHtml::link(CHtml::encode($data->title), $data->viewUrl)); ?>
	<?php echo CHtml::tag('p',array(),CHtml::encode($data->short_description)); ?>
  <?php echo CHtml::tag('p',array('class'=>'text-right'),CHtml::link(Yii::t('app','read_more').'...', $data->viewUrl)); ?>
</section>
<div class="line line-dotted"></div>
