<?php
/* @var $this CertificatesController */
/* @var $data Certificates */
?>

<div class="row-fluid">
	<div class="span3">
		<?php
      echo TbHtml::link(TbHtml::imagePolaroid(Yii::app()->params['uploadPath'].$this->module->id.'/'.$data->image, $data->title, array('class'=>'img-hover')),Yii::app()->params['uploadPath'].$this->module->id.'/'.$data->file, array('target'=>'_blank'));
    ?>
	</div>
	<div class="span7 offset1">
		<?php echo TbHtml::tag('h2', array('class'=>'h2 line-dotted'), $data->title); ?>
		<?php echo TbHtml::tag('p', array(), $data->description); ?>
	</div>
</div>
