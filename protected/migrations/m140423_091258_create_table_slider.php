<?php

class m140423_091258_create_table_slider extends CDbMigration
{
	public function up()
	{
		$this->createTable('slider', array(
			'id' => 'pk',
			'data_slidr' => 'string NOT NULL',
			'name' => 'string',
			'text' => 'text',
			'img' => 'string',
			'link' => 'string',
			'active' => 'boolean NOT NULL DEFAULT 1',
		));

		$this->insert('slider', array(
			'data_slidr' => 'one',
			'name' => 'Przepustnice zwrotne',
			'text' => 'Oferujemy przepustnice zwrotne wyprodukowane ze stali, żeliwa sferoidalnego, PVC. Kołnierzowe, bezkołnierzowe, do wspawania, mimośrodowe w zakresie średnic DN – od 32 do 2000.',
			'link' => '/about/',
		));
	}

	public function down()
	{
		$this->dropTable('slider');
	}

	/*
	// Use safeUp/safeDown to do migration with transaction
	public function safeUp()
	{
	}

	public function safeDown()
	{
	}
	*/
}
