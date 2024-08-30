<section id="daftar-wisata">
    <div class="container">
        <div class="row">
            <?php
                $postingan_id = isset($_GET['berita_id']) ? $_GET['berita_id'] : "";

                $query = mysqli_query($koneksi, "SELECT * FROM berita WHERE berita_id='$postingan_id'");
                $row = mysqli_fetch_assoc($query);
            
                echo "<div class='col-md-12 page-detail'>
                    
                    
                    <div class='row justify-content-center'>
                        <div class='col-md-12'>
                            <h1 class='text-center' style='font-size: 50px;'>$row[judul]</h1>
                        </div>
                    </div>
                    <div class='row justify-content-center'>
                        <div class='col-md-6'>
                            <img class='img-fluid isi-berita' src='".BASE_URL."img/berita/$row[gambar]'>
                        </div>
                    </div>
                    <div class='row justify-content-center'>
                        <div class='col-md-12'>
                            <p class='text-justify' style='font-size: 20px;'>$row[isi]</p>
                        </div>
                    </div>
                </div>";
            ?>

        </div>
        <a class="btn btn-primary return" href="<?php echo BASE_URL."index.php";?>">Home</a>
    </div>
</section>