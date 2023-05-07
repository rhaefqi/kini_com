<?php
if (!isset($_SESSION)) {
    session_start();
}

$koneksi = mysqli_connect('localhost', 'root', '', 'tubes');

if ($koneksi->connect_error) {
    die("Koneksi gagal " . $koneksi->connect_error);
}


function tampilkan($query)
{
    global $koneksi;
    $hasil = mysqli_query($koneksi, $query);
    $kosong = [];
    while ($isi = mysqli_fetch_assoc($hasil)) {
        $kosong[] = $isi;
    }
    return $kosong;
}

function register($data)
{
    global $koneksi;
    $user = $data['username'];
    $pass = $data['password'];
    $name = $data['nama'];
    $email = $data['email'];
    $konpass = $data['konpas'];
    $level = 0;



    if ($pass !== $konpass) {
        echo "
                <script>
                    alert('Konfirmasi password harus samaaaa!');
                    document.location.href = '';
                </script>
            ";
    } else {

        $pass = password_hash($pass, PASSWORD_DEFAULT);

        $cekEmail = mysqli_query($koneksi, "SELECT email FROM user WHERE email='$email'");
        $cekUsername = mysqli_query($koneksi, "SELECT username FROM user WHERE username='$user'");

        if (mysqli_num_rows($cekEmail) > 0) {
            echo "
                <script>
                    alert('Email Sudah Ada!');
                    document.location.href = '';
                </script>
            ";
        } else if (mysqli_num_rows($cekUsername) > 0) {
            echo "
                <script>
                    alert('Username Sudah Ada!');
                    document.location.href = '';
                </script>
            ";
        } else {
            mysqli_query($koneksi, "INSERT INTO user (nama, username, password, email, level) VALUES ('$name', '$user', '$pass', '$email', '$level')");
            echo "
            <script>
                alert('Registrasi Akun Berhasil');
                document.location.href = '';
            </script>";
        }
    }
    return 0;
}


function login($data)
{
    global $koneksi;
    global $user;
    global $pass;
    global $email;
    $user_login = $data["username"];
    $pass_login = $data["password"];


    $query = "SELECT * FROM user WHERE username = '{$user_login}'";
    $hasil = mysqli_query($koneksi, $query);
    // $hasil1 = mysqli_fetch_assoc($hasil);
    while ($isi = mysqli_fetch_array($hasil)) {
        $user = $isi['username'];
        $email = $isi['email'];
        $pass = $isi['password'];
        $level = $isi['level'];
    }

    if ($user_login == $user && password_verify($pass_login, $pass) && $level == 1) {
        echo "
        <script>
            alert('Anda berhasil login $user_login');
            document.location.href = '../index.php?p=admin';
        </script>
        ";
        // header("Location: ../?p=admin");
        $_SESSION['username'] = $user;
        $_SESSION['email'] = $email;
        $_SESSION['level'] = $level;
    } else if ($user_login == $user && password_verify($pass_login, $pass) && $level == 0) {
        echo "
        <script>
            alert('Anda berhasil login $user_login');
            document.location.href = '../index.php';
        </script>
        ";
        // header("Location: ../?p=home");
        $_SESSION['username'] = $user;
        $_SESSION['email'] = $email;
        $_SESSION['level'] = $level;
    } else {
        echo "
                <script>
                    alert('User tidak ditemukan');
                </script>
            ";
    }
    return 0;
}

function konmail($data)
{
    global $koneksi;
    $konemail = $data['email'];

    $cekEmail = mysqli_query($koneksi, "SELECT email FROM user WHERE email='$konemail'");
    if (mysqli_num_rows($cekEmail) > 0) {
        echo "
                    <script>
                        document.location.href = 'forget.php?email=$konemail';
                    </script>
                ";
    } else {
        echo "
                    <script>
                        alert('Email tidak terdaftar!');
                        document.location.href = '';
                    </script>
                ";
    }
}

function forget($data, $konemail)
{
    global $koneksi;
    $pass = $data['password'];
    $konpass = $data['konpas'];



    if ($pass !== $konpass) {
        echo "
                    <script>
                        alert('Konfirmasi password harus sama!');
                        document.location.href = '';
                    </script>
                ";
    } else {
        $pass = password_hash($pass, PASSWORD_DEFAULT);

        $ganti = "UPDATE user SET password = '$pass' where email = '$konemail'";
        if ($koneksi->query($ganti) === TRUE) {
            echo "
                        <script>
                            alert('password berhasil dirubah');
                            document.location.href = 'login.php';
                        </script>";
        } else {
            echo "
                        <script>
                            alert('password gagal dirubah');
                            document.location.href = 'login.php';
                        </script>";
        }
    }
}


function tambahberita($data)
{
    global $koneksi;
    $user = $_SESSION['username'];
    $judul = $data['judul'];
    $konten = $data['isi'];
    $kategori = $data['kategori'];
    $gambar = upload();

    if (!$gambar) {
        echo "
                    <script>
                        alert('berita gagal ditambahkan');
                        document.location.href = 'index.php?p=tambah';
                    </script>";
    } else {
        $berita = "INSERT INTO berita (judul, konten, idkategori, username, beritaimage) VALUES ('$judul', '$konten','$kategori', '$user', '$gambar')";
    }
    if ($koneksi->query($berita) === TRUE) {
        echo "
                    <script>
                        alert('berita berhasil ditambahkan');
                        document.location.href = 'index.php?p=tambah';
                    </script>";
    } else {
        echo "
                    <script>
                        alert('berita gagal ditambahkan');
                        document.location.href = 'index.php?p=tambah';
                    </script>";
    }


}

function upload()
{
    $namafile = $_FILES['gambar']['name'];
    $ukuranfile = $_FILES['gambar']['size'];
    $error = $_FILES['gambar']['error'];
    $tmpname = $_FILES['gambar']['tmp_name'];
    $ekstensiok = ['jpg', 'jpeg', 'png'];
    $ekstensi = explode('.', $namafile);
    $ekstensi = strtolower(end($ekstensi));

    if ($error === 4) {
        echo "
                <script>
                    alert('pilih gambar terlebih dahulu!');
                </script>";
        return false;
    }

    if (!in_array($ekstensi, $ekstensiok)) {
        echo "
                <script>
                    alert('yang anda upload bukan gambar!');
                </script>";
        return false;
    }

    if ($ukuranfile > 100000000) {
        echo "
                <script>
                    alert('ukuran gambar melebihi!');
                </script>";
        return false;
    }

    $namafilebaru = uniqid();
    $namafilebaru .= '.';
    $namafilebaru .= $ekstensi;

    move_uploaded_file($tmpname, 'gambar/' . $namafilebaru);
    return $namafilebaru;

}

function editberita($data, $idb)
{
    global $koneksi;
    $user = $_SESSION['username'];
    $judul = $data['judul'];
    $konten = $data['isi'];
    $gambarlama = $data['gambarlama'];

    if ($_FILES['gambar']['error'] === 4) {
        $gambar = $gambarlama;
    } else {
        $gambar = upload();
    }

    $edit = "UPDATE berita SET judul = '$judul', konten = '$konten', username = '$user', beritaimage = '$gambar'  where id = $idb";

    if ($koneksi->query($edit) === TRUE) {
        echo "
                    <script>
                        alert('berita berhasil diupdate');
                        document.location.href = '';
                    </script>";
    } else {
        echo "
                    <script>
                        alert('berita gagal diupdate');
                        document.location.href = '';
                    </script>";
    }
}

function komen($data, $id)
{
    global $koneksi;

    $user = $_SESSION['username'];
    $komen = $data["komen"];

    $komentar = "INSERT INTO komentar (idberita, username, komen) VALUES ('$id', '$user', '$komen')";

    if ($koneksi->query($komentar) === TRUE) {
        echo "
                    <script>
                        alert('komentar berhasil ditambahkan silahkan menunggu persetujuan admin');
                        document.location.href = '';
                    </script>";
    } else {
        echo "
                    <script>
                        alert('komentar gagal ditambahkan');
                        document.location.href = '';
                    </script>";
    }
    return 0;
}

function cari($data)
{

    global $koneksi;
    $keyword = $data["keyword"];
    $sql = mysqli_query($koneksi, "SELECT berita.beritaimage,berita.username,berita.id as idb,berita.judul,kategori.kategori,kategori.id as idk,berita.konten,berita.tanggal from berita 
    left join kategori on kategori.id=berita.idkategori
    where berita.judul LIKE '%$keyword%' OR berita.konten LIKE '%$keyword%'");
    return $sql;
}


function tambahkategori($data)
{
    global $koneksi;
    $kategori = $data["kategori"];
    $deskripsi = $data["deskripsi"];

    $query = "INSERT INTO kategori (kategori, deskripsi) VALUES('$kategori', '$deskripsi')";

    if ($koneksi->query($query) === TRUE) {
        echo "
                    <script>
                        alert('kategori berhasil ditambahkan');
                        document.location.href = './?p=kelkategori';
                    </script>";
    } else {
        echo "
                    <script>
                        alert('kategori gagal ditambahkan');
                        document.location.href = './?p=kelkategori';
                    </script>";
    }
}

function editkategori($data, $id)
{
    global $koneksi;
    $kategori = $data["kategori"];
    $deskripsi = $data["deskripsi"];

    $edit = "UPDATE kategori SET kategori = '$kategori', deskripsi = '$deskripsi' where id = $id";

    if ($koneksi->query($edit) === TRUE) {
        echo "
                    <script>
                        alert('kategori berhasil diupdate');
                        document.location.href = '';
                    </script>";
    } else {
        echo "
                    <script>
                        alert('kategori gagal diupdate');
                        document.location.href = '';
                    </script>";
    }
}

function editakun($data, $id)
{
    global $koneksi;

    $username = $data["username"];
    $nama = $data["nama"];
    $email = $data["email"];
    $password = $data["password"];
    $gambarlama = $data["profillama"];

    if ($_FILES['gambar']['error'] === 4) {
        $gambar = $gambarlama;
    } else {
        $gambar = upload();
    }

    $password = password_hash($password, PASSWORD_DEFAULT);

    $edit = "UPDATE user SET username = '$username', nama = '$nama', email = '$email', profil = '$gambar', password = '$password'  where id = $id";

    if ($koneksi->query($edit) === TRUE) {
        echo "
                    <script>
                        alert('akun berhasil diupdate');
                        document.location.href = '';
                    </script>";
    } else {
        echo "
                    <script>
                        alert('akun gagal diupdate');
                        document.location.href = '';
                    </script>";
    }

}

