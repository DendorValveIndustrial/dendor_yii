<?php

/**
 * This is the model class for table "PropertyTranslate".
 *
 * The followings are the available columns in table 'CatalogGroupTranslate':
 * @property integer $id
 * @property integer $object_id
 * @property integer $language_id

 * @property string $name
 * @property string $description
 *
 * The followings are the available model relations:
 * @property Property $object
 */
class PropertyTranslate extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'PropertyTranslate';
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return CatalogGroupTranslate the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
