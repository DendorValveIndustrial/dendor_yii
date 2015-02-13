<?php
  $this->pageTitle = Yii::t('app','pipeline_valves').' - '.CHtml::encode(Yii::app()->name);;
?>
<div class="row">
  <div class="span3">
    <div class="aside-sidebar">
      <ul class="nav nav-list" role="navigation">
        <li class="nav-header">Kategorie produktów</li>
        <li><a href="#">Przepustnice</a></li>
        <li><a href="#">Zasuwy</a></li>
        <li><a href="#">Zawory zwrotne</a></li>
        <li><a href="#">Zawory elektromagnetyczne</a></li>
        <li><a href="#">Zawory bezpieczeństwa</a></li>
        <li><a href="#">Filtry</a></li>
        <li><a href="#">Kurki kulowe</a></li>
        <li><a href="#">Napędy elektryczne</a></li>
        <li><a href="#">Kompensatory</a></li>
        <li><a href="#">Kształtki</a></li>
        <li><a href="#">Akcesoria</a></li>
      </ul>
    </div>
  </div>
  <div class="span9">
    <div class="row-fluid">
      <div class="span10 offset1">
        <div class="home-title">
          <h2><?php echo CHtml::encode(Yii::app()->name); ?></h2>
          <div class="about">
            <?php echo $model->full_description; ?>
          </div>
        </div>
      </div>
    </div>
    <div class='line line-dotted'></div>
    <div class='row-fluid'>
      <div class='span6'>
        <h2 class='h1'>Aktualności</h2>
        <p>Firma Dendor Valve Industrial była wystawcą na ХХII Międzynarodowych Targach Maszyn i Urządzeń dla Wodociągów i Kanalizacji WOD-KAN 2014 w Bydgoszczy (Polska). Przedstawiony przez spółkę szeroki asortyment armatury przemysłowej dla przemysłu i gospodarki komunalnej wzbudzał żywe zainteresowanie licznych odwiedzających...</p>
        <p class='text-right'><a href="#">czytaj więcej...</a></p>
      </div>
      <div class='span6'>
        <ul class='thumbnails'>
          <li class='span5 offset1'>
            <div class='thumbnail text-center'>
              <a href="#"><img alt="lorem_image" height="180" src="http://placehold.it/180x180" width="180" /></a>
              <h5>Сertificate</h5>
            </div>
          </li>
          <li class='span5 offset1'>
            <div class='thumbnail text-center'>
              <a href="#"><img alt="lorem_image" height="180" src="http://placehold.it/180x180" width="180" /></a>
              <h5>Catalogue</h5>
            </div>
          </li>
        </ul>
      </div>
    </div>
  </div>
</div>
