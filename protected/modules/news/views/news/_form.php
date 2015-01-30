<?php
/* @var $this NewsController */
/* @var $model News */
/* @var $form CActiveForm */
?>

<div class="form">

	<?php $form=$this->beginWidget('bootstrap.widgets.TbActiveForm', array(
		'id'=>'news-form',
		// Please note: When you enable ajax validation, make sure the corresponding
		// controller action is handling ajax validation correctly.
		// There is a call to performAjaxValidation() commented in generated controller code.
		// See class documentation of CActiveForm for details on this.
		'enableAjaxValidation'=>false,
	)); ?>

		<p class="help-block">Fields with <span class="required">*</span> are required.</p>

		<?php echo $form->errorSummary($model); ?>
			<div class="row-fluid">
				<div class="span6">

					<?php echo $form->textFieldControlGroup($model,'title',array('span'=>12,'maxlength'=>255)); ?>

				</div>
				<div class="span3">

					<?php echo $form->dropDownListControlGroup($model, 'category_id', NewsCategory::model()->listCategory); ?>

				</div>
			</div>
			<div class="line line-dotted"></div>
			<div class="row-fluid">
				<div class="span6">

					<?php echo $form->textFieldControlGroup($model,'url',array('span'=>12)); ?>

					<?php echo $form->textFieldControlGroup($model,'created',array('span'=>12)); ?>

					<?php echo $form->textFieldControlGroup($model,'updated',array('span'=>12)); ?>

					<?php echo $form->textFieldControlGroup($model,'publish_date',array('span'=>12)); ?>

					<?php echo $form->dropDownListControlGroup($model, 'status', $model->statuses()); ?>

					<?php echo $form->textFieldControlGroup($model,'layout',array('span'=>12)); ?>

					<?php echo $form->textFieldControlGroup($model,'view',array('span'=>12)); ?>

				</div>
				<div class="span6">

					<?php echo $form->textAreaControlGroup($model,'short_description',array('rows'=>6,'span'=>12)); ?>

					<?php echo $form->textAreaControlGroup($model,'full_description',array('rows'=>6,'span'=>12)); ?>

					<?php echo $form->textFieldControlGroup($model,'meta_title',array('span'=>12)); ?>

					<?php echo $form->textFieldControlGroup($model,'meta_description',array('span'=>12)); ?>

					<?php echo $form->textFieldControlGroup($model,'meta_keywords',array('span'=>12)); ?>

				</div>
			</div>

		<div class="form-actions">
			<?php echo TbHtml::submitButton($model->isNewRecord ? 'Create' : 'Save',array(
				'color'=>TbHtml::BUTTON_COLOR_PRIMARY,
				'size'=>TbHtml::BUTTON_SIZE_LARGE,
			)); ?>
		</div>

	<?php $this->endWidget(); ?>


</div><!-- form -->
