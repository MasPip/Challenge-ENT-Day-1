<?php
    if(isset($_POST['user_id']) && isset($_FILES['foto'])){
        $user_id = $_POST['user_id'];
        $foto = $_FILES['foto'];
        
        if($foto['type'] == 'image/jpeg' || $foto['type'] == 'image/png'){
            $target_dir = BASE_URL."img/profile/";
            $target_file = $target_dir.basename($foto['name']);
            move_uploaded_file($foto['tmp_name'], $target_file);
            

            $query = mysqli_query($koneksi, "UPDATE user SET foto='".basename($foto['name'])."' WHERE user_id='$user_id'");
            
            if($query){
                header("location: profile.php");
            } else {
                echo "Gagal mengupload foto";
            }
        } else {
            echo "File yang diupload bukan gambar";
        }
    }
?>