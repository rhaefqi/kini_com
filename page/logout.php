<?php
session_start();

echo "  
    <script>
        alert('Anda berhasil logout');
        document.location.href = '../index.php';
    </script>
";

session_destroy();  

?>