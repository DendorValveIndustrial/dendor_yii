<?php
  class LangChange extends CComponent
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
        $this->_lang = $aLocale[0];
      } catch (Exception $e) {
        $this->_lang = Yii::app()->getLanguage();
      }
      return $this->_lang;
    }

    /**
     * Получаем язык из кукисов:
     *
     * @return string
     */
    public function getCoockeLang()
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
    public function getMessageLangs()
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
        : $this->getDefaultLang();

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

  }
