<?php

namespace App\Controllers;

use App\Models\AirsoftModel;

class Airsoft extends BaseController
{
    protected $airsoftModel;
    public function __construct()
    {
        $this->airsoftModel = new AirsoftModel();
    }
    public function index()
    {
        // $airsoft = $this->airsoftModel->findAll();
        $data = [

            'title' => 'Daftar Airsoft',
            'airsoft' => $this->airsoftModel->getAirsoft()

        ];



        // dd($airsoft);

        return view('airsoft/index', $data);
    }

    public function detail($slug)
    {

        $data = [
            'title' => 'Detail Airsoft',
            'airsoft' => $this->airsoftModel->getAirsoft($slug)
        ];

        //if Airsoft doesn't exist on table
        if (empty($data['airsoft'])) {
            throw new \CodeIgniter\Exceptions\PageNotFoundException('Airsoft Name : ' . $slug . ' does not exist');
        }

        return view('airsoft/detail', $data);
    }

    public function create()
    {
        // session();
        $data = [
            'title' => 'Form Add Airsoft',
            'validation' => \Config\Services::validation()
        ];

        return view('airsoft/create', $data);
    }

    public function save()
    {

        //Validation
        if (!$this->validate(
            [

                'name' => 'required|is_unique[airsoft.name]',
                'thumbnail' => [
                    'rules' => 'max_size[thumbnail,1024]|is_image[thumbnail]|mime_in[thumbnail,image/jpg,image/jpeg,image/png]',
                    'errors' => [
                        'max_size' => 'image size is than max capacity',
                        'is_image' => 'file is not Image Category',
                        'mime_in' => 'file is not Image Category'
                    ]
                ]
            ]



        )) {

            // $validation = \Config\Services::validation();
            // // dd($validation);
            // return redirect()->to('/airsoft/create/')->withInput()->with('validation', $validation);
            return redirect()->to('/airsoft/create/')->withInput();
        }
        // dd('success');

        // dd($this->request->getVar('name'));

        //Upload Image

        $fileThumbnail = $this->request->getFile('thumbnail');
        // if user not uploading img 
        if ($fileThumbnail->getError() == 4) {

            $nameThumbnail = 'default.jpg';
        } else {
            //generating thumbnail name
            $nameThumbnail = $fileThumbnail->getRandomName();

            //move file to img folder
            $fileThumbnail->move('img', $nameThumbnail);
        }





        $slug = url_title($this->request->getVar('name'), '-', true);
        $this->airsoftModel->save([
            'name' => $this->request->getVar('name'),
            'slug' => $slug,
            'factory' => $this->request->getVar('factory'),
            'type' => $this->request->getVar('type'),
            'thumbnail' => $nameThumbnail


        ]);

        session()->setFlashdata('message', 'Success Insert Product.');
        return redirect()->to('/airsoft');
    }


    public function delete($id)
    {
        //search image by ID
        $airsoft = $this->airsoftModel->find($id);

        // if image default = true
        if ($airsoft['thumbnail'] != 'default.jpg') {
            //delete image
            unlink('img/' . $airsoft['thumbnail']);
        }




        $this->airsoftModel->delete($id);
        session()->setFlashdata('message', 'Success Deleting Data.');
        return redirect()->to('/airsoft');
    }


    public function edit($slug)
    {
        $data = [
            'title' => 'Edit Form',
            'validation' => \Config\Services::validation(),
            'airsoft' => $this->airsoftModel->getAirsoft($slug)
        ];

        return view('airsoft/edit', $data);
    }

    public function update($id)
    {
        //check name
        $oldAirsoft = $this->airsoftModel->getAirsoft($this->request->getVar('slug'));

        if ($oldAirsoft['name'] == $this->request->getVar('name')) {
            $rule_name = 'required';
        } else {
            $rule_name = 'required|is_unique[airsoft.name]';
        }

        if (!$this->validate([
            'name' => $rule_name,
            'name' => 'required|is_unique[airsoft.name]',
            'thumbnail' => [
                'rules' => 'max_size[thumbnail,1024]|is_image[thumbnail]|mime_in[thumbnail,image/jpg,image/jpeg,image/png]',
                'errors' => [
                    'max_size' => 'image size is than max capacity',
                    'is_image' => 'file is not Image Category',
                    'mime_in' => 'file is not Image Category'
                ]
            ]
        ])) {


            // dd($validation);
            return redirect()->to('/airsoft/edit/' . $this->request->getVar('slug'))->withInput();
        }

        $fileThumbnail = $this->request->getFile('thumbnail');

        //check image, if still use old image

        if ($fileThumbnail->getError() == 4) {
            $nameThumbnail = $this->request->getVar('oldThumbnail');
        } else {
            //generate random name for thumnail name

            $nameThumbnail = $fileThumbnail->getRandomName();
            //move image to dir
            $fileThumbnail->move('img', $nameThumbnail);
            //delete old file
            unlink('img/' . $this->request->getVar('oldThumnail'));
        }


        $slug = url_title($this->request->getVar('name'), '-', true);
        $this->airsoftModel->save([
            'id' => $id,
            'name' => $this->request->getVar('name'),
            'slug' => $slug,
            'factory' => $this->request->getVar('factory'),
            'type' => $this->request->getVar('type'),
            'thumbnail' => $nameThumbnail


        ]);

        session()->setFlashdata('message', 'Success update Product.');
        return redirect()->to('/airsoft');
    }
}
