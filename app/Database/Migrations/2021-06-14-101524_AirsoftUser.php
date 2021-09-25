<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class AirsoftUser extends Migration
{
	public function up()
	{
		$this->forge->addField([
			'id_user'          => [
				'type'           => 'INT',
				'constraint'     => 11,
				'unsigned'       => true,
				'auto_increment' => true,
			],
			'name_user'       => [
				'type'       => 'VARCHAR',
				'constraint' => '255',
			],
			'addres_user' => [
				'type' => 'VARCHAR',
				'constraint' => '255',
			],
			'email_user' => [
				'type' => 'VARCHAR',
				'constraint' => '255',
			],
			'country_user' => [
				'type' => 'VARCHAR',
				'constraint' => '255',
			],
			'created_at' => [
				'type' => 'DATETIME',
				'null' => true,

			],
			'updated_at' => [
				'type' => 'DATETIME',
				'null' => true

			]
		]);
		$this->forge->addKey('id_user', true);
		$this->forge->createTable('airsoft_user');
	}

	public function down()
	{
		$this->forge->dropTable('aursoft_user');
	}
}
