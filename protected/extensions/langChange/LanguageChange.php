<?php
  class LanguageChange extends CController
  {
    public $lang;
    public $langParam         = 'language';
    public $preferredLanguage = false;

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
        $lang = $aLocale[0];
      } catch (Exception $e) {
        $lang = Yii::app()->getLanguage();
      }
      return $lang;
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
        $lang = isset($request->cookies[$this->langParam])
          ? $request->cookies[$this->langParam]->value
          : false;
      } catch (Exception $e) {
        $lang = Yii::app()->getLanguage();
      }
      return $lang;
    }

    /**
     * Получаем языки из директории для которых есть переводы,
     * Массив списка доступных переводов
     *
     * @return array
     */
    public function getMessageLang()
    {
      $aLang = array();
      $dirs = new DirectoryIterator(Yii::app()->messages->basePath);
    }

    /**
     * Устанавливаем язык приложения:
     *
     * @return void
     */
    public function setLanguage()
    {
      $lang = self::getCoockeLang();
      Yii::app()->setLanguage($lang);
    }


    /**
    * sets the language and saves to cookie
    * @param $daysExpires integer number of days which cookie will last
    */
    /*public static function setLanguage($daysExpires = 100)
    {
      if (Yii::app()->request->getPost('languagePicker') !== null && in_array($_POST['languagePicker'], self::getLanguages(), true))
      {
        Yii::app()->setLanguage($_POST['languagePicker']);
        $cookie = new CHttpCookie('language', $_POST['languagePicker']);
        $cookie->expire = time() + 60 * 60 * 24 * $daysExpires;
        Yii::app()->request->cookies['language'] = $cookie;
      }
      else if (isset(Yii::app()->request->cookies['language']) && in_array(Yii::app()->request->cookies['language']->value, self::getLanguages(), true))
      {
        Yii::app()->setLanguage(Yii::app()->request->cookies['language']->value);
      }
      else if (isset(Yii::app()->request->cookies['language']))
      {
        unset(Yii::app()->request->cookies['language']);
      }
      else
      {
        $preferredLang = explode('_', Yii::app()->getRequest()->getPreferredLanguage());
        if (in_array($preferredLang[0], self::getLanguages(), true))
          Yii::app()->setLanguage($preferredLang[0]);
      }
    }*/
  }
