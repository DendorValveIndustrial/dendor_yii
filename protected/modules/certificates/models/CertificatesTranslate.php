<?php

/**
 * This is the model class for table "CertificatesTranslate".
 *
 * The followings are the available columns in table 'CertificatesTranslate':
 * @property integer $id
 * @property integer $object_id
 * @property integer $language_id
 * @property string $name
 * @property string $title
 * @property string $description
 */
class CertificatesTranslate extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'CertificatesTranslate';
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return CertificatesTranslate the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
