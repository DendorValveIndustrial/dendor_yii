<?php

/**
 * This is the model class for table "Certificates".
 *
 * The followings are the available columns in table 'Certificates':
 * @property integer $id
 * @property string $image
 * @property string $file
 * @property integer $active
 * @property integer $deleted
 *
 * The followings are the available columns in table 'CertificatesTranslate':
 * @property integer $id
 * @property integer $object_id
 * @property integer $language_id
 * @property string $name
 * @property string $title
 * @property string $description
 */
class Certificates extends CActiveRecord
{
	/**
	 * Status to allow display page on the front.
	 */
	public $publishStatus = 'published';

	/**
	 * Multilingual attrs
	 */
	public $name;
	public $title;
	public $description;

	/**
	 * Name of the translations model.
	 */
	public $translateModelName = 'CertificatesTranslate';

	/**
	 * Upload image file.
	 */
	public $img;
	public $pdf;

	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'Certificates';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('active, deleted', 'numerical', 'integerOnly'=>true),
			array('image, file', 'safe'),
			array('image, file', 'length', 'max'=>255),
			array('name, image, file', 'required'),
			array('title, name, description', 'type', 'type'=>'string'),
			array('img','file', 'safe' => true, 'allowEmpty'=>true, 'types'=>'jpg, png', 'maxSize' => 1048576),
			array('pdf','file', 'safe' => true, 'allowEmpty'=>true, 'types'=>'pdf', 'maxSize' => 1048576),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, image, file, active, deleted, title, name, description', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		return array(
			'translate'=>array(self::HAS_ONE, $this->translateModelName, 'object_id'),
		);
	}

	/**
	 * @return array
	 */
	public function behaviors()
	{
		return array(
			'STranslateBehavior'=>array(
				'class'=>'ext.behaviors.TranslateBehavior',
				'translateAttributes'=>array(
					'name',
					'title',
					'description',
				),
			),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'image' => Yii::t('admin', 'image'),
			'img' => Yii::t('admin', 'image'),
			'pdf' => Yii::t('admin', 'download_file'),
			'file' => 'file',
			'active' => Yii::t('admin', 'active'),
			'deleted' => Yii::t('admin', 'deleted'),
			'name' => Yii::t('admin', 'name'),
			'title' => Yii::t('admin', 'title'),
			'description' => Yii::t('admin', 'description'),
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 *
	 * Typical usecase:
	 * - Initialize the model fields with values from filter form.
	 * - Execute this method to get CActiveDataProvider instance which will filter
	 * models according to data in model fields.
	 * - Pass data provider to CGridView, CListView or any similar widget.
	 *
	 * @return CActiveDataProvider the data provider that can return the models
	 * based on the search/filter conditions.
	 */
	public function search()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('t.id',$this->id);
		$criteria->compare('translate.title',$this->title,true);
		$criteria->compare('translate.name',$this->name,true);
		$criteria->compare('t.image',$this->image,true);
		$criteria->compare('t.file',$this->file,true);
		$criteria->compare('translate.description',$this->description,true);
		$criteria->compare('t.active',$this->active);
		$criteria->compare('t.deleted',$this->deleted);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Certificates the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	public function defaultScope()
	{
		return array(
			'condition'=>'deleted=:deleted',
			'params' => array(
				':deleted' => 0,
			),
		);
	}

	public function scopes()
	{
		return array(
			'published'=>array(
				'condition'=>'active = :active',
				'params'=>array(
					':active'=>1,
				),
			),
		);
	}
}
