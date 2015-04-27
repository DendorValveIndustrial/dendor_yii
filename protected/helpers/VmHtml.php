<?php

class VmHtml extends CHtml
{
  /**
  * Generates an image tag.
   * @param string $src the image URL.
   * @param string $alt the alternative text display.
   * @param array $htmlOptions additional HTML attributes.
   * @return string the generated image tag.
   */
  public static function imageThumb($src, $alt = '', $htmlOptions = array())
  {
      $type = TbArray::popValue('type', $htmlOptions);
      if (!empty($type)) {
          self::addCssClass('img-' . $type, $htmlOptions);
      }
      return parent::image($src, $alt, $htmlOptions);
  }
}
