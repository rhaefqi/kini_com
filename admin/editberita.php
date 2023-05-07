<?php
require_once "./function.php";

if (($_SESSION["level"]) !== "1") {
    echo "
            <script>
                alert('anda bukan admin');
                document.location.href = 'index.php';
            </script>";
}

if (empty($_GET["id"])) {
    echo "
    <script>
        alert('pilih berita yang mau di edit');
        document.location.href = 'index.php?p=kelberita';
    </script>";
}

$idb = $_GET["id"];

if (isset($_POST["btnedit"])) {
    editberita($_POST, $idb);
}


$data = tampilkan("select berita.beritaimage,berita.username,berita.id as idb,berita.judul,kategori.kategori,kategori.id as idk,berita.konten,berita.tanggal from berita left join kategori on kategori.id=berita.idkategori where berita.id = '$idb'")[0];
?>
<section id="content">
    <div class="container">
        <h3>Edit Berita</h3>
        <hr>
        <form method="POST" class="my-login-validation mt-3 ml-3" enctype="multipart/form-data">
            <div class="form-group">
                <label for="username">Judul Berita</label>
                <input type="hidden" name="id">
                <input type="hidden" name="gambarlama" value="<?= $data["beritaimage"] ?>">
                <input id="judul" type="text" class="form-control" name="judul" required autofocus
                    value="<?php echo htmlentities($data['judul']); ?>">
            </div>

            <div class="form-group">
                <label for="tanggal">Tanggal Berita</label>
                <input id="tanggal" type="date" class="form-control" name="tanggal" value="<?= date("Y-m-d"); ?>"
                    required readonly>
            </div>

            <div class="form-group">
                <label for="kategori">pilih kategori</label>
                <input type="text" id="kategori" class="form-control" name="kategori" readonly
                    value="<?= $data["kategori"] ?>">
            </div>

            <div class="form-group">
                <label for="isi">Konten</label>
                <textarea id="isi" name="isi" rows="10" cols="150"><?= $data["konten"] ?> </textarea>
            </div>

            <div class="form-group">
                <label for="gambar">pilih gambar</label>
                <input type="file" id="gambar" name="gambar" class="form-control">
            </div><br>

            <div class="form-group">
                <button type="submit" name="btnedit" class="btn btn-primary btn-block">
                    edit
                </button>
                <a href="./?p=kelberita" class="btn btn-warning btn-block">
                    kembali
                </a>
            </div><br>
            <script>
                CKEDITOR.replace('isi');
            </script>
        </form>
    </div>
</section>