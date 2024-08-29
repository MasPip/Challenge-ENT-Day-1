<?php

    if($user_id){
        header("location: ".BASE_URL."index.php?page=my_profile&module=postingan&action=list");
    }

?>

<div class="container">
    <div class="row">
        <div class="user-register col-lg-12">
            <form action="<?php echo "register_process.php"; ?>" method="post">

            <?php

                $notif = isset($_GET['notif']) ? $_GET['notif'] : false;

                if($notif == "require"){
                    echo "<div class='notif'> Maaf, anda harus mengisi data.</div>";
                }
                else if($notif == "email"){
                    echo "<div class='notif'>Maaf, email sudah digunakan</div>";
                }
            ?>
                <div class="form-body">
                    <label for="nama">Nama</label>
                    <input type="text" name="nama">
                </div>
                <div class="form-body">
                    <label for="email">Email</label>
                    <input type="email" name="email">
                </div>
                <div class="form-body">
                    <label for="password">Password</label>
                    <input type="password" name="password">
                </div>
                <input class="btn btn-primary my-2" type="submit" value="Register">
                <input class="btn btn-danger my-2" type="reset" value="Reset">
            </form>
        </div>
    </div>
</div>