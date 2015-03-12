<?php
class FaApi extends CApplicationComponent{

  /**
   * @var bool whether we should copy the asset file or directory even if it is already published before.
   */
  public $forceCopyAssets = false;

  private $_assetsUrl;

  /**
   * Registers all assets.
   */
  public function register()
  {
      $this->registerFaCss();
  }

  /**
   * Registers the Font Awesome CSS.
   * @param string $url the URL to the CSS file to register.
   * @param string $media the media type.
   */
  public function registerFaCss($url = null, $media = '')
  {
      if ($url === null) {
          $fileName = YII_DEBUG ? 'font-awesome.css' : 'font-awesome.min.css';
          $url = $this->getAssetsUrl() . '/css/' . $fileName;
      }
      Yii::app()->clientScript->registerCssFile($url, $media);
  }

  /**
   * Returns the url to the published assets folder.
   * @return string the url.
   */
  protected function getAssetsUrl()
  {
      if (isset($this->_assetsUrl)) {
          return $this->_assetsUrl;
      } else {
          $assetsPath = Yii::getPathOfAlias('fontawesome.assets');
          $assetsUrl = Yii::app()->assetManager->publish($assetsPath, false, -1, $this->forceCopyAssets);
          return $this->_assetsUrl = $assetsUrl;
      }
  }
}
