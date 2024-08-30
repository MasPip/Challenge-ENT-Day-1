<?php
    if(isset($_FILES['foto'])){
        $foto = $_FILES['foto'];
        $user_id = $_POST['user_id'];

        // Cek apakah file foto sudah ada
        $queryCek = mysqli_query($koneksi, "SELECT * FROM user WHERE user_id='$user_id' AND foto!=''");
        if(mysqli_num_rows($queryCek) > 0){
            // Hapus file foto lama
            $rowCek = mysqli_fetch_assoc($queryCek);
            unlink('img/profile/'.$rowCek['foto']);
        }

        // Upload file foto baru
        $namaFile = $foto['name'];
        $tmpName = $foto['tmp_name'];
        $size = $foto['size'];
        $type = $foto['type'];

        // Cek apakah file foto valid
        if($type == 'image/jpeg' || $type == 'image/png'){
            // Upload file foto
            move_uploaded_file($tmpName, 'img/profile/'.$namaFile);

            // Update database
            $queryUpdate = mysqli_query($koneksi, "UPDATE user SET foto='$namaFile' WHERE user_id='$user_id'");

            // Redirect ke halaman profil
            header("location:". BASE_URL. "index.php?page=profile_user");
        } else {
            echo "File foto tidak valid";
        }
    }
?>