<?php
  Yii::import('zii.widgets.CPortlet');

  class LanguageChange extends CPortlet
  {
    private $_lang;
    private $langParam = 'language';
    private $preferredLanguage = false;
    private $_aLangs = array();

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
      echo "<ul>";
      foreach ($translations as $trans){
        echo "<li>";
        echo CHtml::link(strtoupper($trans), Yii::app()->homeUrl, array('class'=>(Yii::app()->getLanguage() == $trans ? 'active' : ''), 'submit'=>'', 'params'=>array('languageSet'=>$trans)));
        echo "</li>";
      }
      echo "</ul>";
    }

  }
