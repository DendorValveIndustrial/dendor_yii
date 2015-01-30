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
		'layout' => TbHtml::FORM_LAYOUT_HORIZONTAL,
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
		<?php
		  $this->widget('bootstrap.widgets.TbTabs', array(
		    'tabs' => array(
		      array('label' => 'Основные', 'content' =>
		      	$form->textFieldControlGroup($model,'url',array('span'=>12)).
		      	$form->textFieldControlGroup($model,'created',array('span'=>12)).
		      	$form->textFieldControlGroup($model,'updated',array('span'=>12)).
		      	$form->textFieldControlGroup($model,'publish_date',array('span'=>12)).
		      	$form->textFieldControlGroup($model,'status',array('span'=>12)).
		      	$form->textFieldControlGroup($model,'layout',array('span'=>12)).
		      	$form->textFieldControlGroup($model,'view',array('span'=>12))
			     , 'active' => true),
		      array('label' => 'Описание', 'content' =>
		    		$form->textAreaControlGroup($model,'short_description',array('rows'=>6,'span'=>12)).
		    		$form->textAreaControlGroup($model,'full_description',array('rows'=>6,'span'=>12))
		     	),
		      array('label' => 'SEO', 'content' =>
		        $form->textFieldControlGroup($model,'meta_title',array('span'=>12)).
		        $form->textAreaControlGroup($model,'meta_description',array('rows'=>6,'span'=>12)).
		    		$form->textFieldControlGroup($model,'meta_keywords',array('span'=>12))
		      ),
		    ),
				'placement' => TbHtml::TABS_PLACEMENT_LEFT,
				)
			);
		?>
		<div class="form-actions">
			<?php echo TbHtml::submitButton($model->isNewRecord ? 'Create' : 'Save',array(
				'color'=>TbHtml::BUTTON_COLOR_PRIMARY,
				'size'=>TbHtml::BUTTON_SIZE_LARGE,
			)); ?>
		</div>

	<?php $this->endWidget(); ?>

</div><!-- form -->
