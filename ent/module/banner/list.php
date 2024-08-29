<div class="action">
    <h3>Daftar Banner</h3>
</div>


<div id="frame-tambah" class="d-lg-flex justify-content-lg-end my-2">
    <a class='btn btn-primary' href="<?php echo BASE_URL."index.php?page=my_profile&module=banner&action=form"?>">+ Tambah Postingan</a>
</div>

<?php
    
    
    $queryBanner = mysqli_query($koneksi, "SELECT * FROM banner");


    if(mysqli_num_rows($queryBanner) == 0){
        echo "<p>Tidak ada data</p>";
    }
    else{ 
        echo "<table class='table'>";
        echo "<thead class='thead-dark'>";
        echo "<tr>
        <th>No</th>
        <th>Judul</th>
        <th>Gambar</th>
        <th>Action</th>
        </tr>";
        echo "</thead>";
        $no = 1;

        while($row = mysqli_fetch_assoc($queryBanner)){

        echo "<tr>
        <th scope='row'>$no</th>
        <td>$row[judul]</td>
        <td><img class='img-fluid wisata' src='".BASE_URL."img/banner/$row[gambar]'></td>
        <td>
        <a class='btn btn-primary' href='".BASE_URL."index.php?page=my_profile&module=banner&action=form&banner_id=$row[banner_id]'>Edit</a>
        <a class='btn btn-danger' href='".BASE_URL."module/banner/action.php?button=Delete&banner_id=$row[banner_id]'>Delete</a>
        </td>
        </tr>";

        $no++;
        }
        echo "</table>";
    
    }

?>