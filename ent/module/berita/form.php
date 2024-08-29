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

<form action="<?php echo BASE_URL . "module/berita/action.php?berita_id=$berita_id" ?>" method="post" enctype="multipart/form-data">


    <div class="form-body">
        <label for="judul">Judul</label>
        <input type="text" name="judul" value="<?php echo $judul; ?>">
    </div>
    <div class="form-body">
        <label for="kategori">Kategori</label>
        <input type="text" name="kategori" value="<?php echo $kategori; ?>">
    </div>
    <div class="form-body">
        <label for="isi">Isi</label>
        <textarea name="isi" cols="100" rows="10" ><?php echo $isi; ?></textarea>
    </div>
    <div class="form-body">
        <label for="file">Gambar</label>
        <input type="file" name="file"><?php echo $gambar ?>
    </div>
    <input class="btn btn-primary my-2" type="submit" name="button" value="<?php echo $button;?>">
</form>