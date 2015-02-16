<?php
/* @var $this CatalogItemsController */
/* @var $model CatalogItems */
/* @var $form TbActiveForm */
?>

<div class="form">

    <?php $form=$this->beginWidget('bootstrap.widgets.TbActiveForm', array(
	'id'=>'catalog-items-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
    'htmlOptions'=>array('enctype'=>'multipart/form-data'),
)); ?>

    <p class="help-block">Fields with <span class="required">*</span> are required.</p>

    <?php echo $form->errorSummary($model); ?>
            <?php echo $form->dropDownListControlGroup($model, 'group_id', CatalogGroup::model()->listSelect); ?>
            <?php echo $form->textFieldControlGroup($model,'name',array('span'=>12,'maxlength'=>255)); ?>
            <?php echo $form->textFieldControlGroup($model,'url',array('span'=>12)); ?>
            <?php echo $form->fileFieldControlGroup($model,'img') ?>

            <?php echo $form->textFieldControlGroup($model,'group_id',array('span'=>5)); ?>

            <?php echo $form->textFieldControlGroup($model,'modification_id',array('span'=>5)); ?>

            <?php echo $form->textFieldControlGroup($model,'created',array('span'=>5)); ?>

            <?php echo $form->textFieldControlGroup($model,'publish',array('span'=>5)); ?>

            <?php echo $form->textFieldControlGroup($model,'end_date',array('span'=>5)); ?>

            <?php echo $form->textFieldControlGroup($model,'image',array('span'=>5,'maxlength'=>255)); ?>

            <?php echo $form->textFieldControlGroup($model,'price',array('span'=>5,'maxlength'=>12)); ?>

            <?php echo $form->textFieldControlGroup($model,'active',array('span'=>5)); ?>

            <?php echo $form->textFieldControlGroup($model,'sorting',array('span'=>5)); ?>

            <?php echo $form->textFieldControlGroup($model,'deleted',array('span'=>5)); ?>

        <div class="form-actions">
        <?php echo TbHtml::submitButton($model->isNewRecord ? 'Create' : 'Save',array(
		    'color'=>TbHtml::BUTTON_COLOR_PRIMARY,
		    'size'=>TbHtml::BUTTON_SIZE_LARGE,
		)); ?>
    </div>

    <?php $this->endWidget(); ?>

</div><!-- form -->
