<?php

/**
 * This is the model class for table "NewsCategoryTranslate".
 *
 * The followings are the available columns in table 'NewsCategoryTranslate':
 * @property integer $id
 * @property integer $object_id
 * @property integer $language_id
 * @property string $name
 * @property string $description
 * @property string $meta_title
 * @property string $meta_description
 * @property string $meta_keywords
 *
 * The followings are the available model relations:
 * @property NewsCategory $object
 */
class NewsCategoryTranslate extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'NewsCategoryTranslate';
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return NewsCategoryTranslate the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
