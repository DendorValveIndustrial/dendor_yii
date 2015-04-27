<?php
use Imagine\Image\Box;
use Imagine\Image\ImageInterface;
use Imagine\Gd\Imagine;

class ThumbnailImageManager extends CApplicationComponent
{
  protected $width;
  protected $height;

  protected $newWidth;
  protected $newHeight;
  protected $imgThumbs;

  protected function resize($width = false, $height = false)
  {
    if($width !== false) $this->newWidth = $width;
    if($height !== false) $this->newHeight = $height;

    return $this;
  }

  protected function createThumbs($filePath)
  {
    $imagine = new Imagine();
    $size = new Box($this->newWidth, $this->newHeight);
    $mode = ImageInterface::THUMBNAIL_INSET;

    $dir = pathinfo($filePath, PATHINFO_DIRNAME);
    $fileName = pathinfo($filePath, PATHINFO_BASENAME);

    $this->imgThumbs = $dir.'/'.'thumb_'.$this->newWidth.'x'.$this->newHeight.'_'.$fileName;

    $imagine
      ->open('.'.$filePath)
      ->thumbnail($size, $mode)
      ->save('.'.$this->imgThumbs, array('flatten' => false));

    return $this;
  }

  public function thumbs($filePath, $width, $height, $alt = '', $htmlOptions = array())
  {
    $scr = $this->getThumbImg($filePath, $width, $height);
    $htmlOptions = TbArray::merge($htmlOptions, array('width' => $width, 'height' => $height));

    return CHtml::image($scr, $alt, $htmlOptions);
  }

  public function getThumbImg($filePath, $width, $height)
  {
    $this
      ->resize($width, $height)
      ->createThumbs($filePath);

    return $this->imgThumbs;
  }
}
