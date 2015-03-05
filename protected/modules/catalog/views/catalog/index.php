<?php
/* @var $this CatalogController */
$pagePropuctions = Pages::model()->pageCategory('productions')->find();
$this->pageTitle = CHtml::encode($pagePropuctions->meta_title);
$this->metaDescription = CHtml::encode($pagePropuctions->meta_description);
$this->metaKeywords = CHtml::encode($pagePropuctions->meta_keywords);

$this->pageHeader =  CHtml::encode($pagePropuctions->title);

$this->breadcrumbs=array(
	Yii::t('app', 'production'),
);

$aCatalogGroup_chunk = array_chunk(CatalogGroup::model()->findAll(), 2, true);

?>

<?php foreach ($aCatalogGroup_chunk as $aCatalogGroup): ?>
  <div class="line line-dotted"></div>
  <div class="row-fluid">
    <?php foreach ($aCatalogGroup as $model): ?>
      <section class="catalog-group span6">
        <?php echo CHtml::tag('h2', array('class'=>'group-head'), $model->name) ?>
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
