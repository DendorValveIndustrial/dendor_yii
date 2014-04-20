<?php

class m140420_202846_create_infopage_category_translate_table extends CDbMigration
{
	public function up()
	{
		$this->createTable('infopage_category_translate', array(
			'id' => 'pk',
			'infopage_category_id' => 'integer NOT NULL',
			'language_id' => 'integer NOT NULL',
			'name' => 'string',
			'description' => 'text',
			'text' => 'text',
			'seo_title' => 'text',
			'seo_description' => 'text',
			'seo_keywords' => 'text',
		));
	}

	public function down()
	{
		$this->dropTable('infopage_category_translate');
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
