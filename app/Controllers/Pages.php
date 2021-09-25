<?php

namespace App\Controllers;

// require_once 'vendor/autoload.php';
class Pages extends BaseController
{
    public function index()
    {

        $data = [
            'title' => 'Home | Web Mekii',
            'test' => ['satu', 'dua', 'tiga']
        ];

        return view('pages/home', $data);
    }

    public function about()
    {
        $data = [
            'title' => 'About Mekiii'
        ];

        return view('pages/about', $data);
    }

    public function contact()
    {
        $data = [
            'title' => 'Contact Mek',
            'alamat' => [
                [
                    'tipe' => 'Rumah',
                    'alamat' => 'Jl.Madukoro',
                    'kota' => 'Kota Semarang'
                ],
                [
                    'tipe' => 'Kantor',
                    'alamat' => 'Jl.Sadewa',
                    'kota' => 'Kota Semarang'
                ]
            ]

        ];

        return view('pages/contact', $data);
    }
}
