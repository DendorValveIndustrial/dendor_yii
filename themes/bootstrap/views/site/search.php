<?php
/* @var $this SearchFormController */
/* @var $model SearchForm */
/* @var $form CActiveForm */

$this->pageTitle=Yii::app()->name . Yii::t('app', 'search');
$this->pageHeader=Yii::app()->name . Yii::t('app', 'search');
$this->breadcrumbs=array(
  Yii::t('app', 'search'),
);

Yii::app()->clientScript->registerScript(
  'googleSearch',
  "(function(){
      var cx = '002321161471768174809:2gxw9iecfem';
      var gcse = document.createElement('script');
      gcse.type = 'text/javascript';
      gcse.async = true;
      gcse.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') + '//www.google.com/cse/cse.js?cx=' + cx;
      var s = document.getElementsByTagName('script')[0];
      s.parentNode.insertBefore(gcse, s); })();
    var noQuery = document.getElementById('no-query');
    noQuery.style.display = (window.location.search != '')?'none':'block';",
  CClientScript::POS_END
  );
?>

<div class="row-fluid">
  <div class="span9 offset3"><?php echo TbHtml::pageHeader(Yii::t('app', 'search'),'') ?></div>
</div>

<div class="row-fluid">
  <div class="span3 left-bar search text-right">
    <div id="sidebar" class="span11">
      <ul class="nav nav-list">
        <li class="nav-header">
          <?php echo Yii::t('app', 'Search form'); ?>
        </li>
        <li>
          <?php $form = $this->beginWidget('bootstrap.widgets.TbActiveForm', array(
            'id'=>'search-form',
            'layout' => TbHtml::FORM_LAYOUT_SEARCH,
            'enableAjaxValidation'=>false,
          )); ?>

            <?php echo $form->searchQuery($model,'q', array('append' => TbHtml::submitButton('<i class="icon-search"></i>'), 'span' => 11, 'class'=>'search-query', 'value'=>$_GET['q'])); ?>

          <?php $this->endWidget(); ?>
        </li>
      </ul>
    </div>
  </div>
  <div class="span9">
    <div class="main-content" id="content">
      <p id="no-query">Enter your search query in the search form.</p>
      <div><gcse:searchresults-only></gcse:searchresults-only></div>
    </div>
  </div>
</div>
