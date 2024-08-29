<?php

    $banner_id = isset($_GET['banner_id']) ? $_GET['banner_id'] : false;

    $judul = "";
    $gambar = "";
    $button = "Add";

    if($banner_id){
        $queryBanner = mysqli_query($koneksi, "SELECT * FROM banner WHERE banner_id='$banner_id'");
        $row = mysqli_fetch_assoc($queryBanner);

        $judul = $row['judul'];
        $gambar = $row['gambar'];
        $button = "Update";

        $gambar = "<img src='".BASE_URL."img/banner/$gambar'>";
    }
?>

<form action="<?php echo BASE_URL . "module/banner/action.php?banner_id=$banner_id" ?>" method="post" enctype="multipart/form-data">


    <div class="form-body">
        <label for="judul">Judul</label>
        <input type="text" name="judul" value="<?php echo $judul; ?>">
    </div>
    <div class="form-body">
        <label for="file">Gambar</label>
        <input type="file" name="file"><?php echo $gambar ?>
    </div>
    <input class="btn btn-primary my-2" type="submit" name="button" value="<?php echo $button;?>">
</form>