<?php $this->load->view("template/header.php") ?>
<div class="container pb-3 mt-3 l6">
    <div class="card py-3">
        <div class="card-content py-0 mb-4">
            <form method="POST" action="">
                <div class="row">
                    <div class="input-field col s12 l12">
                        <input name="jawa" placeholder="Ex: Koe" required type="text" id="jawa">
                        <label for="jawa">Masukkan Kata Bahasa Jawa <font color="red">*</font>:</label>
                    </div>
                    <!-- <div class="input-field col s12 l12">
                        <input name="indonesia" placeholder="Ex: Kamu" type="text" id="indonesia" >
                        <label for="indonesia">Terjemahan Bahasa Indonesia:</label>
                    </div> -->
                    <button type="submit" class="btn waves-effect waves-light green" name="save">
                        <i class="material-icons left">translate</i>Terjemahkan
                    </button>
                </div>
            </form> 
        </div>
    </div>
    <?php
    if(isset($_POST['save'])){
    ?>
    <div class="card py-3">
        <div class="card-content py-0 mb-4">
            <h6>Hasil Terjemahan <strong>"<?php echo $_POST['jawa'];?>"</strong>:</h6>
            <hr>
            <table class="responsive-table highlight">
            <?php
            // echo $translate_kamus[1];
            foreach ($translate_kamus[0] as $kamus) {
            ?>
                <tbody>
                    <tr>
                        <!-- <td><?php echo $kamus->id;?></td> -->
                        <td>- <i><?php echo $kamus->indonesia;?></i></td>
                    </tr>
                </tbody>
            <?php
            }
            ?>
            </table>
        </div>
    </div>
    <?php
    }
    ?>
</div>
<?php $this->load->view("template/footer.php") ?>

 
