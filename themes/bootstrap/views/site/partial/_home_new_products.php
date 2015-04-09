<div class="home-new-products">
  <?php echo CHtml::tag('h2',array('class'=>'h1'),Yii::t('app','New products')); ?>
  <?php $aNewProduct = CatalogItems::model()->new()->findAll(); ?>
  <?php
    $thumbnails = array();
    foreach ($aNewProduct as $oItem) {
      $thumbnails[] = array('image' => CatalogGroup::model()->getUploadPath($oItem->group_id).$oItem->image, 'label' => false, 'caption' => $oItem->name, 'htmlOptions'=>array('class' => 'new-products-item'), 'url'=>$oItem->viewUrl);
    }
    echo TbHtml::thumbnails($thumbnails, array('span' => 3));
  ?>
</div>
