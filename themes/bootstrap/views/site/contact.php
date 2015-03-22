<?php
/* @var $this SiteController */
/* @var $model ContactForm */
/* @var $form CActiveForm */

$modelPage = Pages::model()->pageCategory('contact')->find();

$this->pageTitle=Yii::app()->name . $modelPage->title;
$this->breadcrumbs=array(
	'Contact',
);
?>

<?php echo TbHtml::pageHeader($modelPage->title,CHtml::encode($modelPage->short_description)) ?>

	<div class="row-fluid">
		<div class="span4 contact-form">
			<?php
				if(Yii::app()->user->hasFlash('contact'))
					echo TbHtml::blockAlert(TbHtml::ALERT_COLOR_SUCCESS, Yii::app()->user->getFlash('contact'), array('class'=>'text-center'));
				else
					$this->renderPartial('//layouts/_contactForm', array('model'=>$model));
			?>
		</div>
		<div class="span7 offset1 contact-office">
			<div class="main-content">
				<?php echo $modelPage->full_description; ?>
			</div>
		</div>
	</div>
