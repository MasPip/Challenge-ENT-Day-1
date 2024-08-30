<div class="action">
    <h3>Daftar Berita</h3>
</div>


<div id="frame-tambah" class="d-lg-flex justify-content-lg-end my-2">
    <a class='btn btn-primary' href="<?php echo BASE_URL."index.php?page=my_profile&module=berita&action=form"?>">+ Tambah Postingan</a>
</div>

<?php
    
    
    $queryBerita = mysqli_query($koneksi, "SELECT * FROM berita");


    if(mysqli_num_rows($queryBerita) == 0){
        echo "<p>Tidak ada data</p>";
    }
    else{ 
        echo "<table class='table'>";
        echo "<thead class='thead-dark'>";
        echo "<tr>
        <th scope='col'>No</th>
        <th scope='col'>Judul</th>
        <th scope='col'>Gambar</th>
        <th scope='col'>Action</th>
        </tr>";
        echo "</thead>";
        
        $no = 1;

        while($row = mysqli_fetch_assoc($queryBerita)){
            echo "<tr>
            <th scope='row'>$no</th>
            <td style='font-size: 18px;'><b>$row[judul]</b></td>
            <td><img class='img-fluid wisata' src='".BASE_URL."img/berita/$row[gambar]'></td>
            <td>
            <a class='btn btn-primary' href='".BASE_URL."index.php?page=my_profile&module=berita&action=form&berita_id=$row[berita_id]'>Edit</a>
            <a class='btn btn-danger' href='".BASE_URL."module/berita/action.php?button=Delete&berita_id=$row[berita_id]'>Delete</a>
            </td>
            </tr>";
    
            $no++;
        }
        echo "</table>";
    
    }

?>