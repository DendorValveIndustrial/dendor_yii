<?php

/**
 * This is the model class for table "NewsTranslate".
 *
 * The followings are the available columns in table 'NewsTranslate':
 * @property integer $id
 * @property integer $object_id
 * @property integer $language_id
 *
 * The followings are the available model relations:
 * @property News $object
 */
class NewsTranslate extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return NewsTranslate the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'NewsTranslate';
	}

}
