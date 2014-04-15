<?php
require_once 'Z:\home\dendor-pl.loc\www\protected\extensions\phamlp\vendors\phamlp\haml\HamlHelpers.php';
?><?php echo $this->beginContent('//layouts/main'); ?>

<div class="span-19">
<div id="content">
<?php echo $content; ?>

</div></div><div class="span-5 last">
<div id="sidebar">
<?php
$this->beginWidget('zii.widgets.CPortlet', array(
  'title'=>'Operations',
));
$this->widget('zii.widgets.CMenu', array(
  'items'=>$this->menu,
  'htmlOptions'=>array('class'=>'operations'),
));
$this->endWidget();
?>
</div></div><?php echo $this->endContent(); ?>

