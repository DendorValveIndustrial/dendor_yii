<?php
Yii::import('application.modules.catalog.models.CatalogItems');
Yii::import('application.modules.catalog.models.Property');
/**
 * This is the model class for table "PropertyValue".
 *
 * The followings are the available columns in table 'PropertyValue':
 * @property integer $id
 * @property integer $property_id
 * @property integer $entity_id
 * @property string $value
 *
 * The followings are the available model relations:
 * @property Property $property
 */
class PropertyValue extends CActiveRecord
{
	/**
	 * Translate-table
	 */
	public $value;

	/**
	 * Name of the translations model.
	 */
	public $translateModelName = 'PropertyValueTranslate';

	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'PropertyValue';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('property_id, entity_id', 'required'),
			array('property_id', 'numerical', 'min'=>1),
			array('property_id, entity_id', 'numerical', 'integerOnly'=>true),
			array('value', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, property_id, entity_id, value', 'safe', 'on'=>'search'),
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
			'catalog_item' => array(self::BELONGS_TO, 'CatalogItems', 'entity_id'),
			'property' => array(self::BELONGS_TO, 'Property', 'property_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'property_id' => Yii::t('admin', 'property_id'),
			'entity_id' => Yii::t('admin', 'entity_id'),
			'value' => Yii::t('admin', 'value'),
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
		$criteria->compare('t.property_id',$this->property_id);
		$criteria->compare('t.entity_id',$this->entity_id);
		$criteria->compare('translate.value',$this->value,true);

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
					'value',
				),
			),
		);
	}

	/**
	 * Filter items by entity_id.
	 * Scope.
	 * @param int $entity
	 * @return PropertyValue
	 */
	public function filterByEntity($entity_id)
	{

		$this->getDbCriteria()->mergeWith(array(
			'condition'=>'entity_id=:entity_id',
			'params'=>array(':entity_id'=>$entity_id)
		));

		return $this;
	}


	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return PropertyValue the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
