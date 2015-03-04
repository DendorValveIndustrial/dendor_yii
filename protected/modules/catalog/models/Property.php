<?php

Yii::import('application.modules.catalog.models.PropertyValue');
/**
 * This is the model class for table "Property".
 *
 * The followings are the available columns in table 'Property':
 * @property integer $id
 * @property integer $dir_id
 * @property string $system_name
 * @property integer $type
 * @property integer $main
 * @property integer $required
 * @property integer $sorting
 * @property integer $deleted
 *
 * @property string $name
 * @property string $description
 *
 * The followings are the available model relations:
 * @property PropertyValue[] $propertyValues
 */
class Property extends CActiveRecord
{

	const TYPE_TEXT = 1;
	const TYPE_TEXTAREA = 2;
	const TYPE_TEXTAREA_HTML = 3;
	const TYPE_FILE = 4;

	/**
	 * Translate-table
	 */
	public $name;
	public $description;

	/**
	 * Name of the translations model.
	 */
	public $translateModelName = 'PropertyTranslate';

	/**
	 * @var array
	 */
	private $_list = array();

	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'Property';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('system_name', 'required'),
			array('dir_id, type, main, required, sorting, deleted', 'numerical', 'integerOnly'=>true),
			array('system_name, name', 'length', 'max'=>255),
			array('description', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, system_name, type, main, required, sorting, deleted, name, description', 'safe', 'on'=>'search'),
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
			'translate'=>array(self::HAS_ONE, $this->translateModelName, 'object_id'),
			'propertyValues' => array(self::HAS_MANY, 'PropertyValue', 'property_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'dir_id' => Yii::t('admin', 'dir_id'),
			'system_name' => Yii::t('admin', 'system_name'),
			'type' => Yii::t('admin', 'type'),
			'main' => Yii::t('admin', 'main'),
			'required' => Yii::t('admin', 'required'),
			'sorting' => Yii::t('admin', 'sorting'),
			'deleted' => Yii::t('admin', 'deleted'),
			'name' => Yii::t('admin', 'name'),
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

		$criteria->with = array('translate');

		$criteria->compare('t.id',$this->id);
		$criteria->compare('t.dir_id',$this->dir_id);
		$criteria->compare('t.system_name',$this->system_name,true);
		$criteria->compare('t.type',$this->type);
		$criteria->compare('t.main',$this->main);
		$criteria->compare('t.required',$this->required);
		$criteria->compare('t.sorting',$this->sorting);
		$criteria->compare('t.deleted',$this->deleted);
		$criteria->compare('translate.name',$this->name,true);
		$criteria->compare('translate.description',$this->description,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	public function behaviors()
	{
		return array(
			'STranslateBehavior'=>array(
				'class'=>'ext.behaviors.TranslateBehavior',
				'translateAttributes'=>array(
					'name',
					'description',
				),
			),
		);
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Property the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	/**
	 * Get list on select to form object on front
	 * @return array
	 */
	public function getMain()
	{
		$this->getDbCriteria()->mergeWith(array(
			'condition'=> "main=:main",
			'params'=>array(
				':main' => 1,
			),
		));
		return $this;
	}

	/**
	 * Get list on select to form object on front
	 * @return array
	 */
	public function getListSelect()
	{
		$this->_list[0]='...';

		$aProperty = Property::model()->findAll();
		foreach ($aProperty as $oProperty) {
			$this->_list[$oProperty->id]=$oProperty->name;
		}
		return $this->_list;
	}

	/**
	 * Get types as key value list
	 * @static
	 * @return array
	 */
	public static function getTypesList()
	{
		return array(
			self::TYPE_TEXT => 'String',
			self::TYPE_TEXTAREA => 'Text',
			self::TYPE_TEXTAREA_HTML => 'Html',
			self::TYPE_FILE => 'File',
		);
	}

	/**
	 * Get type label
	 * @static
	 * @param $type
	 * @return string
	 */
	public static function getTypeTitle($type)
	{
		$list = self::getTypesList();
		return $list[$type];
	}

	/**
	 * @param $value
	 * @return string html field based on attribute type
	 */
	public function renderField($value = null)
	{
		$name = 'Property['.$this->name.']';
		switch ($this->type):
			case self::TYPE_TEXT:
				return CHtml::textField($name, $this->renderValue($value));
			break;
			case self::TYPE_TEXTAREA:
			case self::TYPE_TEXTAREA_HTML:
				return CHtml::textArea($name, $this->renderValue($value));
			break;
		endswitch;
	}

	/**
	 * Get attribute value
	 * @param $value
	 * @return string attribute value
	 */
	public function renderValue($value)
	{
		switch ($this->type):
			case self::TYPE_TEXT:
			case self::TYPE_TEXTAREA:
			case self::TYPE_TEXTAREA_HTML:
				$data = CHtml::listData($this->options, 'id', 'value');
				if(isset($data[$value]))
					return $data[$value];
				return $value;
			break;
		endswitch;
	}

}
