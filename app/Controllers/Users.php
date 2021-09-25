<?php

namespace App\Controllers;

use App\Models\UsersModel;

class Users extends BaseController
{
    protected $userstModel;
    public function __construct()
    {
        $this->usersModel = new UsersModel();
    }
    public function index()
    {

        $data = [

            'title' => 'Users List',
            'users' => $this->usersModel->findAll()

        ];



        // dd($airsoft);

        return view('users/index', $data);
    }
}
