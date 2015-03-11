<?php
/* @var $this SliderController */
/* @var $model Slider */
/* @var $form TbActiveForm */
?>

<div class="form">

    <?php $form=$this->beginWidget('bootstrap.widgets.TbActiveForm', array(
	'id'=>'slider-form',
	'enableAjaxValidation'=>false,
	'htmlOptions'=>array('enctype'=>'multipart/form-data'),

)); ?>

    <?php echo TbHtml::blockAlert(TbHtml::ALERT_COLOR_WARNING, Yii::t('admin','fields_required'), array('class'=>'text-center')); ?>

    <?php echo $form->errorSummary($model); ?>

            <?php echo $form->textFieldControlGroup($model,'data_slidr',array('span'=>6,'maxlength'=>6, 'disabled'=>Yii::app()->user->name != 'admin')); ?>

            <?php echo $form->textFieldControlGroup($model,'name',array('span'=>6,'maxlength'=>255)); ?>

            <?php echo $form->textAreaControlGroup($model,'text',array('rows'=>4, 'span'=>6,'maxlength'=>255)); ?>

						<?php if($model->img) echo TbHtml::imagePolaroid(Yii::app()->params['uploadPath'].'sliders/'.$model->img, $model->name); ?>
            <?php echo $form->fileFieldControlGroup($model,'img_file') ?>

            <?php echo $form->textFieldControlGroup($model,'link',array('span'=>5,'maxlength'=>255)); ?>

            <?php echo $form->checkBoxControlGroup($model,'active'); ?>

        <div class="form-actions">
        <?php echo TbHtml::submitButton($model->isNewRecord ? 'Create' : 'Save',array(
		    'color'=>TbHtml::BUTTON_COLOR_PRIMARY,
		    'size'=>TbHtml::BUTTON_SIZE_LARGE,
		)); ?>
    </div>

    <?php $this->endWidget(); ?>

</div><!-- form -->
