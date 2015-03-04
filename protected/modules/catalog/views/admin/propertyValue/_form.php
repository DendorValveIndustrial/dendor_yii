<?php
/* @var $this PropertyValueController */
/* @var $model PropertyValue */
/* @var $form TbActiveForm */
?>

<div class="form">

	<?php
		$form=$this->beginWidget('bootstrap.widgets.TbActiveForm', array(
			'id'=>'property-value-form',
			'enableAjaxValidation'=>false,
		));
	?>

		<p class="help-block">Fields with <span class="required">*</span> are required.</p>

		<?php echo $form->errorSummary($model, $item); ?>

		<?php echo $form->dropDownListControlGroup($model, 'property_id', Property::model()->listSelect); ?>

		<?php echo $form->hiddenField($model,'entity_id',array('value'=>$item->id)); ?>

		<?php //echo $form->textAreaControlGroup($model,'value',array('rows'=>2,'span'=>8)); ?>

		<?php echo $this->renrerActionFormField($model, 'value'); ?>

		<div class="form-actions">
			<?php
				echo TbHtml::submitButton($model->isNewRecord ? 'Create' : 'Save',array(
					'color'=>TbHtml::BUTTON_COLOR_PRIMARY,
					'size'=>TbHtml::BUTTON_SIZE_LARGE,
				));
			?>
		</div>

	<?php $this->endWidget(); ?>


</div><!-- form -->
