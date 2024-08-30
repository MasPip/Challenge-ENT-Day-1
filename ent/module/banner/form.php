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

<div class="container">
    <h2>Form Banner</h2>
    <form action="<?php echo BASE_URL . "module/banner/action.php?banner_id=$banner_id" ?>" method="post" enctype="multipart/form-data">
        <div class="form-group">
            <label for="judul">Judul</label>
            <input type="text" name="judul" value="<?php echo $judul; ?>" class="form-control" placeholder="Masukkan judul banner">
        </div>
        <div class="form-group">
            <label for="file">Gambar</label>
            <input type="file" name="file" class="form-control-file">
            <?php if($gambar) : ?>
                <img src="<?php echo BASE_URL . "img/banner/$gambar"; ?>" alt="Gambar Banner" class="img-thumbnail">
            <?php endif; ?>
        </div>
        <button type="submit" name="button" value="<?php echo $button; ?>" class="btn btn-primary">Simpan</button>
    </form>
</div>