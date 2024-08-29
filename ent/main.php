<?php
    include_once("function/helper.php");
    include_once("function/connection.php");



?>

<div id="carouselExampleCaptions" class="carousel slide">
  <div class="carousel-indicators">
    <?php
    $query = mysqli_query($koneksi, "SELECT * FROM banner");
    $i = 0;
    while ($row = mysqli_fetch_assoc($query)) {
      if ($i == 0) {
        echo '<button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="' . $i . '" class="active" aria-current="true" aria-label="Slide ' . ($i + 1) . '"></button>';
      } else {
        echo '<button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="' . $i . '" aria-label="Slide ' . ($i + 1) . '"></button>';
      }
      $i++;
    }
    ?>
  </div>
  <div class="carousel-inner">
    <?php
    $query = mysqli_query($koneksi, "SELECT * FROM banner");
    $i = 0;
    while ($row = mysqli_fetch_assoc($query)) {
      if ($i == 0) {
        echo '<div class="carousel-item active">';
      } else {
        echo '<div class="carousel-item">';
      }
      echo '<img src="' . BASE_URL . 'img/banner/' . $row['gambar'] . '" class="d-block w-100 img-fluid banner">';
      echo '<div class="carousel-caption d-none d-md-block">' . $row['judul'] . '</div>';
      echo '</div>';
      $i++;
    }
    ?>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

<section id="daftar-berita">
    <div class="container">
        <div class="row">
            <h3 class="title">Berita Hari Ini</h3>
            <?php

            $berita_id = isset($_GET['berita_id']) ? $_GET['berita_id'] : "";

            $query = mysqli_query($koneksi, "SELECT * FROM berita");
            while($row = mysqli_fetch_assoc($query)){
                echo"
                <div class='card card-berita' style='width: 18rem'>
                    <img src='".BASE_URL."img/berita/$row[gambar]' class='img-fluid wisata' >
                    <div class='card-body'>
                        <h5 class='card-title'>$row[judul]</h5>
                        <p class='card-text'>$row[kategori]</p>
                        <a href='".BASE_URL."index.php?page=detail&berita_id=$row[berita_id]' class='btn btn-primary'>Read More</a>
                    </div>
                </div>";
            }
            ?>

        </div>
    </div>
</section>
