<?php
/* @var $this NewsController */
/* @var $model News */
/* @var $form CActiveForm */
?>

<div class="form container">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'news-form',
	'htmlOptions'=>array(
			'class' => 'form-horizontal',
		),
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row-fluid">
		<div class='span6'>
			<div class="control-group">
				<?php echo $form->labelEx($model,'category_id', array('class'=>'control-label')); ?>
				<div class="controls">
					<?php echo $form->textField($model,'category_id'); ?>
				</div>
				<?php echo $form->error($model,'category_id'); ?>
			</div>

			<div class="control-group">
				<?php echo $form->labelEx($model,'url', array('class'=>'control-label')); ?>
				<div class="controls">
					<?php echo $form->textField($model,'url',array('size'=>60,'maxlength'=>255)); ?>
				</div>
				<?php echo $form->error($model,'url'); ?>
			</div>

			<div class="control-group">
				<?php echo $form->labelEx($model,'created', array('class'=>'control-label')); ?>
				<div class="controls">
					<?php echo $form->textField($model,'created'); ?>
				</div>
				<?php echo $form->error($model,'created'); ?>
			</div>

			<div class="control-group">
				<?php echo $form->labelEx($model,'updated', array('class'=>'control-label')); ?>
				<div class="controls">
					<?php echo $form->textField($model,'updated'); ?>
				</div>
				<?php echo $form->error($model,'updated'); ?>
			</div>

			<div class="control-group">
				<?php echo $form->labelEx($model,'publish_date', array('class'=>'control-label')); ?>
				<div class="controls">
					<?php echo $form->textField($model,'publish_date'); ?>
				</div>
				<?php echo $form->error($model,'publish_date'); ?>
			</div>

			<div class="control-group">
				<?php echo $form->labelEx($model,'status', array('class'=>'control-label')); ?>
				<div class="controls">
					<?php echo $form->textField($model,'status',array('size'=>60,'maxlength'=>255)); ?>
				</div>
				<?php echo $form->error($model,'status'); ?>
			</div>

			<div class="control-group">
				<?php echo $form->labelEx($model,'layout', array('class'=>'control-label')); ?>
				<div class="controls">
					<?php echo $form->textField($model,'layout',array('size'=>60,'maxlength'=>2555)); ?>
				</div>
				<?php echo $form->error($model,'layout'); ?>
			</div>

			<div class="control-group">
				<?php echo $form->labelEx($model,'view', array('class'=>'control-label')); ?>
				<div class="controls">
					<?php echo $form->textField($model,'view',array('size'=>60,'maxlength'=>255)); ?>
				</div>
				<?php echo $form->error($model,'view'); ?>
			</div>
		</div>
		<div class='span6'>
			<div class="control-group">
				<?php echo $form->labelEx($model,'title', array('class'=>'control-label')); ?>
				<div class="controls">
					<?php echo $form->textField($model,'title',array('size'=>60,'maxlength'=>255)); ?>
				</div>
				<?php echo $form->error($model,'title'); ?>
			</div>
			<div class="control-group">
				<?php echo $form->labelEx($model,'short_description', array('class'=>'control-label')); ?>
				<div class="controls">
					<?php echo $form->textArea($model,'short_description',array('rows'=>6, 'cols'=>50)); ?>
				</div>
				<?php echo $form->error($model,'short_description'); ?>
			</div>
			<div class="control-group">
				<?php echo $form->labelEx($model,'full_description', array('class'=>'control-label')); ?>
				<div class="controls">
					<?php echo $form->textArea($model,'full_description',array('rows'=>6, 'cols'=>50)); ?>
				</div>
				<?php echo $form->error($model,'full_description'); ?>
			</div>
			<div class="control-group">
				<?php echo $form->labelEx($model,'meta_title', array('class'=>'control-label')); ?>
				<div class="controls">
					<?php echo $form->textField($model,'meta_title',array('size'=>60,'maxlength'=>255)); ?>
				</div>
				<?php echo $form->error($model,'meta_title'); ?>
			</div>
			<div class="control-group">
				<?php echo $form->labelEx($model,'meta_keywords', array('class'=>'control-label')); ?>
				<div class="controls">
					<?php echo $form->textField($model,'meta_keywords',array('size'=>60,'maxlength'=>255)); ?>
				</div>
				<?php echo $form->error($model,'meta_keywords'); ?>
			</div>
			<div class="control-group">
				<?php echo $form->labelEx($model,'meta_description', array('class'=>'control-label')); ?>
				<div class="controls">
					<?php echo $form->textField($model,'meta_description',array('size'=>60,'maxlength'=>255)); ?>
				</div>
				<?php echo $form->error($model,'meta_description'); ?>
			</div>
		</div>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->
