<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Kamus_model extends CI_Model
{
    private $_table = "tbl_kamus";

    public function getAll()
    {
        return $this->db->get($this->_table)->result();
    }

    public function getTranslate()
    {
        $post = $this->input->post();
        if(isset($post['save'])){  
            // return $this->db->like($this->_table, ["jawa" => $post['jawa']])->result();
            $search = $post['jawa'];
            $result = $this->db->query("SELECT * from $this->_table where jawa like '%$search%' LIMIT 50")->result();
            // $num_rows = $this->db->query("SELECT COUNT(*) AS `numrows from $this->_table where jawa like '%$search%' LIMIT 50")->count_all_results();
            $num_rows = $this->db->count_all_results($this->_table);
            // echo $num_rows;
            return [$result];
        }
        else{
            return null;
        }
    }
    
    public function getById($id)
    {
        return $this->db->get_where($this->_table, ["id" => $id])->row();
    }

    public function save()
    {
        $post = $this->input->post();
        $this->jawa = $post["jawa"];
        $this->indonesia = $post["indonesia"];
        $this->db->insert($this->_table, $this);
    }

    public function update()
    {
        $post = $this->input->post();
        $this->id = $post["id"];
        $this->jawa = $post["jawa"];
        $this->indonesia = $post["indonesia"];
        $this->db->update($this->_table, $this, array('id' => $post['id']));
    }

    public function delete($id)
    {
        return $this->db->delete($this->_table, array("id" => $id));
    }
}