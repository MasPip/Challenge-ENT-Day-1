<?php
    if(empty($user_id)){
        header("location: index.php");
    }

?>

<div class="container">
    <div class="row">
        <div class="col-md-4">
            <div class="card">
                <h5 class="card-header">Foto Profil</h5>
                <div class="card-body">
                    <?php
                    $queryUser = mysqli_query($koneksi, "SELECT * FROM user WHERE user_id='$user_id'");
                    $row = mysqli_fetch_assoc($queryUser);
                    if($row['foto'] != ''){
                        echo "<img src='".BASE_URL."img/profile/$row[foto]' class='img-fluid rounded-circle' width='200' height='200'>";
                    } else {
                        echo "Belum ada foto profil";
                    }
                    ?>
                    <form action="?page=my_profile&module=profile&action=upload_foto" method="post" enctype="multipart/form-data">
                        <input type="hidden" name="user_id" value="<?= $user_id ?>">
                        <input type="file" name="foto" class="form-control">
                        <button type="submit" class="btn btn-primary">Upload Foto</button>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-md-8">
            <div class="card">
                <h5 class="card-header">Informasi Profil</h5>
                <div class="card-body">
                    <p><b>Nama User:</b> <?= $row['nama'] ?></p>
                    <p><b>Email:</b> <?= $row['email'] ?></p>
                </div>
            </div>
        </div>
    </div>
</div>