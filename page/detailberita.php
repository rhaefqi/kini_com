<?php
$idberita = $_GET["idb"];
require_once "./function.php";
if (isset($_POST["btnkomen"])) {
    komen($_POST, $idberita);
}

$sql = "SELECT view FROM berita WHERE id = '$idberita'";
$result = $koneksi->query($sql);

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $visits = $row["view"];
        $sql = "UPDATE berita SET view = $visits+1 WHERE id ='$idberita'";
        $koneksi->query($sql);
    }
} else {
    echo "no results";
}
?>
<section id="content">
    <div class="container">
        <div class="row">
            <?php
            require_once "./function.php";
            $idb = $_GET["idb"];
            $berita = tampilkan("select berita.beritaimage,berita.username,berita.id,berita.judul,kategori.kategori as namakategori,kategori.id as idk,berita.konten,berita.tanggal from berita left join kategori on kategori.id=berita.idkategori where berita.id = '$idb'")[0];
            ?>
            <div class="col-lg-8 col-12">
                <div class="header-artikel">
                    <div class="d-flex justify-content-between">
                        <a href="index.php?p=kategori&id=<?= $berita['idk'] ?>"><button class="btn btn-danger fw-bold">
                                <?= $berita["namakategori"] ?>
                            </button></a>
                        <a href="./"><button class="btn btn-warning fw-bold">
                                Home
                            </button></a>
                    </div>
                    <br>
                    <h3 class="title-artikel">
                        <?= $berita["judul"] ?>
                    </h3>
                    <br>
                    <small class="text-muted"><?= $berita["username"] ?></small> |
                    <small class="text-muted">
                        <?= $berita["tanggal"] ?>
                    </small> |
                    <small class="text-muted"><i class="bi bi-eye"></i>&nbsp;<?= $visits ?></small>
                </div>
                <hr>
                <div class="w-100 text-center">
                    <img src="gambar/<?= $berita["beritaimage"] ?>" alt="" class="image-artikel">
                </div>
                <hr>
                <div class="body-artikel px-2">
                    <div class="text-justify" style="text-align: justify;">
                        <?= $berita["konten"] ?>
                    </div>
                </div>
                <hr>
                <h5>Komentar :</h5>
                <?php
                $sts = 1;
                $query = mysqli_query($koneksi, "select * from komentar where idberita='$idb' and status='$sts'");
                while ($row = mysqli_fetch_array($query)) {
                    $username = $row['username'];
                    $query1 = mysqli_query($koneksi, "select user.profil as gambar from user where username = '$username'");
                    $hasil1 = mysqli_fetch_array($query1);
                    ?>
                    <div class="media mb-4">
                        <img class="d-flex mr-3 rounded-circle" width="30" height="30" src="gambar/<?= $hasil1["gambar"] ?>"
                            alt="profil">
                        <div class="media-body">
                            <h5 class="mt-0">
                                <?php echo htmlentities($row['username']); ?> <br />
                                <span style="font-size:11px;"><b>at</b> <?php echo htmlentities($row['waktukomen']); ?></span>
                            </h5>

                            <?php echo htmlentities($row['komen']); ?>
                        </div>
                    </div>
                    <?php } ?>

                <?php
                if (empty($_SESSION["username"])) { ?>
                    <div class="col-md-8">
                        <div class="card my-4" style="border-radius: 20px;">
                            <div class="card-body">
                                <p>Silahkan login untuk berkomentar</p>
                                <a href="login/login.php" class="btn btn-primary" >Login</a>
                            </div>
                        </div>
                    </div>
                    <?php
                } else {
                    ?>
                    <div class="col-md-8">
                        <div class="card my-4" style="border-radius: 20px;">
                            <h5 class="card-header">Leave a Comment:</h5>
                            <div class="card-body">
                                <form method="post">
                                    <div class="form-group">
                                        <textarea class="form-control" name="komen" rows="3" placeholder="Comment"
                                            required></textarea>
                                    </div>
                                    <button type="submit" class="btn btn-primary" name="btnkomen">Submit</button>
                                </form>
                            </div>
                        </div>
                    </div>
                    <?php } ?>
            </div>


            <!-- sidebar content -->
            <div class="col-lg-4 col-12 border-start">
                <h3>Rekomendasi</h3>
                <hr>
                <?php
                $populer = "SELECT * FROM berita ORDER BY view DESC LIMIT 3";
                $hasil = mysqli_query($koneksi, $populer);
                foreach ($hasil as $data) {
                    ?>
                    <div class="card border-0 w-100">
                        <div class="row g-0 align-items-center">
                            <div class="col-md-4 col-4 position-relative">
                                <img src="gambar/<?= $data["beritaimage"] ?>" class="img-fluid rounded my-auto" alt="...">
                            </div>
                            <div class="col-md-8 col-8">
                                <div class="card-body p-2 p-md-3">
                                    <h5 class="card-title multi-line-truncate list-judul mb-md-2">
                                        <?= $data["judul"] ?>
                                    </h5>
                                    <a href="index.php?p=detail&idb=<?= $data["id"] ?>" class="stretched-link"></a>
                                    <small class="text-muted penulis me-4">
                                        <?= $data["username"] ?>
                                    </small>
                                    <small class="text-muted">
                                        <?= $data["tanggal"] ?>
                                    </small>
                                </div>
                            </div>
                        </div>
                        <hr class="m-2">
                    </div>
                    <?php } ?>
            </div>
        </div>
    </div>
    </div>
</section>