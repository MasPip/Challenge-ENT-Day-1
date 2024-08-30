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
        if(empty($judul) || empty($nama_file)){
            echo "<script>alert('Mohon isi semua data yang diperlukan!');</script>";
            echo "<script>window.location.href = '".BASE_URL."index.php?page=my_profile&module=banner&action=form';</script>";
        } else {
            $statement = $koneksi->prepare("INSERT INTO banner (judul, gambar) VALUES (?,?);");
            $statement->bind_param('ss', $judul, $nama_file);
            $statement->execute();
            echo "<script>alert('Data berhasil ditambahkan!');</script>";
            echo "<script>window.location.href = '".BASE_URL."index.php?page=my_profile&module=banner&action=list';</script>";
        }
    }
    else if($button == "Update"){
        if(empty($judul)){
            echo "<script>alert('Mohon isi semua data yang diperlukan!');</script>";
            echo "<script>window.location.href = '".BASE_URL."index.php?page=my_profile&module=banner&action=form&banner_id=$banner_id';</script>";
        } else {
            mysqli_query($koneksi, "UPDATE banner SET judul='$judul' $update_gambar WHERE banner_id='$banner_id'");
            echo "<script>alert('Data berhasil diupdate!');</script>";
            echo "<script>window.location.href = '".BASE_URL."index.php?page=my_profile&module=banner&action=list';</script>";
        }
    }
    else if($button == "Delete"){
        mysqli_query($koneksi, "DELETE FROM banner WHERE banner_id = '$banner_id'");
        echo "<script>alert('Data berhasil dihapus!');</script>";
        echo "<script>window.location.href = '".BASE_URL."index.php?page=my_profile&module=banner&action=list';</script>";
    }
?>