<?php

    $perpage = 5;
    $page = isset($_GET['page']) ? $_GET['page'] : "";
    

    if (empty($page)) {
        $num = 4;
        $page = 1;
    } else {
        $num = ($page * $perpage) - 1;
    }


require_once "./function.php";
$populer = tampilkan("SELECT * FROM berita ORDER BY view DESC LIMIT 1")[0];
?>

<section id="content">
    <div class="container">
        <h6 style="background-color: orange; padding: 3px;">
            <MARQUEE direction="left" style="font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif;">
                👋SELAMAT DATANG DI KINI.COM SITUS BERITA TERBARU DAN TERHANGAT👋</MARQUEE>
        </h6>
        <h3>Topik Terhangat</h3>
        <hr>
        <br>

        <div class="card-hero position-relative mx-auto">
            <img src="gambar/<?= $populer["beritaimage"] ?>" alt="" class="img-hero">
            <div class="layout-caption p-2 p-md-4">
                <p class="title-hero multi-line-truncate">
                    <?= $populer['judul'] ?>
                </p>
                </p>
                <small class="me-5 text-white"><?= $populer["tanggal"] ?></small>
                <small class="text-white">
                    <?= $populer["username"] ?>
                </small>
                <a href='index.php?p=detail&idb=<?= $populer["id"] ?>' class="stretched-link"></a>
            </div>
        </div>
        <br>
        <br>
        <br>
        <div class="d-flex justify-content-between">
            <h3>Berita Terbaru</h3>
        </div>
        <br>
        <div class="row row-cols-1 row-cols-md-3 row-cols-2 row-cols-lg-4 g-4 g-lg-3 m-0 w-100">
            <?php
            include_once "./function.php";
            $hasil = mysqli_query($koneksi, "select berita.beritaimage,berita.username,berita.id as idb,berita.judul,kategori.kategori,kategori.id as idk,berita.konten,berita.tanggal from berita left join kategori on kategori.id=berita.idkategori order by berita.id desc limit 0, 4");
            foreach ($hasil as $data) {
                ?>
                <div class="col">
                    <div class="card border-0 h-100 mb-2 mb-md-4 position-relative">
                        <span class="label-category p-1"><?php echo "$data[kategori]" ?></span>
                        <img src="gambar/<?= $data["beritaimage"] ?>" alt="" class="thumbnail-latets">
                        <div class="card-body p-0">
                            <p class="card-title-latets mb-2 mb-md-3 multi-line-truncate">
                                <?php echo "$data[judul]"; ?>
                            </p>
                            <a href="index.php?p=detail&idb=<?= $data["idb"] ?>" class="stretched-link"></a>
                            <small class="text-muted">oleh : <?="$data[username]" ?></small>
                            <small class="text-muted">pada : <?="$data[tanggal]" ?></small>
                        </div>
                    </div>
                </div>
                <?php
            }
            ?>
        </div>
        <br>

        <?php
        date_default_timezone_set("Asia/jakarta");
        ?>
        <p>Jam Digital: <b><span id="jam" style="font-size:24"></span></b></p>

        <script type="text/javascript">
            window.onload = function () { jam(); }

            function jam() {
                var e = document.getElementById('jam'),
                    d = new Date(), h, m, s;
                h = d.getHours();
                m = set(d.getMinutes());
                s = set(d.getSeconds());

                e.innerHTML = h + ':' + m + ':' + s;

                setTimeout('jam()', 1000);
            }

            function set(e) {
                e = e < 10 ? '0' + e : e;
                return e;
            }
        </script>

        <div id="content-news" class="row">
            <div class="col-12 col-md-8">
                <?php
                $hasil = mysqli_query($koneksi, "select berita.beritaimage,berita.username,berita.id as idb,berita.judul as judul,kategori.kategori,kategori.id as idk,berita.konten,berita.tanggal from berita left join kategori on kategori.id=berita.idkategori order by berita.id desc LIMIT  $num, $perpage");
                if (isset($_POST["cari"])) {
                    $hasil = cari($_POST);
                    $text = "Hasil pencarian " . $_POST["keyword"];
                } else {
                    $text = "Berita Lainnya";
                } ?>
                <h3><?= $text ?> </h3>
                <hr>
                <?php
                if (mysqli_num_rows($hasil) == 0) {
                    echo "tidak ada hasil yang relevan";
                } else {
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
                                            <?php echo "$data[kategori]" ?>
                                        </span>
                                        <h5 class="card-title multi-line-truncate list-judul my-lg-4">
                                            <?php echo "$data[judul]"; ?>
                                        </h5>
                                        <a href="index.php?p=detail&idb=<?= $data["idb"] ?>" class="stretched-link"></a>
                                        <small class="text-muted penulis me-4">
                                            <?php echo "$data[username]"; ?>
                                        </small>
                                        <small class="text-muted"><?php echo "$data[tanggal]"; ?></small>
                                    </div>
                                </div>
                            </div>
                            <hr class="m-2">
                        </div>
                        <?php }
                } ?>
                <?php
                require_once "./function.php";

                $sql = mysqli_query($koneksi, "SELECT * FROM berita order by berita.id");
                $total_record = mysqli_num_rows($sql) - 4;
                $total_page = ceil($total_record / $perpage); ?>
                <?php
                if (isset($_POST["cari"])) {

                } else { ?>
                    <ul class="pagination justify-content-center mb-4">
                        <?php
                        if ($page > 1) {
                            $prev = "<a href='./index.php?p=home&page=1' class='page-link'><span aria-hidden='true'>First</span></a>";
                        } else {
                            $prev = "<a href='./index.php?p=home&page=1' class='page-link'><span aria-hidden='true'>First</span></a>";
                        }
                        $number = '';
                        for ($i = 1; $i <= $total_page; $i++) {
                            if ($i == $page) {
                                $number .= "<li><a href='./index.php?p=home&page=$i' class='page-link'>$i</a></li>";
                            } else {
                                $number .= "<li><a href='./index.php?p=home&page=$i' class='page-link'>$i</a></li>";
                            }
                        }
                        if ($page < $total_page) {
                            $link = $page + 1;
                            $next = "<a href='./index.php?p=home&page=$total_page' class='page-link'><span aria-hidden='true'>Last</span></a>";
                        } else {
                            $next = "<a href='./index.php?p=home&page=$total_page' class='page-link'><span aria-hidden='true'>Last</span></a>";
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
                    <?php } ?>
            </div>


            <div class="col-md-4 border-start d-none d-md-block">
                <h3>Popular News</h3>
                <hr>
                <table class="table table-striped border">
                    <?php
                    include_once "./function.php";
                    $hasil = mysqli_query($koneksi, "select berita.username,berita.id as idb,berita.judul,kategori.kategori,kategori.id as idk,berita.konten,berita.tanggal from berita left join kategori on kategori.id=berita.idkategori order by berita.view desc limit 10");
                    $i = 1;
                    foreach ($hasil as $data) { ?>
                        <tr>
                            <th scope="row"><?= $i ?></th>
                            <td>
                                <span class="fw-bold text-warning">
                                    <?= $data["kategori"] ?>
                                </span>
                                <a href="index.php?p=detail&idb=<?= $data["idb"] ?>" class="multi-line-truncate mb-0 mt-2"><?= $data["judul"] ?></a>
                            </td>
                        </tr>
                        <?php $i++;
                    } ?>
                </table>
            </div>

        </div>

</section>