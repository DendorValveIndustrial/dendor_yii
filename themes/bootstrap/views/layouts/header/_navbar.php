<div class="navbar navbar-inverse navbar-<?php echo !$fixed ? 'static' : 'fixed'; ?>-top" role="navigation">
  <div class="navbar-inner">
    <div class="container">
      <?php echo CHtml::link($this->pageHeaderBrand, Yii::app()->createUrl('site/index'), array('class'=>'brand span3')); ?>
      <div class="main-menu" id="mainMenu">
        <?php
          $this->widget('zii.widgets.CMenu',array(
            'items'=>array(
              array('label'=>Yii::t('app', 'production'), 'url'=>array('/catalog/catalog/index'), 'active' => $this->id === 'catalog'),
              array('label'=>Yii::t('app', 'about'), 'url'=>array('/site/page', 'view'=>'about')),
              array('label'=>Yii::t('app', 'news'), 'url'=> array('/news/news/index')),
              array('label'=>Yii::t('app', 'price'), 'url'=>array('/site/page', 'view'=>'price')),
              array('label'=>Yii::t('app', 'contact'), 'url'=>array('/site/contact'), 'itemOptions'=>array('class'=>'contact')),
              array('label'=>Yii::t('app', 'admin').' ('.Yii::app()->user->name.')', 'url'=>array('admin/default/index'), 'visible'=>!Yii::app()->user->isGuest)
            ),
            'activeCssClass'=>'active',
            'htmlOptions'=>array(
              'class'=>'nav',
            ),
          ));
        ?>
      </div>
      <button id="mainMenuShow" class="btn btn-navbar pull-right main-menu-show"><i class="fa fa-bars fa-fw"></i></button>
      <?php $this->widget('application.modules.languages.widgets.langSwitch.LangSwitchWidget', array('url'=>$this->url, 'htmlOptions'=>array('class'=>'nav pull-right country'))); ?>
    </div>
  </div>
</div>
