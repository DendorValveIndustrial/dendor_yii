<?php
  //Apple iOS
  echo CHtml::linkTag('apple-touch-icon',NULL,CHtml::asset(Yii::getPathOfAlias('webroot.themes.bootstrap.assets').'/img/favicons/touch-icon-iphone.png'));
  echo CHtml::linkTag('apple-touch-icon',NULL,CHtml::asset(Yii::getPathOfAlias('webroot.themes.bootstrap.assets').'/img/favicons/touch-icon-ipad.png',NULL, array('sizes'=>'76x76')));
  echo CHtml::linkTag('apple-touch-icon',NULL,CHtml::asset(Yii::getPathOfAlias('webroot.themes.bootstrap.assets').'/img/favicons/touch-icon-iphone-retina.png',NULL, array('sizes'=>'120x120')));
  echo CHtml::linkTag('apple-touch-icon',NULL,CHtml::asset(Yii::getPathOfAlias('webroot.themes.bootstrap.assets').'/img/favicons/touch-icon-ipad-retina.png',NULL, array('sizes'=>'156x156')));
  //facebook meta
  echo CHtml::metaTag('http://dendor.pl', null, null, array('property'=>'og:url'));
  echo CHtml::metaTag($this->pageTitle, null, null, array('property'=>'og:title'));
  echo CHtml::metaTag('website', null, null, array('property'=>'og:type'));
  echo CHtml::metaTag(Yii::app()->name, null, null, array('property'=>'og:site_name'));
  echo CHtml::metaTag(CHtml::asset(Yii::getPathOfAlias('webroot.themes.bootstrap.assets').'/img/logo/dendorLogo.png'), null, null, array('property'=>'og:image'));
  echo CHtml::metaTag($this->metaDescription, null, null, array('property'=>'og:description'));
  //win meta
  echo CHtml::metaTag(Yii::app()->name, 'application-name');
  echo CHtml::metaTag(CHtml::asset(Yii::getPathOfAlias('webroot.themes.bootstrap.assets').'/img/logo/dendorLogo.png'), 'msapplication-TileImage');
  echo CHtml::metaTag('#393185', 'msapplication-TileColor');
  //twitter meta
  echo CHtml::metaTag('summary', 'twitter:card');
  echo CHtml::metaTag($this->metaDescription, 'twitter:description');
  echo CHtml::metaTag('@DendorValve', 'twitter:description');
  echo CHtml::metaTag($this->pageTitle, 'twitter:title');
  echo CHtml::metaTag('http://dendor.pl', 'twitter:url');
