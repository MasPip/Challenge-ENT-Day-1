<?php

    if($user_id){
        header("location: ".BASE_URL."index.php?page=my_profile&module=berita&action=list");
    }

?>


<div class="container">
    <div class="row">
        <div class="user-login col-lg-12">
            <form action="<?php echo "login_process.php"; ?>" method="post">
                <?php
                $notif = isset($_GET['notif']) ? $_GET['notif'] : false;

                if($notif == "true"){
                    echo "<div class='notif'>Username & Password tidak ada</div>";
                }

                ?>
                <div class="form-body">
                    <label for="nama">Nama</label>
                    <input type="text" name="nama">
                </div>
                <div class="form-body">
                    <label for="password">Password</label>
                    <input type="password" name="password">
                </div>
                <input class="btn btn-primary my-2" type="submit" value="Login">
            </form>
        </div>
    </div>
</div>