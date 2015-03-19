<?php
/* @var $this DefaultController */

$this->breadcrumbs=array(
	$this->module->id,
);

?>
<?php echo TbHtml::pageHeader(Yii::t('admin', 'modules'),''); ?>


<?php
  echo TbHtml::thumbnails(
    array(
      array('url' => Yii::app()->createUrl('/catalog/admin/default/admin'), 'label' => Yii::t('admin','catalog')),
      array('url' => Yii::app()->createUrl('/languages/admin/default/admin'), 'label' => Yii::t('admin','languages'), 'visible' => Yii::app()->user->name === 'admin'),
      array('url' => Yii::app()->createUrl('/news/admin/default'), 'label' => Yii::t('admin','news')),
      array('url' => Yii::app()->createUrl('/pages/admin/default/admin'), 'label' => Yii::t('admin','pages')),
      array('url' => Yii::app()->createUrl('/sliders/admin/default/admin'), 'label' => Yii::t('admin','sliders')),
      array('url' => Yii::app()->createUrl('/users/admin/default/admin'), 'label' => Yii::t('admin','users'), 'visible' => Yii::app()->user->name === 'admin'),
      array('url' => 'http://new.dendor.pl/phplite', 'label' => Yii::t('admin','phpLiteAdmin'), 'visible' => Yii::app()->user->name === 'admin'),
      //array('image' => 'http://placehold.it/180x180', 'url' => '#', 'label' => 'Thumbnail label', 'caption' => '...'),
    ),
    array('span' => 2, 'class' => 'text-center')
  );
?>
