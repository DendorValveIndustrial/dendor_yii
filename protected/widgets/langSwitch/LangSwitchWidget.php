<?php
class LangSwitchWidget extends CWidget {

  public $class = 'inline';

  /*public function init(){
    $this->getUrl();
    $this->getFlagImage();
  }*/

  public function run()
  {
    $url = $this->url;

    $defaultLang = Yii::app()->languageManager->default;

    $currentLang = Yii::app()->languageManager->active;
    $currentId = $currentLang->id;

    $langs = array();

    foreach(Yii::app()->languageManager->languages as $lang)
    {
      $prefixLang = ($lang->id != $defaultLang->id) ? '/'.$lang['code'] : '';

      if($currentId != $lang->id)
      {
        $langs[] = array(
          'label'=>$this->getFlagImage($lang),//.CHtml::encode($lang['code']),
          'url'=>CHtml::normalizeUrl($prefixLang.urldecode($url)),
          'linkOptions'=>array('title'=>CHtml::encode($lang['name'])),
        );
      }
      else
        $currentLang = $lang;
    }

    $this->widget('zii.widgets.CMenu', array(
      'htmlOptions'=>array(
          'class'=>$this->class,
        ),
      'items'=>$langs,
      'encodeLabel'=>false
    ));
  }

  public function getUrl($ampersand = '&')
  {
    $object = Yii::app()->controller;
    $result = Yii::app()->urlManager->createUrl($object->id.'/'.$object->action->id, $_GET, $ampersand, false);
    return $result;
  }

  /**
   * Create flag image for lang
   * @param SSystemLanguage $lang
   * @return string
   */
  public function getFlagImage(SystemLanguage $lang)
  {
    $assets = dirname(__FILE__) . '/assets';
    $baseUrl = Yii::app() -> assetManager -> publish($assets);

    if($lang->flag_name)
    {
      return CHtml::image($baseUrl.'/images/flags/png/'.$lang->flag_name, null, array(
        'width'=>16,
        'height'=>11,
        'align'=>'absmiddle',
        'style'=>'margin-bottom:2px',
      )).' ';
    }
  }

}
