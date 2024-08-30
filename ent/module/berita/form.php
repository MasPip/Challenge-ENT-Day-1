<?php

    $berita_id = isset($_GET['berita_id']) ? $_GET['berita_id'] : false;

    $judul = "";
    $isi = "";
    $kategori = "";
    $gambar = "";
    $button = "Add";

    if($berita_id){
        $queryPos = mysqli_query($koneksi, "SELECT * FROM berita WHERE berita_id='$berita_id'");
        $row = mysqli_fetch_assoc($queryPos);

        $judul = $row['judul'];
        $isi = $row['isi'];
        $kategori = $row['kategori'];
        $gambar = $row['gambar'];
        $button = "Update";

        $gambar = "<img src='".BASE_URL."img/berita/$gambar'>";
    }
?>

<div class="container">
    <h2>Form Berita</h2>
    <form action="<?php echo BASE_URL . "module/berita/action.php?berita_id=$berita_id" ?>" method="post" enctype="multipart/form-data">
        <div class="form-group">
            <label for="judul">Judul</label>
            <input type="text" name="judul" value="<?php echo $judul; ?>" class="form-control" placeholder="Masukkan judul berita">
        </div>
        <div class="form-group">
            <label for="kategori">Kategori</label>
            <input type="text" name="kategori" value="<?php echo $kategori; ?>" class="form-control" placeholder="Masukkan kategori berita">
        </div>
        <div class="form-group">
            <label for="isi">Isi</label>
            <textarea name="isi" cols="100" rows="10" class="form-control" placeholder="Masukkan isi berita"><?php echo $isi; ?></textarea>
        </div>
        <div class="form-group">
            <label for="file">Gambar</label>
            <input type="file" name="file" class="form-control-file">
            <?php if($gambar) : ?>
                <img src="<?php echo BASE_URL . "img/berita/$gambar"; ?>" alt="Gambar Berita" class="img-thumbnail">
            <?php endif; ?>
        </div>
        <button type="submit" name="button" value="<?php echo $button; ?>" class="btn btn-primary">Simpan</button>
    </form>
</div>