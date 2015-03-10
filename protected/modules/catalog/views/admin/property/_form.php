<?php
/* @var $this PropertyController */
/* @var $model Property */
/* @var $form TbActiveForm */
?>

<div class="form">

    <?php $form=$this->beginWidget('bootstrap.widgets.TbActiveForm', array(
	'id'=>'property-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>

    <p class="help-block">Fields with <span class="required">*</span> are required.</p>

    <?php echo $form->errorSummary($model); ?>

            <?php echo $form->textFieldControlGroup($model,'system_name',array('span'=>5,'maxlength'=>255, 'disabled'=>Yii::app()->user->name != 'admin')); ?>

            <?php echo $form->textFieldControlGroup($model,'name',array('span'=>5,'maxlength'=>255)); ?>

            <?php echo $form->textAreaControlGroup($model,'description',array('rows'=>6,'span'=>5)); ?>

            <?php echo $form->dropDownListControlGroup($model,'type',$model->typesList,array('disabled'=>Yii::app()->user->name != 'admin')); ?>

            <?php echo $form->textFieldControlGroup($model,'sorting',array('span'=>5)); ?>

            <?php echo $form->checkBoxControlGroup($model,'main'); ?>

            <?php echo $form->checkBoxControlGroup($model,'required'); ?>

        <div class="form-actions">
        <?php echo TbHtml::submitButton($model->isNewRecord ? 'Create' : 'Save',array(
		    'color'=>TbHtml::BUTTON_COLOR_PRIMARY,
		    'size'=>TbHtml::BUTTON_SIZE_LARGE,
		)); ?>
    </div>

    <?php $this->endWidget(); ?>

</div><!-- form -->
