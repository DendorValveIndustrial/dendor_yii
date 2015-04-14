<div class="container">
  <div class="text-center">
    <div><strong>Dendor Valve Industrial  Sp. z o.o.</strong>, ul. Jaśkowa Dolina 81, 80-286 Gdańsk</div>
    <div>REGON: 222023101  NIP: 204-000-42-35, Sąd Rej., Gdańsk, VII Wydz.Gosp. KRS 0000492975</div>
    <div>Tel.: + 48 58 523 75 60, Email: <a href="mailto:info@dendor.pl">info@dendor.pl</a></div>
  </div>
  <div class="certificate text-center clearfix">
    <?php echo TbHtml::link('', Yii::app()->params['uploadPath'].'certificates/'.Certificates::model()->findByPk(2)->file, array('target'=>'_blank', 'class'=>'iso')) ?>
    <?php echo TbHtml::link('', Pages::model()->pageCategory('certificate')->find()->viewUrl, array('class'=>'pca')) ?>
    <?php echo TbHtml::link('', Pages::model()->pageCategory('certificate')->find()->viewUrl, array('class'=>'iaf')) ?>
    <?php echo TbHtml::link('', Yii::app()->params['uploadPath'].'certificates/'.Certificates::model()->findByPk(1)->file, array('target'=>'_blank', 'class'=>'pzh')) ?>
  </div>
  <div class="text-center">Copyright &copy; <?php echo date('Y') ?> by <?php echo CHtml::encode(Yii::app()->name) ?>. All Rights Reserved.</div>
</div>
