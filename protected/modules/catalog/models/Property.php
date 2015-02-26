<?php

Yii::import('application.modules.catalog.models.PropertyValue');
/**
 * This is the model class for table "Property".
 *
 * The followings are the available columns in table 'Property':
 * @property integer $id
 * @property string $system_name
 * @property integer $type
 * @property integer $inshort
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
			array('type, inshort, required, sorting, deleted', 'numerical', 'integerOnly'=>true),
			array('system_name, name', 'length', 'max'=>255),
			array('description', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, system_name, type, inshort, required, sorting, deleted, name, description', 'safe', 'on'=>'search'),
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
			'system_name' => Yii::t('admin', 'system_name'),
			'type' => Yii::t('admin', 'type'),
			'inshort' => Yii::t('admin', 'inshort'),
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
		$criteria->compare('t.system_name',$this->system_name,true);
		$criteria->compare('t.type',$this->type);
		$criteria->compare('t.inshort',$this->inshort);
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
	public function getListSelect()
	{
		$this->_list[0]='...';

		$aProperty = Property::model()->findAll();
		foreach ($aProperty as $oProperty) {
			$this->_list[$oProperty->id]=$oProperty->name;
		}
		return $this->_list;
	}

}
