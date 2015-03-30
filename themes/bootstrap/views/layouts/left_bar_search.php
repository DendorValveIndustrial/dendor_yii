<!-- left_bar_search -->
<?php $this->beginContent('//layouts/main') ?>
<?php if(!empty($this->pageHeader)): ?>
  <div class="row-fluid">
    <div class="span9 offset3">
      <?php echo TbHtml::pageHeader($this->pageHeader, $this->subtextHeader); ?>
    </div>
  </div>
<?php endif; ?>
<div class="row-fluid">
  <div class="span3 left-bar search text-right">
    <div id="sidebar" class="span11">
      <ul class="nav nav-list">
        <li class="nav-header">
          <?php echo Yii::t('app', 'Search form'); ?>
        </li>
        <li>
          <?php echo TbHtml::beginFormTb(TbHtml::FORM_LAYOUT_SEARCH, Yii::app()->createUrl('site/search'), 'get'); ?>
            <?php echo TbHtml::searchQueryField('q', '', array('append' => TbHtml::submitButton('<i class="icon-search"></i>'), 'span' => 11)); ?>
          <?php echo TbHtml::endForm(); ?>
        </li>
      </ul>
    </div>
  </div>
  <div class="span9">
    <div class="main-content" id="content">
      <?php echo $content; ?>
    </div>
  </div>
</div>
<?php $this->endContent(); ?>
