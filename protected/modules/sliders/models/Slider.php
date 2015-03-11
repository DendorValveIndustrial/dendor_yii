<?php

//Yii::import('application.models.SliderTranslates');
/**
 * This is the model class for table "slider".
 *
 * The followings are the available columns in table 'slider':
 * @property integer $id
 * @property string $data_slidr
 * @property string $img
 * @property string $link
 * @property integer $active
 *
 * The followings are the available columns in table 'SliderTranslates':
 * @property string $name
 * @property string $text
 *
 * The followings are the available model relations:
 * @property SliderTranslates[] $sliderTranslates
 */
class Slider extends CActiveRecord
{
	/**
	 * Upload image file.
	 */
	public $img_file;

	/**
	 * Multilingual attrs
	 */
	public $name;
	public $text;

	/**
	 * Name of the translations model.
	 */
	public $translateModelName = 'SliderTranslates';

	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'slider';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('active', 'numerical', 'integerOnly'=>true),
			array('data_slidr', 'required'),
			array('data_slidr', 'length', 'max'=>6),
			array('img, link, name, text', 'length', 'max'=>255),
			array('img_file','file', 'safe' => true, 'allowEmpty'=>true, 'types'=>'jpg, gif, png', 'maxSize' => 1048576),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, data_slidr, img, link, active, name, text', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
			//'sliderTranslates' => array(self::HAS_MANY, 'SliderTranslates', 'object_id'),
			'translate' => array(self::HAS_ONE, $this->translateModelName, 'object_id'),
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
					'text',
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
			'data_slidr' => 'Data Slidr',
			'img' => 'Image',
			'img_file' => 'Image File',
			'link' => 'Link',
			'active' => 'Active',
			//SliderTranslates
			'name' => 'Name',
			'text' => 'Text',
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

		$criteria->with = array('translate');
    // $criteria->condition='`translate`.`language_id` = :language_id';
    // $criteria->params=array(':language_id'=> 1);

		$criteria->compare('t.id',$this->id);
		$criteria->compare('t.data_slidr',$this->data_slidr,true);
		$criteria->compare('t.img',$this->img,true);
		$criteria->compare('t.link',$this->link,true);
		$criteria->compare('t.active',$this->active);
		//SliderTranslates
		$criteria->compare('translate.name',$this->name,true);
		$criteria->compare('translate.text',$this->text,true);
		//$criteria->compare('translate.language_id',2);


		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * @return bool
	 */
	public function beforeSave()
	{
		if(!$this->data_slidr && $this->isNewRecord)
			$this->data_slidr = date('Y-m-d H:i:s');

		return parent::beforeSave();
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Slider the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
