<?php

/**
 * Manager urls
 */
class UrlManager extends CUrlManager
{

  /**
   * Create url based on current language.
   * @param mixed $route
   * @param array $params
   * @param string $ampersand
   * @param boolean $respectLang
   * @access public
   * @return string
   */
  public function createUrl($route,  $params=array(),  $ampersand='&', $respectLang = true)
  {
    $result = parent::createUrl($route, $params, $ampersand);

    if ($respectLang === true)
    {
      $langPrefix = Yii::app()->languageManager->getUrlPrefix();
      if ($langPrefix)
        $result = '/'.$langPrefix.$result;
    }

    return $result;
  }
}
