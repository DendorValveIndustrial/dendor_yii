<?php
class LangSwitchWidget extends CWidget {

  public $url;
  public $class = 'inline';
  public $cssBody = false;

  /**
   * @var array HTML attributes for the menu's root container tag.
   */
  public $htmlOptions = array();

  public function init(){
    $this -> publishAssets();
  }

  public function run()
  {
    self::addCssClass('langswitch', $this->htmlOptions);

    $url = $this->url;

    $defaultLang = Yii::app()->languageManager->default;

    $currentLang = Yii::app()->languageManager->active;
    $currentId = $currentLang->id;

    $langs = array();

    $langs[0] = array('label'=> Yii::t('LanguagesModule.app', 'language'), 'itemOptions'=>array('class'=>'label-switch'));

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
    $cs = Yii::app()->clientScript;
    if ($cssBody !== false) {
      $cs->registerCss('langswitch','.langswitch img{vertical-align:inheerit}.navbar .langswitch .label-switch{line-height:45px;color:#999;margin-right:5px}.navbar .langswitch>li>a{padding-top:12.5px;padding-right:6px;padding-bottom:12.5px;padding-left:6px}.navbar .langswitch>li>a>img{vertical-align:middle}','all');
    }
    else {
      if (is_dir($assets)) {
        $cs->registerCssFile($baseUrl.'/css/langswitch.css');
      }
      else {
        throw new CHttpException(500, __CLASS__ . ' - Error: Couldn\'t find assets to publish.');
      }
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
      return CHtml::image($baseUrl.'/images/flags/png/'.$lang->flag_name, $lang->name, array(
        'width'=>16,
        'height'=>11,
      )).' ';
    }
  }

  /**
  * Appends new class names to the given options..
  * @param mixed $className the class(es) to append.
  * @param array $htmlOptions the options.
  * @return array the options.
  */
  public static function addCssClass($className, &$htmlOptions)
  {
     // Always operate on arrays
     if (is_string($className)) {
         $className = explode(' ', $className);
     }
     if (isset($htmlOptions['class'])) {
         $classes = array_filter(explode(' ', $htmlOptions['class']));
         foreach ($className as $class) {
             $class = trim($class);
             // Don't add the class if it already exists
             if (array_search($class, $classes) === false) {
                 $classes[] = $class;
             }
         }
         $className = $classes;
     }
     $htmlOptions['class'] = implode(' ', $className);
  }
}
