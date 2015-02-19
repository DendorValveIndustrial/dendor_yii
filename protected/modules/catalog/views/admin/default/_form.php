<?php
/* @var $this CatalogItemsController */
/* @var $model CatalogItems */
/* @var $form TbActiveForm */
?>

<div class="form">

	<?php $form=$this->beginWidget('bootstrap.widgets.TbActiveForm', array(
		'id'=>'catalog-items-form',
		'enableAjaxValidation'=>false,
		'layout' => TbHtml::FORM_LAYOUT_HORIZONTAL,
		'htmlOptions'=>array('enctype'=>'multipart/form-data'),
	)); ?>

		<?php echo TbHtml::blockAlert(TbHtml::ALERT_COLOR_WARNING, Yii::t('admin','fields_required'), array('class'=>'text-center')); ?>

		<?php echo $form->errorSummary($model); ?>

		<div class="row-fluid">
			<div class="span10">
				<div class="row-fluid">
					<div class="span9">
						<?php echo $form->dropDownListControlGroup($model, 'group_id', CatalogGroup::model()->listSelect); ?>
					</div>
					<div class="span3">
						<?php echo TbHtml::link(Yii::t('admin','new_category'), Yii::app()->createUrl('/catalog/admin/catalogGroup/create')); ?>
					</div>
				</div>
				<?php echo $form->textFieldControlGroup($model,'name',array('span'=>12,'maxlength'=>255)); ?>
				<?php echo $form->textFieldControlGroup($model,'url',array('span'=>12)); ?>
				<?php echo $form->fileFieldControlGroup($model,'img'); ?>
			</div>
			<div class="span2">
				<?php
					if($model->image) echo TbHtml::imagePolaroid(CatalogGroup::model()->getUploadPath($model->group_id).$model->image, $model->name);
				?>
			</div>
		</div>
		<div class="line line-dotted"></div>
		<div class="row-fluid">
			<?php
				$this->widget('bootstrap.widgets.TbTabs', array(
					'tabs' => array(
						array('label' => Yii::t('admin', 'additionally'), 'content' =>
							$form->textFieldControlGroup($model,'created',array('span'=>6)).
							$form->textFieldControlGroup($model,'publish',array('span'=>6)).
							$form->textFieldControlGroup($model,'end_date',array('span'=>6)).
							$form->checkBoxControlGroup($model,'active').
							$form->textFieldControlGroup($model,'sorting',array('span'=>2))
							, 'htmlOptions'=>array('class'=>'pull-right')
						),
						array('label' => Yii::t('admin', 'seo'), 'content' =>
							$form->textFieldControlGroup($model,'meta_title',array('span'=>12)).
							$form->textAreaControlGroup($model,'meta_description',array('rows'=>6,'span'=>12)).
							$form->textFieldControlGroup($model,'meta_keywords',array('span'=>12))
							, 'htmlOptions'=>array('class'=>'pull-right')
						),
						array('label' => Yii::t('admin', 'content'), 'content' =>
							$form->textAreaControlGroup($model,'short_description',array('rows'=>6,'span'=>12)).
							$form->textAreaControlGroup($model,'full_description',array('rows'=>6,'span'=>12)).
							$form->textFieldControlGroup($model,'price',array('span'=>2,'maxlength'=>12)).
							$form->textFieldControlGroup($model,'modification_id',array('span'=>2))
							, 'active' => true
							, 'htmlOptions'=>array('class'=>'pull-right')
						),
					),
				));
			?>
		</div>
		<div class="form-actions">
			<?php echo TbHtml::submitButton($model->isNewRecord ? 'Create' : 'Save',array(
				'color'=>TbHtml::BUTTON_COLOR_PRIMARY,
				'size'=>TbHtml::BUTTON_SIZE_LARGE,
			)); ?>
		</div>

		<?php $this->endWidget(); ?>

</div><!-- form -->
