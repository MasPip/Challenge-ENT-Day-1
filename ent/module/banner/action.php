<?php
    include_once("../../function/helper.php");
    include_once("../../function/connection.php");

    $button = isset($_POST['button']) ? $_POST['button'] : $_GET['button'];
    $berita_id = isset($_GET['berita_id']) ? $_GET['berita_id'] : "";
    $banner_id = isset($_GET['banner_id']) ? $_GET['banner_id'] : "";

    $judul = isset($_POST['judul']) ? $_POST['judul'] : "";
    $isi = isset($_POST['isi']) ? $_POST['isi'] : "";
    $penulis =isset($_POST['penulis']) ? $_POST['penulis'] : "";
    $update_gambar = "";
    
    if(!empty($_FILES["file"]["name"])){
    $nama_file = $_FILES["file"]["name"];
    move_uploaded_file($_FILES["file"]["tmp_name"], "../../img/banner/".$nama_file);

    $update_gambar = ", gambar='$nama_file'"; 
    }

    if($button == "Add"){
        $statement = $koneksi->prepare("INSERT INTO banner (judul, gambar) VALUES (?,?);");
        $statement->bind_param('ss', $judul, $nama_file);
        $statement->execute();
    }
    else if($button == "Update"){
        mysqli_query($koneksi, "UPDATE banner SET judul='$judul' $update_gambar WHERE banner_id='$banner_id'");
        
    }
    else if($button == "Delete"){
        mysqli_query($koneksi, "DELETE FROM banner WHERE banner_id = '$banner_id'");
    }
    
    header("location: ". BASE_URL."index.php?page=my_profile&module=banner&action=list");

?>