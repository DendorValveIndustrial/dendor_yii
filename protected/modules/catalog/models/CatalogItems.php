<?php

Yii::import('application.modules.catalog.models.CatalogItemsTranslate');
Yii::import('application.modules.catalog.models.CatalogGroup');
Yii::import('application.modules.catalog.models.PropertyValue');
Yii::import('application.modules.catalog.models.Property');

/**
 * This is the model class for table "CatalogItems".
 *
 * The followings are the available columns in table 'CatalogItems':
 * @property integer $id
 * @property integer $group_id
 * @property integer $modification_id
 * @property string $created
 * @property string $updated
 * @property string $publish
 * @property string $end_date
 * @property string $url
 * @property string $image
 * @property string $price
 * @property integer $active
 * @property integer $sorting
 * @property integer $deleted
 * @property integer $novelty
 *
 * The followings are the available columns in table 'CatalogItemsTranslate':
 * @property string $name
 * @property string $title
 * @property string $short_description
 * @property string $full_description
 * @property string $meta_title
 * @property string $meta_keywords
 * @property string $meta_description
 *
 * The followings are the available model relations:
 * @property CatalogItemsTranslate[] $catalogItemsTranslates
 */
class CatalogItems extends CActiveRecord
{
	/**
	* Normalize AR after cloning.
	*/
	public function __clone()
	{
	  $this->primaryKey = null;
	  $this->oldPrimaryKey = null;
	  $this->isNewRecord = true;
	}

	/**
	 * Status to allow display page on the front.
	 */
	public $publishStatus = 'published';

	/**
	 * Multilingual attrs
	 */
	public $name;
	public $title;
	public $short_description;
	public $full_description;
	public $meta_title;
	public $meta_description;
	public $meta_keywords;

	/**
	 * Name of the translations model.
	 */
	public $translateModelName = 'CatalogItemsTranslate';

	/**
	 * Upload image file.
	 */
	public $img;

	/**
	 * array property value item
	 */

	private $_propertyValue;

	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'CatalogItems';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('group_id, modification_id, active, sorting, deleted, novelty', 'numerical', 'integerOnly'=>true),
			array('group_id', 'numerical', 'min'=>1),
			array('title, meta_title, meta_description, meta_keywords, name, short_description, full_description', 'type', 'type'=>'string'),
			array('url, image', 'length', 'max'=>255),
			array('price', 'length', 'max'=>12),
			array('created, publish, end_date', 'safe'),
			array('name, url, group_id', 'required'),
			array('url', 'LocalUrlValidator'),
			array('url', 'unique'),
			array('img','file', 'safe' => true, 'allowEmpty'=>true, 'types'=>'jpg, gif, png', 'maxSize' => 1048576),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, group_id, modification_id, created, updated, publish, end_date, url, image, price, active, sorting, deleted, novelty, short_description, full_description, meta_title, meta_description, meta_keywords, name', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		return array(
			'translate'=>array(self::HAS_ONE, $this->translateModelName, 'object_id'),
			'group'=>array(self::BELONGS_TO, 'CatalogGroup', 'group_id'),
			'property'=>array(self::HAS_MANY,'Property',array('property_id'=>'id'),'through'=>'property_values'),
			'property_no_main'=>array(self::HAS_MANY,'Property',array('property_id'=>'id'),'through'=>'property_values', 'condition'=>'property.main = 0'),
			'property_values'=>array(self::HAS_MANY, 'PropertyValue', 'entity_id'),
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
					'short_description',
					'full_description',
					'meta_title',
					'meta_description',
					'meta_keywords',
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
			'group_id' => Yii::t('admin', 'items_group'),
			'modification_id' => Yii::t('admin', 'modification'),
			'created' => Yii::t('admin', 'created'),
			'updated' => Yii::t('admin', 'updated'),
			'publish' => Yii::t('admin', 'publish_date'),
			'end_date' => Yii::t('admin', 'end_date'),
			'url' => Yii::t('admin', 'url'),
			'image' => Yii::t('admin', 'image'),
			'img' => Yii::t('admin', 'image'),
			'price' => Yii::t('admin', 'price'),
			'active' => Yii::t('admin', 'active'),
			'sorting' => Yii::t('admin', 'sorting'),
			'deleted' => Yii::t('admin', 'deleted'),
			'novelty' => Yii::t('admin', 'novelty'),
			//CatalogItemsTranslate
			'name' => Yii::t('admin', 'name'),
			'title' => Yii::t('admin', 'title'),
			'short_description' => Yii::t('admin', 'short_description'),
			'full_description' => Yii::t('admin', 'full_description'),
			'meta_title' => Yii::t('admin', 'meta_title'),
			'meta_keywords' => Yii::t('admin', 'meta_keywords'),
			'meta_description' => Yii::t('admin', 'meta_description'),
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
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
		$criteria->compare('t.group_id',$this->group_id);
		$criteria->compare('t.modification_id',$this->modification_id);
		$criteria->compare('translate.title',$this->title,true);
		$criteria->compare('translate.name',$this->name,true);
		$criteria->compare('t.url',$this->url,true);
		$criteria->compare('translate.short_description',$this->short_description,true);
		$criteria->compare('translate.full_description',$this->full_description,true);
		$criteria->compare('translate.meta_title',$this->meta_title,true);
		$criteria->compare('translate.meta_description',$this->meta_description,true);
		$criteria->compare('translate.meta_keywords',$this->meta_keywords,true);
		$criteria->compare('t.image',$this->image,true);
		$criteria->compare('t.price',$this->price,true);
		$criteria->compare('t.created',$this->created,true);
		$criteria->compare('t.updated',$this->updated,true);
		$criteria->compare('t.publish',$this->publish,true);
		$criteria->compare('t.end_date',$this->end_date,true);
		$criteria->compare('t.active',$this->active);
		$criteria->compare('t.sorting',$this->sorting);
		$criteria->compare('t.deleted',$this->deleted);
		$criteria->compare('t.novelty',$this->novelty);

		// Create sorting by translation name
		$sort=new CSort;
		$sort->attributes=array(
			'*',
			'sorting' => array(
				'asc'   => 't.sorting',
				'desc'  => 't.sorting DESC',
			)
		);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
			'sort'=>$sort,
			'pagination'=>array(
				'pageSize'=>15,
			)
		));

	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return CatalogItems the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	/**
	 * @return bool
	 */
	public function beforeSave()
	{
		$this->updated = date('Y-m-d H:i:s');

		if(!$this->created)
			$this->created = date('Y-m-d H:i:s');

		if(empty($this->publish) && $this->isNewRecord)
			$this->publish = date('Y-m-d H:i:s');

		if(empty($this->meta_title))
			$this->meta_title = $this->name;

		if(empty($this->meta_description) && !empty($this->short_description))
			$this->meta_description = substr($this->short_description, 0, 120);

		return parent::beforeSave();
	}

	public function beforeValidate()
	{
		$parser = new CMarkdownParser;
		$this->full_description = $parser->transform($this->full_description);

		if (empty($this->url))
		{
			Yii::import('ext.SlugHelper.SlugHelper');
			$this->url = SlugHelper::run($this->name);
		}

		return parent::beforeValidate();
	}

	protected function beforeDelete()
	{
		if (parent::beforeDelete())
		{
			foreach ($this->property_values as $val)
				$val->delete();
			return true;
		}
		return false;
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
			'new'=>array(
				'condition'=>'active = :active and novelty = :novelty',
				'limit' => 4,
				'order' => rand(1, 20),
				'params'=>array(
					':active'=>1,
					':novelty'=>1,
				),
			),
		);
	}

	/**
	 * Find page by url.
	 * Scope.
	 * @param string News url
	 * @return News
	 */
	public function withUrl($url)
	{
		$this->getDbCriteria()->mergeWith(array(
			'condition'=>'url=:url',
			'params'=>array(':url'=>$url)
		));

		return $this;
	}

	public function getNextItem()
	{
    $record = self::model()->find(array(
      'condition' => 't.id>:current_id AND group_id=:group_id',
      'order' => 't.id ASC',
      'limit' => 1,
      'params'=>array(':current_id'=>$this->id, ':group_id'=>$this->group_id),
    ));

    if( $record !== null)
        return $record;

    return null;
	}

	public function getPrevItem()
	{
    $record = self::model()->find(array(
      'condition' => 't.id<:current_id AND group_id=:group_id',
      'order' => 't.id DESC',
      'limit' => 1,
      'params'=>array(':current_id'=>$this->id, ':group_id'=>$this->group_id),
    ));
    if($record!==null)
        return $record;
    return null;
	}

	/**
	 * Filter items by group.
	 * Scope.
	 * @param CatalogGroup|int $group
	 * @return CatalogItems
	 */
	public function filterByGroup($group)
	{
		if($group instanceof CatalogGroup)
			$group_id=$group->id;

		$this->getDbCriteria()->mergeWith(array(
			'condition'=>'group_id=:group_id',
			'params'=>array(':group_id'=>$group_id)
		));

		return $this;
	}

	/**
	 * Get url to view object on front
	 * @return string
	 */
	public function getViewUrl()
	{
		$data = array('url'=>$this->url);

		if($this->group)
			$data['group'] = $this->group->url;

		return urldecode(Yii::app()->createUrl('catalog/catalog/view', $data));
	}

	public function getValueList($filterMain = null)
  {
  	$main = null;
  	if(!is_null($filterMain))
  		$main = ($filterMain)? 0 : 1;

    $items = array();

    foreach ($this->property_values as $properyValue)
    {
      $mainValue = $properyValue->property->main;
      if($mainValue != $main){
	      $items[] = array(
	        'label'=>$properyValue->property->name,
	        'system_name'=>$properyValue->property->system_name,
	        'value'=>$properyValue->value,
	      );
      }
    }

    return $items;
  }

  public function getPropertyBySystemName($systemName){
  	$aProperty = $this->property;
  	foreach ($aProperty as $Property) {
  		if($Property->system_name === $systemName)
  			return $Property;
  	}
  }

  public function getPropertyValue($property_id)
  {
  	$this->_propertyValue = $this->property_values(array(
  			'condition'=>'property_id = :property_id',
  			'params'=>array('property_id'=>$property_id),
  		));

  	return $this->_propertyValue;
  }
}
