<?php
class LangSwitchWidget extends CWidget {
  public function run()
  {
    $controller = Yii::app()->controller;
    $action = ($controller->action->id != 'index')? '/'.$controller->action->id : '';
    $url = Yii::app()->urlManager->createUrl($controller->id.$action, $_GET,'&',false);

    $currentLang = Yii::app()->languageManager->default;
    $currentId = $currentLang->id;
    $langs = array();

    foreach(Yii::app()->languageManager->languages as $lang)
    {
      if($currentId != $lang->id)
      {
        $langs[] = array(
          'label'=>CHtml::encode($lang['name']),
          'url'=>'/'.$lang['code'].urldecode($url),
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
}
