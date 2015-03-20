<?php
/* @var $this CatalogController */

$this->layout='//layouts/full_page';
Yii::app()->clientScript->registerCssFile(CHtml::asset(Yii::getPathOfAlias('webroot.themes.bootstrap.assets').'/css/catalog.css'));

$pageProductions = Pages::model()->pageCategory('productions')->find();
$this->pageTitle = CHtml::encode($pageProductions->meta_title);
$this->metaDescription = CHtml::encode($pageProductions->meta_description);
$this->metaKeywords = CHtml::encode($pageProductions->meta_keywords);

/*$this->pageHeader =  CHtml::encode($pageProductions->title);

$this->imgSlider = CHtml::asset(Yii::getPathOfAlias('webroot.themes.bootstrap.assets').'/img/slide1.png');
$this->showSlider = true;*/

$this->breadcrumbs=array(
	Yii::t('app', 'production'),
);

$aCatalogGroup_chunk = array_chunk(CatalogGroup::model()->findAll(), 2, true);

$this->pageHeader = CHtml::encode($pageProductions->title);

?>
<?php foreach ($aCatalogGroup_chunk as $aCatalogGroup): ?>
  <div class="line line-dotted"></div>
  <div class="row-fluid">
    <?php foreach ($aCatalogGroup as $model): ?>
      <section class="catalog-group span6 clearfix">
        <?php echo CHtml::tag('h2', array('class'=>'group-head text-right'), $model->name) ?>
        <div class="group-image pull-left">
          <?php echo TbHtml::link(TbHtml::image(CatalogGroup::model()->getUploadPath($model->id).$model->image, $model->name),$model->viewUrl); ?>
        </div>
        <div class="group-items pull-left">
          <ul class="list-items checkarrow">
            <?php
              foreach ($model->groupItems as $modelItem)
                echo CHtml::tag('li',array(),CHtml::link($modelItem->name, $modelItem->viewUrl));
            ?>
          </ul>
        </div>
      </section>
    <?php endforeach; ?>
  </div>
<?php endforeach; ?>
