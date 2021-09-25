<?php

namespace App\Database\Seeds;

use CodeIgniter\I18n\Time;
use CodeIgniter\Database\Seeder;

class AirsoftUserSeeder extends Seeder
{
    public function run()
    {
        $faker = \Faker\Factory::create();
        for ($i = 0; $i < 100; $i++) {


            $data = [
                'name_user'     => $faker->name,
                'addres_user'   => $faker->address,
                'email_user'    => $faker->email,
                'country_user'  => $faker->country,
                'created_at'    => Time::now(),
                'updated_at'    => Time::now()


            ];
            $this->db->table('airsoft_user')->insert($data);
        }
        // // Simple Queries
        // $this->db->query("INSERT INTO airsoft_user (name_user, addres_user, email_user, country_user, created_at, updated_at) VALUES(:name_user:, :addres_user:, :email_user:, :country_user:, :created_at:, :updated_at:)", $data);

        // Using Query Builder

    }
}
