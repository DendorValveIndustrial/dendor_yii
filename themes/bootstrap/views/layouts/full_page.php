<?php $this->beginContent('//layouts/main') ?>
<?php if(!empty($this->pageHeader)): ?>
  <div class="row-fluid">
    <div class="span9 offset3">
      <?php echo TbHtml::pageHeader($this->pageHeader, $this->subtextHeader); ?>
    </div>
  </div>
<?php endif; ?>
<div class="row-fluid">
  <div class="main-content" id="content">
    <?php echo $content; ?>
  </div>
</div>
<?php $this->endContent(); ?>
