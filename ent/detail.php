<section id="daftar-wisata">
    <div class="container">
        <div class="row">
            <?php
                $postingan_id = isset($_GET['berita_id']) ? $_GET['berita_id'] : "";

                $query = mysqli_query($koneksi, "SELECT * FROM berita WHERE berita_id='$postingan_id'");
                $row = mysqli_fetch_assoc($query);
            
                echo "<div class='col-md-12 page-detail'>
                    
                    <div class='row d-flex justify-content-between'>
                        <div class='nama '>
                            <p>$row[judul]</p>
                        </div>
                        <div class='gambar-wisata'>
                            <img class='img-fluid' src='".BASE_URL."img/berita/$row[gambar]'>
                        </div>
                        <div class='isi'>
                            <p>$row[isi]</p>
                        </div>
                    </div>
                </div>";
            ?>

        </div>
        <a class="return" href="<?php echo BASE_URL."index.php";?>">Home</a>
    </div>
</section>

