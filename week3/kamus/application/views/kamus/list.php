<?php $this->load->view("template/header.php") ?>
<div class="container pb-3 mt-3">
    <div class="card py-3">
        <div class="card-content py-0 mb-4">
            <a href="<?php echo base_url();?>kamus/add" class="btn waves-effect waves-light green"><i class="material-icons left">add</i>Tambah&nbsp;&nbsp;</a>
            <table class="responsive-table highlight"  id="datatable" >
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Bahasa Jawa</th>
                        <th>Bahasa Indonesia</th>
                        <th colspan="2">Aksi</th>
                    </tr>
                </thead>
            <?php
            foreach ($list_kamus as $kamus) {
            ?>
                <tbody>
                    <tr>
                        <td><?php echo $kamus->id;?></td>
                        <td><?php echo $kamus->jawa;?></td>
                        <td><?php echo $kamus->indonesia;?></td>
                        <td>
                            <a href="<?php echo site_url('kamus/edit/'.$kamus->id) ?>" class="btn waves-effect waves-light green"><i class="material-icons">edit</i></a>&nbsp;
                            <a href="<?php echo site_url('kamus/delete/'.$kamus->id) ?>" class="btn waves-effect waves-light red" onclick="window.confirm('Apakah Anda yakin akan menghapus ?')"><i class="material-icons">delete</i></a>
                        </td>
                    </tr>
                </tbody>
            <?php
            }
            ?>
            </table>
        </div>
    </div>
</div>
<?php $this->load->view("template/footer.php") ?>