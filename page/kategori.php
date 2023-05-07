<?php
include_once "./function.php";
$perpage = 4;
$page = isset($_GET['page']) ? $_GET['page'] : "";

if (empty($page)) {
    $num = 1;
    $page = 1;
} else {
    $num = (($page - 1) * $perpage) + 1;
}

if ($_GET['id'] != '') {
    $_SESSION['id'] = intval($_GET['id']);
}
$kategori = "SELECT * FROM kategori where id = '" . $_SESSION['id'] . "' ";
$hasil1 = mysqli_query($koneksi, $kategori);
$hasil = mysqli_query($koneksi, "select berita.beritaimage,berita.username,berita.id as idb,berita.judul,kategori.kategori,kategori.id,berita.konten,berita.tanggal from berita left join kategori on kategori.id=berita.idkategori where berita.idkategori='" . $_SESSION['id'] . "' order by berita.view desc limit $num, $perpage");
$queryk = mysqli_fetch_array($hasil1);
$querykategori = "SELECT * FROM berita WHERE idkategori = '" . $_SESSION['id'] . "' ORDER BY view DESC LIMIT 1";
$hasil2 = mysqli_query($koneksi, $querykategori);
if (mysqli_num_rows($hasil2) < 1) { ?>
    <section id="content">
        <div class="container" style="margin-bottom: 15%;">
            <div class="row">
                <ul class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                    <li class="breadcrumb-item active">
                        <?= $queryk["kategori"] ?>
                    </li>
                </ul>
            </div>
            <div class="row text-center" style="margin-top: 10%;">
                <h1>kategori belum punya berita</h1>
            </div>
        </div>
    </section>
<?php } else {
    $populer = tampilkan($querykategori)[0];
    ?>
    <section id="content">
        <div class="container">
            <ul class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.php">Home</a></li>
                <li class="breadcrumb-item active">
                    <?= $queryk["kategori"] ?>
                </li>
            </ul>
            <h3>Berita Terhangat Seputar <?= $queryk['kategori']; ?></h3>
            <br>

            <div class="card-hero position-relative mx-auto">
                <img src="gambar/<?= $populer["beritaimage"] ?>" alt="" class="img-hero">
                <div class="layout-caption p-2 p-md-4">
                    <p class="title-hero multi-line-truncate">
                        <?= $populer["judul"] ?>
                    </p>
                    <small class="me-5 text-white"><?= $populer["tanggal"] ?></small>
                    <small class="text-white">
                        <?= $populer["username"] ?>
                    </small>
                    <a href="index.php?p=detail&idb=<?= $populer["id"] ?>" class="stretched-link"></a>
                </div>
            </div>
            <br>
            <br>
            <div id="content-news" class="row">

                <div class="col-12 col-md-9 mx-auto">
                    <h3>Berita <?= $queryk["kategori"] ?> Lainnya</h3>
                    <hr>
                    <?php
                    foreach ($hasil as $data) {
                        ?>
                        <div class="card border-0 w-100">
                            <div class="row g-0 align-items-center">
                                <div class="col-md-4 col-4 position-relative">
                                    <img src="gambar/<?= $data["beritaimage"] ?>" class="img-fluid rounded my-auto" alt="...">
                                </div>
                                <div class="col-md-8 col-8">
                                    <div class="card-body p-2 p-md-3">
                                        <span class="text-danger fw-bold list-label">
                                            <?= $data["kategori"] ?>
                                        </span>
                                        <h5 class="card-title multi-line-truncate list-judul my-lg-4">
                                            <?= $data["judul"] ?>
                                        </h5>
                                        <a href="index.php?p=detail&idb=<?= $data["idb"] ?>" class="stretched-link"></a>
                                        <small class="text-muted penulis me-4">
                                            <?= $data["username"] ?>
                                        </small>
                                        <small class="text-muted"><?= $data["tanggal"] ?></small>
                                    </div>
                                </div>
                            </div>
                            <hr class="m-2">
                        </div>
                    <?php } ?>
                    <?php
                    require_once "./function.php";
                    $idk = $_SESSION["id"];
                    $hasilh = mysqli_query($koneksi, "select * from berita where idkategori = '" . $_SESSION['id'] . "'");
                    $total_record = mysqli_num_rows($hasilh) - 1;
                    $total_page = ceil($total_record / $perpage);
                    ?>
                    <ul class="pagination justify-content-center mb-4">
                        <?php
                        if ($page > 1) {
                            $prev = "<a href='./index.php?p=kategori&id=$idk&page=1' class='page-link'><span aria-hidden='true'>First</span></a>";
                        } else {
                            $prev = "<a href='./index.php?p=kategori&id=$idk&page=1' class='page-link'><span aria-hidden='true'>First</span></a>";
                        }
                        $number = '';
                        for ($i = 1; $i <= $total_page; $i++) {
                            if ($i == $page) {
                                $number .= "<li><a href='./index.php?p=kategori&id=$idk&page=$i' class='page-link'>$i</a></li>";
                            } else {
                                $number .= "<li><a href='./index.php?p=kategori&id=$idk&page=$i' class='page-link'>$i</a></li>";
                            }
                        }
                        if ($page < $total_page) {
                            $link = $page + 1;
                            $next = "<a href='./index.php?p=kategori&id=$idk&page=$total_page' class='page-link'><span aria-hidden='true'>Last</span></a>";
                        } else {
                            $next = "<a href='./index.php?p=kategori&id=$idk&page=$total_page' class='page-link'><span aria-hidden='true'>Last</span></a>";
                        }
                        ?>
                        <li class="page-item">
                            <?php echo $prev; ?>
                        </li>
                        <li class="page-item flex-col">
                            <?php echo $number; ?>
                        </li>
                        <li class="page-item">
                            <?php echo $next; ?>
                        </li>
                    </ul>

                </div>
            </div>
        </div>
    </section>
<?php } ?>