<!-- full_page -->
<?php $this->beginContent('//layouts/main') ?>
<?php if(!empty($this->pageHeader)) echo TbHtml::pageHeader($this->pageHeader, $this->subtextHeader); ?>
<div class="row-fluid">
  <div class="main-content" id="content">
    <?php echo $content; ?>
  </div>
</div>
<?php $this->endContent(); ?>
