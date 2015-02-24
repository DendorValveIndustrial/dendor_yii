<?php

$this->menu=array(
  array('label'=>'Catalog Items'),
  array('label'=>'Create', 'url'=>array('create')),
  array('label'=>'Manage Property', 'url'=>array('/catalog/admin/property/admin')),
  array('label'=>'View', 'url'=>array('view', 'id'=>$model->id)),
  array('label'=>'Manage', 'url'=>array('admin')),
  array('label'=>'Catalog Group'),
  array('label'=>'Manage', 'url'=>array('/catalog/admin/catalogGroup/admin')),
);
?>
<?php echo TbHtml::pageHeader('Property Value', $model->name); ?>

