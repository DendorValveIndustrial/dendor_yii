<?php
class LangSwitchWidget extends CWidget {

  public $url;
  public $class = 'inline';

  /**
   * @var array HTML attributes for the menu's root container tag.
   */
  public $htmlOptions = array();

  public function init(){
    $this -> publishAssets();
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
          'label'=>$this->getFlagImage($lang),//.CHtml::encode($lang['code']),
          'url'=>CHtml::normalizeUrl($prefixLang.urldecode($url)),
          'linkOptions'=>array('title'=>CHtml::encode($lang['name'])),
        );
      }
      else
        $currentLang = $lang;
    }

    $this->widget('zii.widgets.CMenu', array(
      'htmlOptions'=> $this->htmlOptions,
      'items'=>$langs,
      'encodeLabel'=>false
    ));
  }

  public function publishAssets()
  {
    $assets = dirname(__FILE__) . '/assets';
    $baseUrl = Yii::app() -> assetManager -> publish($assets);
    if (is_dir($assets)) {
      $cs = Yii::app()->clientScript;
      $cs->registerCssFile($baseUrl.'/css/langswitch.css');
    } else {
        throw new CHttpException(500, __CLASS__ . ' - Error: Couldn\'t find assets to publish.');
    }
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
