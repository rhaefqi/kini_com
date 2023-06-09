<?php
require_once "function.php";

if (($_SESSION["level"]) !== "1") {
    echo "
            <script>
                alert('anda bukan admin');
                document.location.href = 'index.php';
            </script>";
}

$perpage = 6;
$page = isset($_GET['page']) ? $_GET['page'] : "";

if (empty($page)) {
    $num = 0;
    $page = 1;
} else {
    $num = ($page - 1) * $perpage;
}

?>
<section id="content">
    <div class="container ">
        <div class="row">
            <span class="text h1">Kelola berita</span>
            <hr><br>
        </div>
        <div class="row">
            <div class="col">
                <a href="./?p=tambah" class="btn btn-primary mb-2">tambah berita [+]</a>
                <a href="./?p=admin" class="btn btn-warning mb-2">kembali</a>
                <div class="card shadow mb-4 text-center">
                    <!-- Card Header -->
                    <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                        <h6 class="m-0 font-weight-bold text-primary">Daftar Berita</h6>
                    </div>
                    <!-- Card Body -->
                    <div class="card-body">
                        <?php
                        $query = "SELECT * FROM berita";
                        $hasil = mysqli_query($koneksi, "select berita.beritaimage,berita.username,berita.id as idb,berita.judul as judul,kategori.kategori,kategori.id as idk,berita.konten,berita.tanggal from berita left join kategori on kategori.id=berita.idkategori order by berita.id desc LIMIT  $num, $perpage");
                        echo "<table class='table table bordered'>";
                        echo
                            "<tr> <th>Username</th> <th>Judul</th> <th>Kategori</th> <th>Tanggal dibuat</th> <th colspan='2'>Aksi</th> </tr>";

                        foreach ($hasil as $data) {
                            echo "<tr> 
                                                <td>" . $data['username'] . "</td> 
                                                <td>" . $data['judul'] . "</td> 
                                                <td>" . $data['kategori'] . "</td>  
                                                <td>" . $data['tanggal'] . "</td>";
                            echo "<td> 
                                                    <form method='post' action='index.php?p=ubah&id=$data[idb]'>
                                                        <input hidden type='text' name='id' value=" . $data['idb'] . ">
                                                        <button type='submit' name='btnUpdate' class='btn btn-info'>edit</button> 
                                                    </form> 
                                                </td>";
                            //delete
                            echo "<td> 
                                                    <form onsubmit=\"return confirm ('Anda yakin mau menghapus berita?');\"method='POST'> 
                                                        <input hidden name='id' type='text' value=$data[idb]> 
                                                        <button type='submit' name='btnHapus' class='btn btn-danger'>hapus</button> 
                                                    </form> 
                                                </td> ";

                            echo " </tr>";
                        }
                        echo "</table>";
                        ?>
                    </div>
                    <?php
                    if (isset($_POST['btnHapus'])) {
                        $id = $_POST['id'];

                        if ($koneksi) {

                            $sql = "DELETE FROM berita WHERE id = $id";
                            $sql1 = "DELETE FROM komentar WHERE idberita = $id";
                            mysqli_query($koneksi, $sql);
                            mysqli_query($koneksi, $sql1);
                            echo "<script> alert ('berita berhasil dihapus');</script>";
                            echo "<script>window.location.href = '';</script>";
                        } else if ($koneksi->connect_error) {
                            echo "<script> alert ('berita gagal dihapus');</script>";
                            echo "<script>window.location.href = '';</script>";
                        }
                    }
                    ?>
                    <!-- pagination -->
                    <?php
                    require_once "./function.php";

                    $sql = mysqli_query($koneksi, "SELECT * FROM berita");
                    $total_record = mysqli_num_rows($sql);
                    $total_page = ceil($total_record / $perpage); ?>

                    <ul class="pagination justify-content-center mb-4">
                        <?php
                        if ($page > 1) {
                            $prev = "<a href='./index.php?p=kelberita&page=1' class='page-link'><span aria-hidden='true'>First</span></a>";
                        } else {
                            $prev = "<a href='./index.php?p=kelberita&page=1' class='page-link'><span aria-hidden='true'>First</span></a>";
                        }
                        $number = '';
                        for ($i = 1; $i <= $total_page; $i++) {
                            if ($i == $page) {
                                $number .= "<li><a href='./index.php?p=kelberita&page=$i' class='page-link'>$i</a></li>";
                            } else {
                                $number .= "<li><a href='./index.php?p=kelberita&page=$i' class='page-link'>$i</a></li>";
                            }
                        }
                        if ($page < $total_page) {
                            $link = $page + 1;
                            $next = "<a href='./index.php?p=kelberita&page=$total_page' class='page-link'><span aria-hidden='true'>Last</span></a>";
                        } else {
                            $next = "<a href='./index.php?p=kelberita&page=$total_page' class='page-link'><span aria-hidden='true'>Last</span></a>";
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
    </div>
</section>