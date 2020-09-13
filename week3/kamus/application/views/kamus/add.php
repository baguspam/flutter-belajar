<?php $this->load->view("template/header.php") ?>
<div class="container pb-3 mt-3 l6">
    <div class="card py-3">
        <div class="card-content py-0 mb-4">
            <h5>Tambah Data</strong>:</h5>
            <form method="POST" action="">
                <div class="row">
                    <div class="input-field col s12 l12">
                        <input name="jawa" placeholder="Masukkan kata bahasa jawa" required type="text" id="jawa">
                        <label for="jawa">Bahasa Jawa <font color="red">*</font>:</label>
                    </div>
                    <div class="input-field col s12 l12">
                        <input name="indonesia" placeholder="Masukkan kata bahasa indonesia" type="text" id="indonesia" >
                        <label for="indonesia">Bahasa Indonesia:</label>
                    </div>
                    <button type="submit" class="btn waves-effect waves-light green" name="save">
                        <i class="material-icons left">save</i>Simpan
                    </button>
                </div>
            </form> 
        </div>
    </div>
</div>
<?php $this->load->view("template/footer.php") ?>

 
