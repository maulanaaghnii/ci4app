<?php

namespace App\Models;

use CodeIgniter\Model;

class AirsoftModel extends Model
{
    protected $table = 'airsoft';
    protected $useTimestamps = true;
    protected $allowedFields = ['name', 'slug', 'factory', 'thumbnail', 'type'];


    public function getAirsoft($slug = false)
    {
        if ($slug == false) {
            return $this->findAll();
        }
        return $this->where(['slug' => $slug])->first();
    }
}
