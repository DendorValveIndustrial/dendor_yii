<?php
  Yii::import('zii.widgets.CPortlet');

  class LanguageChange extends CPortlet
  {
    private $_lang;
    private $langParam = 'language';
    private $preferredLanguage = false;
    private $_aLangs = array();

    /**
     * The singleton instances.
     * @var mixed
     */
    static public $instance = NULL;

    /**
     * Register an existing instance as a singleton.
     * @return object
     */
    static public function instance()
    {
        if (is_null(self::$instance))
        {
            self::$instance = new self();
        }

        return self::$instance;
    }

    /*public function init()
    {
      $this->setAppLang();
      parent::init();
    }*/

    /**
    * @var string picker type.
    * Valid values are 'buttons', 'dropdown' and 'links'.
    */
    public $pickerType = 'links';

    /**
    * @var string inline ul class.
    */
    public $class = 'inline';


    /**
     * Получаем язык из настроек:
     *
     * @return string
     */
    public function getDefaultLang()
    {
      return $this->_lang = Yii::app()->language;
    }

    /**
     * Получаем язык из браузера:
     *
     * @return string
     */
    public function getPrefLang()
    {
      $request = Yii::app()->request;
      try {
        $aLocale = explode('_',$request->preferredLanguage);
        $this->_lang = ($aLocale[0] != $this->getCookieLang())
          ? $this->getCookieLang()
          : $aLocale[0];
      } catch (Exception $e) {
        $this->_lang = $this->getCookieLang();//Yii::app()->getLanguage();
      }
      return $this->_lang;
    }

    /**
     * Получаем язык из кукисов:
     *
     * @return string
     */
    public function getCookieLang()
    {
      $request = Yii::app()->request;
      try {
        $this->_lang = isset($request->cookies[$this->langParam])
          ? $request->cookies[$this->langParam]->value
          : $this->getDefaultLang();
      } catch (Exception $e) {
        $this->_lang = Yii::app()->getLanguage();
        Yii::app()->user->setFlash(
          YFlashMessages::ERROR_MESSAGE,
          $e->getMessage()
        );
       }
      return $this->_lang;
    }

    /**
     * Получаем массив списка доступных переводов
     *
     * @return array
     */
    public function getMessageLangDirs()
    {
      $translations = array();
      $dirs = new DirectoryIterator(Yii::app()->messages->basePath);
      foreach ($dirs as $dir)
          if ($dir->isDir() && !$dir->isDot())
              $translations[$dir->getFilename()] = $dir->getFilename();
      return  $this->_aLangs  = in_array($this->getDefaultLang(), $translations)
                              ? $translations
                              : array_merge($translations, array($this->getDefaultLang() => $this->getDefaultLang()));
    }

    /**
     * Устанавливаем язык приложения:
     *
     * @return void
     */
    public function setAppLang($lang = null)
    {

      $this->_lang = isset($lang)
        ? $lang
        : $this->getPrefLang();

      $request = Yii::app()->request;

      !is_null($request->getParam('tl')) && $this->_lang = $request->getParam('tl');

      Yii::app()->getRequest()->cookies->add(
        $this->langParam, new CHttpCookie(
          $this->langParam,
          $this->_lang, array(
            'expire'   => time() + (60 * 60 * 24 * 365),
            'httpOnly' => true
          )
        )
      );

      Yii::app()->setLanguage($this->_lang);
    }

    /**
    * renders CPortlet content
    */
    protected function renderContent()
    {
      $translations = $this->getMessageLangDirs();
      switch ($this->pickerType)
      {
        case 'links':
          echo "<ul class='".$this->class."'>";
          foreach ($translations as $trans){
            echo "<li>";
            echo CHtml::link(strtoupper($trans), Yii::app()->homeUrl, array('class'=>(Yii::app()->getLanguage() == $trans ? 'active' : ''), 'params'=>array('tl'=>$trans), 'csrf'=>true,));
            /*echo CHtml::ajaxLink(
              strtoupper($trans),
              Yii::app()->homeUrl,
              array(
                'data'=>array(
                  'tl'=>$trans,
                ),
              ),
              array(
                'class'=>(Yii::app()->getLanguage() == $trans ? 'active' : ''),
                'csrf'=>true,
              )
            );*/
            echo "</li>";
          }
          echo "</ul>";
          break;

        case 'flags':
          echo "<ul class='".$this->class."'>";
          foreach ($translations as $trans){
            echo "<li>";
            echo CHtml::link(CHtml::image('/img/icons/flags/'.$trans.'.gif', strtoupper($trans), array('width'=>'16', 'height'=>'11')), Yii::app()->homeUrl, array('class'=>(Yii::app()->getLanguage() == $trans ? 'active' : ''), 'submit'=>'', 'params'=>array('tl'=>$trans), 'csrf'=>true,));
            /*echo CHtml::link(
              CHtml::image('/img/icons/flags/'.$trans.'.gif', strtoupper($trans), array('width'=>'16', 'height'=>'11')),
              array(
                Yii::app()->homeUrl,
                'tl'=>$trans,
              ),
              array(
                'class'=>(Yii::app()->getLanguage() == $trans ? 'active' : ''),
              )
            );*/
            echo "</li>";
          }
          echo "</ul>";
          break;

        case 'dropdown':
          $aTranslations = array();
          foreach ($translations as $k => $v)
            $aTranslations[$k] = strtoupper($v);
          echo CHtml::form('', 'post');
          echo CHtml::dropDownList('tl' , Yii::app()->getLanguage(), $aTranslations, array('submit'=>'', 'csrf'=>true, 'class'=> $this->class . ' ' . Yii::app()->getLanguage() ));
          echo CHtml::endForm();
          break;

      }
    }

  }
