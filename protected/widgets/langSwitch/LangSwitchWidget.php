<?php
class LangSwitchWidget extends CWidget {

  public function init(){
    $this->getUrl();
  }

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
          'label'=>CHtml::encode($lang['code']),
          'url'=>CHtml::normalizeUrl($prefixLang.urldecode($url)),
        );
      }
      else
        $currentLang = $lang;
    }

    $this->widget('zii.widgets.CMenu', array(
      'items'=>$langs,
      'encodeLabel'=>false
    ));
  }

  public function getUrl($ampersand = '&')
  {
    $controller = Yii::app()->controller;
    $result = Yii::app()->urlManager->createUrl($controller->id.'/'.$controller->action->id, $_GET, $ampersand, false);
    return $result;
  }
}
