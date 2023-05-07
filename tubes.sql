-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Jan 2023 pada 10.26
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tubes`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp(),
  `konten` text NOT NULL,
  `idkategori` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `view` int(11) NOT NULL,
  `beritaimage` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`id`, `judul`, `tanggal`, `konten`, `idkategori`, `username`, `view`, `beritaimage`) VALUES
(33, 'Agensi Tanggapi Kabar Song Joong Ki Ikut Audisi Drama BBC', '2023-01-03 07:33:19', '<p><strong>Agensi Song Joong Ki, High Zium Studio, akhirnya buka suara terkait kabar sang aktor mengikuti audisi drama BBC.</strong></p>\r\n\r\n<p>&quot;Song Joong Ki tidak mengikuti audisi untuk serial BBC, tetapi dia mengadakan pertemuan dengan seorang perwakilan,&quot; kata agensi High Zium Studio dilansir dari Soompi, Rabu (28/12/2022). Sumber dari High Zium Studio menambahkan, Song Jong Ki mengakui sangat terbuka untuk berakting di luar negeri.</p>\r\n\r\n<p>Namun saat ini belum ada proyek yang terkonfirmasi untuk dibintangi Song Joong Ki. Sebelumnya diberitakan, orang dalam media Korea menyebutkan bahwa Song Joong Ki hampir mengikuti audisi untuk drama BBC. Pacar Song Joong Ki disebut telah memengaruhi sang aktor untuk melebarkan sayapnya ke luar negeri. &quot;Saat itu, aktor mulai terjun ke pasar luar negeri. Song Joong Ki sedang mempersiapkan audisi untuk drama asing. Kalau dipikir-pikir, dia mungkin dipengaruhi oleh pacar Inggris-nya,&quot; ungkap seorang indiser</p>\r\n\r\n<p>Sebagai informasi, Song Joong Ki dikabarkan sedang berpacaran dengan aktris Inggris bernama Katy Louise Saunders. Song Joong Ki pun sudah mengonfirmasi bahwa dia sedang menjalin asmara tetapi tidak menyebutkan identitas sang kekasih. Song Joong Ki sendiri menyandang status duda sejak Juni 2019 setelah bercerai dari aktris Song Hye Kyo.</p>\r\n', 3, 'serafim', 4, '63b3da3f201c2.jpg'),
(34, 'Breaking News! Semua Member iKON Hengkang dari YG Entertainment.', '2023-01-03 07:40:27', '<p><strong>Tahun 2022 merupakan tahun terakhir kontrak iKON dengan YG Entertainment.</strong></p>\r\n\r\n<p>Mereka pun memutuskan untuk tidak memperpanjang kontrak dengan manajemen. Kabar tersebut disampaikan langsung oleh YG Entertainment melalui pernyataan yang dirilis. Kim Jin Hwan, Bobby, Song Yun Hyeong, Koo Jun Hoe, Donghyuk, dan Chanwoo memutuskan untuk hengkang dari manajemen.</p>\r\n\r\n<p>&quot;Setelah diskusi yang lama dan penuh dengan kehati-hatian, iKON (Kim Jin Hwan, Bobby, Song Yun Hyeong, Koo Jun Hoe, Donghyuk, dan Chanwoo) dan kami telah sepakat untuk mengakhiri eksklusif kontrak dan menghormati opini satu sama lain,&quot; ungkap YG Entertainment. &quot;Kami ingin mengungkap rasa terima kasih kepada iKON karena sudah bersama kami sebagai artis YG. YG Entertainment akan selalu menantikan aktivitas para member di berbagai ranah berbeda dan mendoakan yang terbaik untuk mereka,&quot; lanjutnya.</p>\r\n\r\n<p>Di akhir pernyataan, YG Entertainment juga mengucapkan terima kasih kepada fans yang selama ini sudah memberikan dukungan kepada iKON &quot;Kami juga ingin berterima kasih kepada iKONIC yang sudah menemani iKON dalam perjalanan mereka,&quot; tambah YG Entertainment. &quot;Kami berharap fans akan tetap memberikan dukungan kepada seluruh member iKON yang akan memulai perjalanan baru. Terima kasih,&quot; pungkasnya.</p>\r\n\r\n<p>iKON debut pada 2015 dengan merilis pre-release single My Type. Lagu tersebut mendapatkan respons yang sangat baik dari publik, bahkan merajai chart Korea selama beberapa bulan. Dilaporkan sejumlah media Korea, saat ini para member iKON tengah mendiskusikan rencana promosi ke depannya. Salah satunya dengan mencari agensi untuk aktivitas pribadi masing-masing member, hingga membentuk label sendiri untuk promosi sebagai grup.</p>\r\n', 3, 'serafim', 47, '63b3dbeb87691.jpg'),
(35, 'Pernikahan Kaesang Pangarep dan Erina Gudono Berjalan Lancar, Presiden Jokowi Jamu Panitia Acara.', '2023-01-03 07:41:53', '<p><strong>Presiden Jokowi menjamu para panitia acara pernikahan Erina Gudono dan Kaesang Pangarep.</strong></p>\r\n\r\n<p>Hal tersebut nampaknya dilakukan Presiden Jokowi sebagai bentuk syukur atas terselenggaranya dengan lancar pernikahan putera bungsunya. Dilansir dari story Instagram fashion stylist Erina Gudono, Doley Tobing, sejumlah pejabat negara yang ikut andil dalam acara bahagia Kaesang Pangarep dan Erina Gudono, turut hadir. Tampak Menteri BUMN Erick Thohir, Menko Marves, Luhut Pandjaitan, Menteri PUPR, Basuki Hadi Muljono, Mensesneg, Pratikno, dan banyak lainnya. Hadir juga dari pihak keluarga Erina Gudono yang yakni sang kakak, Nadia Gudono juga ibu Sofiatun Gudono.</p>\r\n\r\n<p>Jamuan Presiden Jokowi untuk seluruh panitia acara digelar dalam malam ramah tamah di Plataran Senayan. Hal tersebut terlihat dari lokasi yang ditandai Doley Tobing di story Instagram pribadinya. Seperti diketahui, Hutan Kota Plataran atau yang biasa disebut Plataran Senayan memiliki daya tarik sendiri untuk restoran bertema asri.</p>\r\n\r\n<p>Dalam sambutannya, Presiden Jokowi terdengar menyampaikan terimakasih atas bantuan seluruh panitia dalam mensukseskan acara pernikahan Kaesang Pangarep dan Erina Gudono. &quot;Bantuan bapak ibu semuanya kemarin pernikahan Kaesang dan Erina berjalan dengan baik dan lancar alhamdulillah tanpa hambatan. Menyampaikan ucapan terimaksih yang sebesar-besarnya, kami tidak bisa memberikan apa-apa kecuali ucapan terimakasih dari keluarga besar,&quot; ucap Presiden Jokowi.</p>\r\n', 3, 'serafim', 59, '63b3dc418270e.jpg'),
(36, 'Apple Bakal Rilis iPad Mini Baru Tahun Depan?', '2023-01-03 07:43:24', '<p><strong>Apple dikabarkan sedang dalam tahap pengerjaan versi baru iPad mini yang diharapkan akan diluncurkan pada akhir 2023 atau awal 2024.</strong></p>\r\n\r\n<p>Para penggemar Apple (fanboy Apple) mungkin menyadari bahwa Apple tidak meluncurkan iPad model mini di tahun 2022 ini. iPad Mini yang terakhir diluncurkan adalah iPad Mini generasi keenam pada September 2021 lalu.</p>\r\n\r\n<p>Namun, kabar terbaru mengungkapkan bahwa Apple bakal kembali meluncurkan iPad Mini generasi ketujuh pada akhir 2023 atau awal 2024 mendatang. Informasi tersebut diungkap oleh analis produk Apple kenamaan, Ming-Chi Kuo melalui akun Twitter pribadinya, dengan handle @mingchikuo, Selasa (27/12/2022).</p>\r\n\r\n<p>Kuo mengunggah sejumlah spekulasinya dalam bentuk thread (utas). Konon, iPad Mini yang diluncurkan pada 2023 mendatang bakal ditenagai oleh chipset yang lebih ngebut dibanding pendahulunya, iPad Mini 6. Spesifikasi itu yang nantinya akan menjadi nilai jual utama dari perangkat.</p>\r\n\r\n<p>&ldquo;Apple tengah mengembangkan iPad Mini versi terbaru, (yang mana) nilai jual utamanya adalah menggunakan chipset terbaru, dan pengirimannya diyakini akan dilakukan pada akhir 2023 atau semester-I 2024,&rdquo; imbuh Kuo.</p>\r\n\r\n<p>Kendati begitu, Kuo tidak menjelaskan lebih lanjut jenis atau varian chipset apa yang bakal digunakan iPad Mini generasi ketujuh. Apabila merujuk pada iPad Mini sebelumnya, perangkat tersebut mengandalkan chipset Apple A15 Bionic.</p>\r\n\r\n<p>Apple A15 Bionic merupakan chipset yang berada di satu level lebih bawah dari Apple A16 Bionic, chipset yang mentenagai iPhone 14 series. Jadi, kemungkinan besar, iPad Mini 7 bakal mengandalkan A16 Bionic, sedangkan iPhone 15 disinyalir akan ditenagai oleh chipset A17 Bionic yang baru.</p>\r\n\r\n<p>Dilansir KompasTekno dari Tech Spot, Kamis (29/12/2022), kehadiran iPad Mini terbaru nanti akan menjadi bukti dari komitmen Apple untuk memberikan alternatif antara perangkat iPad dengan model flagship iPhone.</p>\r\n\r\n<p>Sebelumnya, produksi iPad Mini dari generasi empat ke generasi kelima sempat dihentikan selama empat tahun, dari 2015 hingga 2019. Saat diluncurkan pada 2019 lalu, iPad Mini 5 hadir dengan spesifikasi yang jauh lebih memupuni dibandingkan pendahulunya.</p>\r\n\r\n<p>Misalnya, dukungan layar yang lebih luas, kamera beresolusi tinggi, menggunakan slot USB-C sebagai tempat pengisian daya atau transfer data, dan sebagainya.</p>\r\n\r\n<p>Namun, tampaknya iPad Mini 7 kali ini tidak akan menggunakan strategi yang sama. Melansir Tech Spot, perubahan chipset akan menjadi satu-satunya peningkatan yang dilakukan. Atau kemungkinan lainnya, Apple bakal menawarkan kapasitas penyimpanan yang lebih luas.</p>\r\n', 7, 'fortyche', 0, '63b3dc9cb4c4d.jpg'),
(37, 'Chip iPhone 15 Bakal Fokus di Efisiensi Baterai?', '2023-01-03 07:44:03', '<p><strong>TSMC sudah mulai memproduksi massal chip dengan fabrikasi 3nm, yang kemungkinan besar bakal termasuk chip A17 Bionic untuk iPhone 15 Pro.</strong></p>\r\n\r\n<p>Nah, pabrikan chip asal Taiwan itu sudah mulai membocorkan kemampuan chip 3nm tersebut. Termasuk konsumsi daya yang 30% sampai 35% lebih irit dibanding chip generasi sebelumnya dengan kecepatan yang sama.</p>\r\n\r\n<p>Soal kepadatan transistor, chip 3nm ini punya peningkatan kepadatan logic sebesar 1,6x, yang artinya lebih banyak transistor bisa dimasukkan ke dalamnya. Dengan kata lain, secara teoritis, bisa saja dibuat jauh lebih kencang, demikian dikutip detikINET dari Phone Arena, Jumat (30/12/2022).</p>\r\n\r\n<p>Sebagai informasi, fabrikasi 3nm yang dipakai ini adalah upgrade besar dari fabrikasi 5nm yang dipakai di A14 Bionic, A15, dan A16. Sementara A16 Bionic yang dipakai di iPhone 14 Pro dan Pro Max menggunakan teknologi fabrikasi 4nm, semacam transisi dari 5nm ke 4nm.</p>\r\n\r\n<p>Lalu menurut 9to5Mac, TSMC kabarnya akan berfokus pada efisiensi daya dibanding peningkatan performa pada chip 3nm tersebut. Artinya, chip A17 bakal punya konsumsi daya lebih rendah, sekaligus panas yang dihasilkan pun semakin sedikit.</p>\r\n\r\n<p>Langkah TSMC tersebut jika benar sebenarnya masuk akal. Toh, selama setidaknya selama dua tahun belakangan ini, chip yang dipakai di ponsel terbilang sudah cukup kencang untuk menjalankan tugas apa pun.</p>\r\n\r\n<p>Jadi, ketimbang membuat chip yang lebih kencang, mungkin lebih baik membuat chip yang lebih irit daya, agar daya tahan baterai ponsel bisa lebih lama.</p>\r\n\r\n<p>Di sisi lain, TSMC pun menyebut kalau chip 3nm itu akan punya peningkatan performa sebesar 15% dengan konsumsi daya yang sama. Jadi sebenarnya semuanya tergantung bagaimana Apple mau mengkonfigurasi A17 Bionic ini.</p>\r\n', 7, 'fortyche', 0, '63b3dcc3c80d0.jpg'),
(38, 'Alasan ASUS Zenbook Pro 14 Duo OLED Bisa Jadi Andalan Konten Kreator', '2023-01-03 07:45:17', '<p><strong>ASUS tidak berhenti mengembangkan laptop dengan layar ganda. Buktinya, Zenbook Pro 14 Duo OLED (UX8402) kini datang dengan sederetan fitur baru yang membuatnya semakin optimal untuk produktivitas dan konten kreasi.</strong></p>\r\n\r\n<p><strong>1. Pertama dengan layar ASUS OLED 2.8K 14.5 inci 120 Hz</strong></p>\r\n\r\n<p>Zenbook Pro 14 Duo OLED (UX8402) adalah laptop pertama ASUS dengan layar sentuh ASUS OLED 14.5 inci. Resolusinya 2,8K dengan refresh rate 120 Hz. Dibandingkan generasi sebelumnya panel layarnya menawarkan area pandang yang lebih luas sekitar 13,2%.</p>\r\n\r\n<p>Mengusung panel ASUS OLED layar tersebut sudah mendukung gamut warna DCI-P3 100%. Layarnya juga sudah mendapatkan beberapa sertifikasi seperti PANTONE Validated Display, VESA DisplayHDR True Black 500 dan TUV Rheinland.</p>\r\n\r\n<p><strong>2. Layar kedua lebih besar</strong></p>\r\n\r\n<p>Layar kedua andalannya yang bernama ScreenPad Plus kini 11.2% lebih besar jika dibandingkan generasi sebelumnya. Jadi, akan semakin nyaman untuk mendukung multitasking.</p>\r\n\r\n<p>ScreenPad Plus di Zenbook Pro 14 Duo OLED tetap mengusung panel IPS berukuran 12.7 inci. Resolusi layarnya 2.8K 2880 x 864 pixel dengan refresh rate 120Hz dan mendukung input pena stylus.</p>\r\n\r\n<p><strong>3. Mekanisme AAS Ultra terbaru</strong></p>\r\n\r\n<p>Zenbook Pro 14 Duo OLED (UX8402) juga menjadi laptop pertama ASUS yang mengusung mekanisme AAS Ultra terbaru di layar keduanya. Mekanisme ini memungkinkan layar keduanya terangkat hingga 20mm dengan kemiringan 12 derajat. Jadi, akan lebih mengoptimalkan pengoperasian antar layar utama dan layar keduanya. Mekanisme ini juga memungkinkan aliran udara meningkat hingga 38% lebih banyak. Dengan begitu bisa mengurangi suhu permukaan laptop hingga 7 derajat celcius.</p>\r\n\r\n<p><strong>4. Performa dengan Intel Core Generasi Ke-12 dan sertifikasi Intel Evo</strong></p>\r\n\r\n<p>Zenbook Pro 14 Duo OLED (UX8402) ditenagai prosesor Intel Core Generasi Ke-12 dengan opsi Intel Core i7-12700H. Sementara, sektor grafisnya dipercayakan pada kartu grafis Intel Iris Xe. Spesifikasi yang memadai untuk produktivitas dan konten kreasi ringan. Laptop ini juga sudah mendapatkan sertifikasi Evo dari Intel. Jadi, tersedia dukungan port Thunderbolt 4 dan daya tahan baterai yang lebih tahan lama.</p>\r\n\r\n<p><strong>5. Rancangan bodi tangguh</strong></p>\r\n\r\n<p>ASUS Zenbook Pro 14 Duo OLED (UX8402) hadir dengan dimensi bodi yang ringkas. Ketebalannya hanya 17,9mm dengan bobot sekitar 1,7 Kg. Ideal untuk para pengguna yang mobilitasnya tinggi. Meski ringkas rancangan bodinya tangguh dengan standar milter US MIL-STD 810H.</p>\r\n', 7, 'fortyche', 0, '63b3dd0d0f884.jpg'),
(39, 'Stabilitas Politik 2023 dalam Bingkai Pertumbuhan Kesejahteraan.', '2023-01-03 07:46:20', '<p><strong>PEMILIHAN legislatif dan presiden 2024 masih jauh. Namun, media massa dan media sosial di Indonesia sudah mulai beralih dari masalah pandemi Covid-19 ke topik politik.</strong></p>\r\n\r\n<p>Di perkirakan topik ini akan benar-benar mendominasi media nasional dan media sosial di tahun 2023. Terutama menjelang pendaftaran calon presiden pada Oktober 2023.</p>\r\n\r\n<p>Mengapa demikian? Alasannya sederhana, karena Presiden Joko Widodo yang sedang menjabat tidak dapat bersaing lagi dalam pemilihan presiden yang akan datang, karena sudah menjabat selama dua periode.</p>\r\n\r\n<p>Itu menyiratkan bahwa setelah sepuluh tahun Indonesia akan melihat seorang pemimpin baru. Oleh karena itu, hal ini menimbulkan ketidakpastian karena bukan tidak mungkin seorang pemimpin baru akan mengambil pendekatan baru.</p>\r\n\r\n<p>Kehadiran pemimpin baru dengan pendekatan berbeda berpotensi menimbulkan instabilitas sosial dan politik, terutama karena Indonesia adalah negara demokrasi yang muda dan sangat beragam.</p>\r\n\r\n<p>Situasi politik Indonesia tahun 2023 memang tak sepenuhnya ditentukan oleh apa yang berkembang di dalam negeri, melainkan juga oleh kondisi politik kawasan Association of Southeast Asian Nations (Asean).</p>\r\n\r\n<p>Pada 2023 Indonesia memegang kembali keketuaan Asean, meneruskan estafet yang sebelumnya dipegang oleh Kamboja. Keketuaan Indonesia ini merupakan kali keempat, setelah menjabat sebagai Ketua Asean pada tahun 1973, 2003, dan 2011.</p>\r\n\r\n<p>Tugas ini tak mudah karena selama 2022 bukanlah tahun panji demokrasi di Asean. Sebab, sebagaimana diketahui, selama dua dekade terakhir, kawasan ini telah ditandai oleh kemunduran demokrasi yang ekstrem.</p>\r\n\r\n<p>Singkatnya, 2023 menjanjikan tahun yang mengerikan bagi demokrasi di Asean. Ada potensi titik terang&mdash;mungkin oposisi pro-demokrasi akan menang di Thailand dan kemenangan mereka akan dihormati, atau mungkin akan ada kemajuan nyata di Myanmar&mdash;tetapi secara keseluruhan, prospeknya suram.</p>\r\n\r\n<p>Jadi, posisi Indonesia sebagai ketua Asean tahun 2023 sepertinya tak banyak mengubah kondisi politik dan demokrasi Asean. Karena selama 2023 Indonesia sedang mengadakan persiapan Pemilu 2024.</p>\r\n', 8, 'fortyche', 1, '63b3dd4c129aa.jpg'),
(40, 'DKI Tetapkan Siaga Cuaca Ekstrem hingga 2 Januari 2023.', '2023-01-03 07:47:01', '<p><strong>Pemprov DKI Jakarta menetapkan status siaga cuaca ekstrem di seluruh wilayah kota hingga kabupaten.</strong></p>\r\n\r\n<p>Sejumlah wilayah di DKI Jakarta berpotensi mengalami curah hujan tinggi hingga 2 Januari 2023 mendatang.</p>\r\n\r\n<p>&quot;Berdasarkan Siaran Pers BMKG, terdapat potensi curah hujan intensitas lebat-sangat lebat yang dapat disertai kilat/petir dan angin kencang dengan status siaga di wilayah DKI Jakarta,&quot; demikian keterangan yang disampaikan Instagram resmi BPBD DKI Jakarta, @bpbddkijakarta, Jumat (30/12/2022).</p>\r\n\r\n<p>Selama periode tersebut, BMKG memperkirakan potensi curah hujan dengan intensitas lebat hingga sangat lebat yang dapat disertai kilat/petir dan angin kencang di Ibu Kota. Masyarakat diimbau untuk selalu waspada dan siaga menghadapi cuaca ekstrem.</p>\r\n\r\n<p>&quot;BMKG memperkirakan potensi curah hujan dengan INTENSITAS LEBAT-SANGAT LEBAT yang dapat disertai kilat/petir dan angin kencang untuk periode tanggal 27 Desember 2022-02 Januari 2023 di wilayah DKI Jakarta,&quot; jelasnya.</p>\r\n\r\n<p>&quot;Masyarakat dihimbau untuk selalu waspada dan siaga untuk mengantisipasi dampak dari cuaca ekstrem,&quot; tambah dia.</p>\r\n\r\n<p>Diberitakan sebelumnya, Badan Meteorologi, Klimatologi, dan Geofisika (BMKG) memprediksi sebagian wilayah Indonesia diguyur hujan lebat saat malam Tahun Baru 2023. Wilayah tersebut dari DKI Jakarta hingga Jawa Timur (Jatim).</p>\r\n\r\n<p>&quot;Berdasarkan model cuaca numerik BMKG, sebagian wilayah Indonesia dalam beberapa hari ke depan berpotensi mengalami cuaca ekstrem dengan peningkatan curah hujan lebat hingga sangat lebat di beberapa wilayah. Untuk wilayah Banten, DKI Jakarta, Jawa Barat, Jawa Tengah, Jawa Timur, Bali hingga Nusa Tenggara, potensi hujan intensitas lebat hingga sangat lebat dapat terjadi mulai tanggal 30 Desember 2022, dimana potensi tersebut dapat berlanjut hingga 01 Januari 2023 dini hari,&quot; ungkap Kepala BMKG Dwikorita Karnawati dalam Konferensi Pers secara daring di Jakarta, Kamis (29/12/2022).</p>\r\n\r\n<p>&quot;Hujan cenderung terjadi cukup merata dengan peningkatan intensitas pada dini hari dan sore hari,&quot; tambah dia</p>\r\n', 8, 'fortyche', 4, '63b3dd7561dde.jpg'),
(41, 'Setuju Pemilu Proporsional Tertutup, Hasto Singgung Oligarki Politik.', '2023-01-03 07:47:51', '<p><strong>Sekretaris Jenderal DPP PDI Perjuangan Hasto Kristiyanto merespons terkait wacana penerapan sistem proporsional tertutup pada Pemilu 2024.</strong></p>\r\n\r\n<p>Sekjen PDI Perjuangan (PDIP) Hasto Kristiyanto tak mempersoalkan jika Pemilu 2024 menerapkan sistem proporsional tertutup. Hasto menilai sistem proporsional tertutup justru dapat mencegah terjadinya liberalisasi politik.</p>\r\n\r\n<p>Hasto mengatakan sistem proporsional terbuka yang kini diterapkan justru menyebabkan liberalisasi politik. Pun, kata dia, sistem proporsional tertutup akan membuat calon terpilih lebih digerakkan oleh paham individu yang mengedepankan popularitas diri.</p>\r\n\r\n<p>&quot;Saya melakukan penelitian secara khusus dalam program doktoral saya di Universitas Indonesia, di mana liberalisasi politik telah mendorong partai-partai menjadi partai elektoral, dan kemudian menciptakan dampak kapitalisasi politik, munculnya oligarki politik, kemudian persaingan bebas dengan segala cara,&quot; kata Hasto kepada wartawan, Jumat (30/12/2022).</p>\r\n\r\n<p>Dengan demikian, Hasto mengatakan sebagaimana keputusan Kongres V PDIP bahwa sistem pemilu bisa dilakukan dengan proporsional tertutup. Terlebih, sebut dia, Pemilu 2024 merupakan ajang parpol untuk saling berkontestasi. Lebih lanjut, Hasto mengatakan sistem proporsional tertutup justru akan mendorong kaderisasi di parpol dan mencegah terjadinya liberalisasi politik. Di sisi lain, menurutnya, sistem ini juga dapat memberikan insentif bagi peningkatan kinerja di DPR.</p>\r\n\r\n<p>&quot;Dan hal tersebut akan mendorong proses kaderisasi di partai politik dan berdampak kepada mencegah berbagai bentuk liberalisasi politik. Dan selanjutnya memberikan insentif bagi peningkatan kinerja di DPR,&quot; katanya. &quot;Dan pada saat bersamaan karena ini adalah pemilu serentak antara Pileg dengan Pilpres, maka berbagai bentuk kecurangan bisa ditekan, sebab pelaksanaan Pemilu menjadi lebih sederhana,&quot; sambungnya.</p>\r\n\r\n<p>Meski demikian, Hasto mengingatkan bahwa hal ini menjadi ranah DPR. Dia menegaskan PDIP akan mengikuti konstitusional sehingga tak akan mengajukan judical review (JR) ke MK.</p>\r\n\r\n<p>&quot;Judicial Review MK merupakan mekanisme konstitusional yang dijamin Undang-undang. PDI Perjuangan taat azas karena sebagai partai yang memiliki fraksi di DPR RI tidak memiliki legal standing untuk melakukan Judicial Review. Namun sikap partai sebagaimana ditetapkan dalam Kongres V PDIP setuju dengan sistem proporsional tertutup,&quot; ujar Hasto.</p>\r\n', 8, 'fortyche', 1, '63b3dda737a20.jpg'),
(42, 'Argentina berhasil menjuarai Piala Dunia 2022 setelah adu penalty dengan skor 4-2 melawan Perancis.', '2023-01-03 07:49:33', '<p><strong>Argentina menjadi juara Piala Dunia 2022 setelah menang adu penalti atas Prancis 4-2 di Stadion Lusail, Qatar, Minggu (18/12).</strong></p>\r\n\r\n<p>Argentina membuang dua kali keunggulan di laga ini. Tim Tango memimpin 1-0 atas Prancis lewat penalti Lionel Messi pada menit ke-23. Penalti didapat Argentina setelah Angel Di Maria dilanggar Ousmane Dembele. Argentina lalu unggul 2-0 lewat gol indah Angel Di Maria pada menit ke-36. Berawal dari kerja sama apik antara Lionel Messi dan Julian Alvarez, Argentina melakukan serangan balik apik yang membelah pertahanan Prancis.</p>\r\n\r\n<p>Mbappe mencetak gol pertama lewat tendangan penalti setelah Randal Kolo Muani dilanggar Nicolas Otamendi. 6Tendangan Mbappe nyaris ditepis Emiliano Martinez yang menebak arah tendangan dengan tepat.</p>\r\n\r\n<p>Usai 97 detik kemudian, Mbappe mencetak gol spektakuler setelah menerima umpan Marcus Thuram. Lewat tendangan voli, Mbappe menggetarkan gawang Argentina. Skor imbang 2-2 bertahan hingga akhir 90 menit dan laga berlanjut ke babak tambahan. Di babak tambahan pertama Argentina punya dua peluang emas melalui Lautaro Martinez. Tapi Dayot Upamecano dua kali menggagalkan peluang emas Lautaro lewat blok luar biasa.</p>\r\n\r\n<p>Messi kembali membawa Argentina unggul 3-2 lewat gol pada menit ke-109. Namun Prancis tidak menyerah. Mbappe mencetak gol penalti pada menit ke-118 untuk menyamakan kedudukan 3-3 setelah Gonzalo Montiel melakukan handball.</p>\r\n\r\n<p>Adu penalti kemudian digelar untuk menentukan kemenangan di final Piala Dunia 2022. Di adu penalti dua penendang penalti Prancis Kingsley Coman dan Aurelien Tchouameni gagal mengeksekusi. Argentina pun menang 4-2 atas Prancis di drama adu penalti.</p>\r\n', 9, 'serafim', 1, '63b3de0d32064.jpg'),
(43, 'Federer dan Williams Pensiun dari Tenis', '2023-01-03 07:50:06', '<p><strong>Tenis kehilangan dua bintangnya tahun ini. Roger Federer yang memutuskan pensiun di usia 41 tahun dan Serena Williams memutuskan pensiun pada usia 41 tahun dari olahraga raket ini.</strong></p>\r\n\r\n<p>Roger Federer mengumumkan pensiun dari dunia tenis. Peraih 20 gelar Grand Slam itu menyatakan akan pensiun di London, selepas mengikuti ajang Laver Cup, pekan depan.</p>\r\n\r\n<p>Sontak, beberapa kompatriotnya di dunia tenis pun mengucapkan selamat untuknya, tak terkecuali Serena Williams. Dia pun mengucapkan selamat datang ke klub pensiunan para atlet tenis kepada sosok asal Swiss tersebut.</p>\r\n\r\n<p>&quot;Selamat datang di klub para pensiunan tenis. Selamat untukmu dan saya tidak sabar untuk menunggu apa yang akan kamu lakukan di masa depan. Terima kasih telah menjadi seorang Roger Federer,&quot; tulis Williams di akun Instagram pribadinya.</p>\r\n\r\n<p>Williams mengakui, Federer adalah salah satu inspiratornya dalam bermain tenis. Dia menyebut, Federer merupakan figur yang selalu diperhatikan dan dikagumi. Pun, Williams melihat ada kesamaan antara kariernya dan Federer.</p>\r\n\r\n<p>&quot;Saya selalu mengidolakanmu dan mengagumimu. Karier kita juga tidak jauh berbeda. Kamu telah menginspirasi banyak orang di dunia tenis, termasuk saya. Itu yang tak akan saya lupakan,&quot; ujar Williams.</p>\r\n\r\n<p>Selama tiga tahun belakangan, Federer memang berjibaku dengan sejumlah cedera dan operasi yang harus dijalani. Federer bahkan sudah absen dari kompetisi kelas atas sejak Wimbledon 2021 silam. Kurang lebih tiga kali sudah Federer dikabarkan harus mejalani operasi lutut.</p>\r\n\r\n<p>&quot;Sekarang, saya harus menyadari kapan waktunya mengakhiri karier kompetitif,&quot; ujar Federer.</p>\r\n', 9, 'serafim', 3, '63b3de2e63916.jpg'),
(44, 'SEA Games Vietnam, Raihan Terbaik Indonesia di Pesta Olahraga Asia Tenggara.', '2023-01-03 07:50:59', '<p><strong>Olahraga Indonesia mencatat prestasi membanggakan di sepanjang tahun 2022. Banyak atlet yang sukses mengharumkan nama bangsa dan negara di berbagai event internasional.</strong></p>\r\n\r\n<p>Sumbangsih prestasi atlet-atlet Indonesia di ajang internasional ditunjukkan saat penyelenggaraan SEA Games XXXI Vietnam 2021. Sebanyak 242 medali yang terdiri dari 69 emas, 92 perak, dan 81 perunggu dipersembahkan mereka untuk negaranya.</p>\r\n\r\n<p>Alhasil, kontingen Indonesia berhasil masuk peringkat tiga besar di pesta olahraga kawasan Asia Tenggara edisi ke-31 tersebut. Peringkat pertama ditempati Vietnam dengan 439 medali, terdiri dari 206 emas, 123 perak, dan 111 perunggu. Sedangkan, peringkat kedua dipegang Thailand dengan 326 medali (92 emas, 101 perak, 134 perunggu).</p>\r\n\r\n<p>Kontingen Indonesia di ajang kali ini berlaga di 318 nomor pertandingan dari 32 cabang olahraga dengan kekuatan total 776 delegasi yang terdiri dari 499 atlet, 214 ofiisial, dan 63 pendamping. SEA Games 2021 Vietnam sendiri mempertandingkan 40 cabang olahraga dengan total 523 nomor pertandingan.</p>\r\n\r\n<p>Raihan Indonesia di Vietnam merupakan capaian terbaik dibanding empat penyelenggaraan SEA Games terakhir, terutama jumlah atletnya. Di SEA Games kali ini menjadi yang terkecil, tapi prestasinya membanggakan.</p>\r\n\r\n<p>Dan, ternyata raihan ini sesuai dengan harapan Presiden Joko Widodo atau Jokowi saat melepas kontingen Indonesia sebelum berangkat ke Vietnam. Presiden ingin kontingen sekarang lebih ramping, tapi meraih prestasi setinggi-tingginya, meraih medali sebanyak-banyaknya, untuk mengharumkan nama negara dan bangsa Indonesia.</p>\r\n\r\n<p>Sebelumnya, Menteri Pemuda dan Olahraga (Menpora) Zainudin Amali ketika menyampaikan apresiasi terhadap pencapaian atlet-atlet Indonesia, kembali menyinggung jumlah kontingen.</p>\r\n\r\n<p>&quot;Kalau di Filipina sekitar 800 lebih atlet, SEA Games 2021 Vietnam kali ini, hampir separuh lebih sedikit atlet yang berangkat, tapi alhamdulillah medali yang kita raih sudah memenuhi harapan dan kita berhasil masuk tiga besar,&rdquo; ujar Menpora, dikutip dari laman resmi Kemenpora.</p>\r\n', 9, 'fortyche', 21, '63b3de6357376.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `deskripsi` mediumtext NOT NULL,
  `tanggalpost` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `kategori`, `deskripsi`, `tanggalpost`) VALUES
(3, 'Selebritis', 'Kategori hangat tentang selebritis', '2022-12-29 06:13:03'),
(7, 'Teknologi', 'Kategori tentang kemajuan teknologi', '2023-01-03 07:29:58'),
(8, 'Sosial&Politik', 'Kategori tentang perkembangan dunia politik dan sosial', '2023-01-03 07:30:30'),
(9, 'Olahraga', 'kategori tentang berita olahraga ', '2023-01-03 07:31:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE `komentar` (
  `id` int(11) NOT NULL,
  `idberita` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `komen` mediumtext NOT NULL,
  `waktukomen` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `komentar`
--

INSERT INTO `komentar` (`id`, `idberita`, `username`, `komen`, `waktukomen`, `status`) VALUES
(13, 35, 'yumi', 'semoga samawa', '2023-01-03 10:11:06', 1),
(14, 44, 'ruth', 'berita yang sangat bermanfaat', '2023-01-05 13:26:14', 1),
(16, 35, 'ruth', 'test komen', '2023-01-05 14:43:22', 0),
(17, 35, 'ruth', 'test\r\n', '2023-01-07 09:24:06', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` int(11) NOT NULL,
  `tanggalbuat` timestamp NOT NULL DEFAULT current_timestamp(),
  `profil` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `nama`, `email`, `password`, `level`, `tanggalbuat`, `profil`) VALUES
(9, 'fortyche', 'fortyche', '1@1', '$2y$10$Lwu7vDPqv6rZwzsSYKaxxOJwhm1oZJiRGOAtIdRpN.wyoOlQJYbCq', 1, '0000-00-00 00:00:00', '63b29009bf32e.png'),
(10, 'ruth', 'ruthgrace', 'ruth@gmail.com', '$2y$10$ndp0L4cCSj6nknshye698.xX90jEKhthpx/7Fz7aw495bSyj6sSVG', 0, '2023-01-01 10:55:30', '63b3ea210dd4c.jpg'),
(14, 'gylbert', 'gylbert', 'gylbert@mail.com', '$2y$10$WQpTR4nLhc1mXZQVC.JEs.XcCt/gLXlQr.QxIeVfQCzX1O54Ki89u', 0, '2023-01-01 15:32:01', '63b3ea0c6db66.jpg'),
(15, 'serafimaaah', 'serafim', 'serapim@gmail.com', '$2y$10$DrwG10UVldfYGZ7nO6dKCOzAy4BIXMH7gurwSWsqE0AF8WmA5Xm7.', 0, '2023-01-01 15:34:10', '63b3ea39212e1.jpg'),
(16, 'serafim', 'apim', 'apim@gmail.com', '$2y$10$uuNtJyeU9vksmC8Bwmzn1u8sOjhhyTq9mqXjad5Q9p2FjTnPDA9AK', 1, '2023-01-03 07:36:00', ''),
(17, 'yumi', 'ayumi', 'yumi@gmail.com', '$2y$10$EsboMTfjaOV4y7K/kRwlQObj2GUDPOJi8K/5zGYtKnrS3TVdl767q', 0, '2023-01-03 08:21:03', '63b3ea2ca0d18.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`),
  ADD KEY `katberid` (`idkategori`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
