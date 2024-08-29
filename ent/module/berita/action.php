<?php
    include_once("../../function/helper.php");
    include_once("../../function/connection.php");

    $button = isset($_POST['button']) ? $_POST['button'] : $_GET['button'];
    $berita_id = isset($_GET['berita_id']) ? $_GET['berita_id'] : "";
    
    $judul = isset($_POST['judul']) ? $_POST['judul'] : "";
    $isi = isset($_POST['isi']) ? $_POST['isi'] : "";
    $kategori = isset($_POST['kategori']) ? $_POST['kategori'] : "";
    $update_gambar = "";
    
    if(!empty($_FILES["file"]["name"])){
    $nama_file = $_FILES["file"]["name"];
    move_uploaded_file($_FILES["file"]["tmp_name"], "../../img/berita/".$nama_file);

    $update_gambar = ", gambar='$nama_file'"; 
    }

    if($button == "Add"){
        $statement = $koneksi->prepare("INSERT INTO berita ( judul, isi, kategori, gambar) VALUES (?,?,?,?);");
        $statement->bind_param('ssss',$judul,$isi,$kategori,$nama_file);
        $statement->execute();
    }
    else if($button == "Update"){
        mysqli_query($koneksi, "UPDATE berita SET judul='$judul', isi='$isi', kategori='$kategori' $update_gambar WHERE berita_id='$berita_id'");
        
    }
    else if($button == "Delete"){
        mysqli_query($koneksi, "DELETE FROM berita WHERE berita_id='$berita_id'");
    }

    header("location: ". BASE_URL."index.php?page=my_profile&module=berita&action=list");

?>
