<div class="home-news-events">
  <?php echo CHtml::tag('h2',array('class'=>'h1'),Yii::t('app','events')) ?>
  <div class="row-fluid">
    <div class="span6">
      <?php $latest_news = News::model()->filterByCategory(2)->find(); ?>
      <div class="media">
        <div class="pull-left">
          <?php echo TbHtml::link(TbHtml::image($latest_news->image ? NewsCategory::model()->getUploadPath($latest_news->category_id).$latest_news->image : Yii::app()->params['uploadPath'].'news/event_free.png', $latest_news->title, array('class'=>'media-object img-hover img-polaroid')), $latest_news->viewUrl); ?>
        </div>
        <div class="media-body">
          <?php echo TbHtml::tag('h3', array('class'=>'h2'), TbHtml::link($latest_news->title, $latest_news->viewUrl)) ?>
          <?php echo substr($latest_news->short_description, 0, 150).'...'; ?>
        </div>
      </div>
    </div>
    <div class="span6">
      <?php $latest_news = News::model()->filterByCategory(1)->find();?>
      <div class="media">
        <div class="pull-left">
          <?php echo TbHtml::link(TbHtml::image($latest_news->image ? NewsCategory::model()->getUploadPath($latest_news->category_id).$latest_news->image : Yii::app()->params['uploadPath'].'news/news_free.png', $latest_news->title, array('class'=>'media-object img-hover img-polaroid')), $latest_news->viewUrl); ?>
        </div>
        <div class="media-body">
          <?php echo TbHtml::tag('h3', array('class'=>'h2'), TbHtml::link($latest_news->title, $latest_news->viewUrl)) ?>
          <?php echo substr($latest_news->short_description, 0, 150).'...'; ?>
        </div>
      </div>
    </div>
  </div>
</div>
