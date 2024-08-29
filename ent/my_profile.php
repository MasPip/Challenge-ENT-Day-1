<?php
    if(empty($user_id)){
        header("location: index.php");
    }
    
    $module = isset($_GET['module']) ? $_GET['module'] : false;
    $action = isset($_GET['action']) ? $_GET['action'] : false;
?>


    <div class="container">
        <div class="row">
            <div class="col-lg-3 list-profile">
                <ul class="left" style="padding: 10px;">
                    <li class="kat" style="padding: 10px;">
                        <a class="list-kategori" href="<?php echo "index.php?page=my_profile&module=berita&action=list" ?>">Daftar Berita</a>
                    </li>
                    <li class="kat" style="padding: 10px;">
                        <a class="list-kategori" href="<?php echo "index.php?page=my_profile&module=banner&action=list" ?>">Galeri Banner</a>
                    </li>
                </ul>
            </div>

            <div class="col-lg-9">
                <?php

                $file = "module/$module/$action.php";
                if(file_exists($file)){
                    include_once($file);
                }
                else{
                    echo "File tidak ada";
                }

                ?>
            </div>
        </div>
    </div>




