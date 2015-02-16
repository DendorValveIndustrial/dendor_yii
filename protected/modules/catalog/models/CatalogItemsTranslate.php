<?php

/**
 * This is the model class for table "CatalogItemsTranslate".
 *
 * The followings are the available columns in table 'CatalogItemsTranslate':
 * @property integer $id
 * @property integer $object_id
 * @property integer $language_id
 * @property string $name
 * @property string $short_description
 * @property string $full_description
 * @property string $meta_title
 * @property string $meta_keywords
 * @property string $meta_description
 *
 * The followings are the available model relations:
 * @property CatalogItems $object
 */
class CatalogItemsTranslate extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'CatalogItemsTranslate';
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return CatalogItemsTranslate the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
