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
