<?php
/* @var $this SiteController */

$this->pageTitle=Yii::app()->name . ' - Search';
$this->breadcrumbs=array(
  'Search',
);

/*Yii::app()->clientScript->registerScript(
  'googleSearchScript'
  , "(function() {var cx = '002321161471768174809:2gxw9iecfem'; var gcse = document.createElement('script'); gcse.type = 'text/javascript'; gcse.async = true; gcse.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') + '//www.google.com/cse/cse.js?cx=' + cx; var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(gcse, s); })();var noQuery = document.getElementById('no-query'); noQuery.style.display = (window.location.search != '')?'none':'block';"
  , CClientScript::POS_END
);*/
?>
<h1>Search</h1>

<p id="no-query">Enter your search query in the search form.</p>
<div><gcse:searchresults-only></gcse:searchresults-only></div>
