<?php

namespace App\Models;

use CodeIgniter\Model;

class UsersModel extends Model
{
    protected $table = 'airsoft_user';
    protected $useTimestamps = true;
    protected $allowedFields = ['name_user', 'addres_user', 'email_user', 'country_user'];
}
