<!-- left_bar -->
<?php $this->beginContent('//layouts/main') ?>
<?php if(!empty($this->pageHeader)): ?>
  <div class="row-fluid">
    <div class="span9 offset3">
      <?php echo TbHtml::pageHeader($this->pageHeader, $this->subtextHeader); ?>
    </div>
  </div>
<?php endif; ?>
<div class="row-fluid">
  <div class="span3 left-bar sidebar text-right">
    <div id="sidebar" class="span11">
      <?php
        $this->widget('bootstrap.widgets.TbNav', array(
          'type' => TbHtml::NAV_TYPE_LIST,
          'items' => $this->sidebar,
        ));
      ?>
    </div>
  </div>
  <div class="span9">
    <div class="main-content" id="content">
      <?php echo $content; ?>
    </div>
  </div>
</div>
<?php $this->endContent(); ?>
