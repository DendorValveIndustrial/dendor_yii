<?php

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
 * @property string $name
 * @property string $description
 *
 * The followings are the available model relations:
 * @property PropertyValue[] $propertyValues
 */
class Property extends CActiveRecord
{
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
			'system_name' => 'System Name',
			'type' => 'Type',
			'inshort' => 'Inshort',
			'required' => 'Required',
			'sorting' => 'Sorting',
			'deleted' => 'Deleted',
			'name' => 'Name',
			'description' => 'Description',
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

		$criteria->compare('id',$this->id);
		$criteria->compare('system_name',$this->system_name,true);
		$criteria->compare('type',$this->type);
		$criteria->compare('inshort',$this->inshort);
		$criteria->compare('required',$this->required);
		$criteria->compare('sorting',$this->sorting);
		$criteria->compare('deleted',$this->deleted);
		$criteria->compare('name',$this->name,true);
		$criteria->compare('description',$this->description,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
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
}
