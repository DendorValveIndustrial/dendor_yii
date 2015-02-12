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
    <div class="line line-dotted"></div>
    <div class="row-fluid">
      <div class="span4">
        <h2 class="h2">Jakość Produktów</h2>
        <p>Dendor Valve Industrial zawsze troszczy się o jakość swoich produktów i potrzeby Klientów dążąc do świadczenia jak najlepszej jakości usług dla naszych wszystkich Kontrahentów.</p>
      </div>
      <div class="span4">
        <h2 class="h2">Kontrola Jakości</h2>
        <p>Dendor Valve Industrial zapewnia możliwość kontroli jakości wszystkich procesów produkcyjnych i gwarantuje ich  jakość sprawdzając na najnowszej generacji aparaturze badawczo-kontrolnej.</p>
      </div>
      <div class="span4">
        <h2 class="h2">Zastosowanie Techniczne</h2>
        <p>Dendor Valve Industrial nie ogranicza się tylko do projektowania i wytwarzania standardowych elementów,  ale również pomaga i doradza znalezienie prawidłowych rozwiązań w Państwa branży.</p>
      </div>
    </div>
  </div>
</div>
