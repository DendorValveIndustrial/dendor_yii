<?php
/* @var $this SearchFormController */
/* @var $model SearchForm */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'search-form-search-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// See class documentation of CActiveForm for details on this,
	// you need to use the performAjaxValidation()-method described there.
  'enableAjaxValidation'=>false,
	//'method'=>'get',
)); ?>

<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php //echo $form->labelEx($model,'q'); ?>
		<?php echo $form->textField($model,'q'); ?>
		<?php //echo $form->error($model,'q'); ?>
	</div>


	<div class="row buttons">
		<?php echo CHtml::submitButton('Submit'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->

<div class="qwery">
  <?php echo CHtml::encode($model->q); ?>
</div>
<?php
  Yii::app()->clientScript->registerScript(
    'googleSearch',
    "(function() {
    var cx = '002321161471768174809:2gxw9iecfem';
    var gcse = document.createElement('script');
      gcse.type = 'text/javascript';
      gcse.async = true;
      gcse.qwery = 'dendor';
      gcse.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') + '//www.google.com/cse/cse.js?cx=' + cx;
    var s = document.getElementsByTagName('script')[0];
    s.parentNode.insertBefore(gcse, s); })();",
    CClientScript::POS_END
    );
?>
<gcse:searchresults-only></gcse:searchresults-only>
