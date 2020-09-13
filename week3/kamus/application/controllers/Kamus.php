<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kamus extends CI_Controller {
    public function __construct() {
        parent::__construct();
        $this->load->model("kamus_model");
    }

	public function index()
	{
        $data['translate_kamus'] = $this->kamus_model->getTranslate();
		$this->load->view('kamus/search', $data);
    }
    
    public function list()
	{
        $data['list_kamus'] = $this->kamus_model->getAll();
		$this->load->view('kamus/list', $data);
    }
    
    public function delete($id=null)
    {
        if (!isset($id)) show_404();
        
        if ($this->kamus_model->delete($id)) {
            redirect(site_url('kamus/list'));
            // echo "sukses";
        }
    }

    public function add()
    {
        if(isset($_POST['save'])){
            $add = $this->kamus_model;
            $add->save();
            echo "<script>alert('Berhasil disimpan');</script>";
        }

        $this->load->view("kamus/add");
    }

    public function edit($id = null)
    {
        if (!isset($id)) redirect('kamus/list');
       
        $edit = $this->kamus_model;

        if(isset($_POST['save'])){
            $edit->update();
            echo "<script>alert('Berhasil diupdate');</script>";
        }

        $data["kamus"] = $edit->getById($id);
        if (!$data["kamus"]) show_404();
        
        $this->load->view("kamus/edit", $data);
    }
}
