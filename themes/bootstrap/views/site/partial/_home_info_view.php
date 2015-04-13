<div class="span6">
  <div class="media">
    <?php echo TbHtml::link(TbHtml::imagePolaroid(Yii::app()->params['uploadPath'].'pages/'.$model->image, $model->title,array('class'=>'media-object img-hover','width'=>'120', 'height'=>'85')),$model->viewUrl,array('class'=>'pull-left home-price')); ?>
    <div class="media-body">
      <?php echo TbHtml::tag('h3', array('class'=>'h2 line-dotted'), $model->name) ?>
      <?php echo TbHtml::tag('p', array(), $model->short_description) ?>
      <div class="text-right">
        <?php
        if($model->system_name != 'price')
        {
          echo TbHtml::link(Yii::t('app', 'more_info'), $model->viewUrl, array('class'=>'btn-link'));
        }
        else{
          echo TbHtml::link(Yii::t('app', 'download_price'), (Yii::app()->language != 'pl')?Yii::app()->params['uploadPath'].'price/price_euro.pdf':Yii::app()->params['uploadPath'].'price/price_pol.pdf', array('class'=>'btn-link', 'target'=>'_blank'));
        }
        ?>
      </div>
    </div>
  </div>
</div>
