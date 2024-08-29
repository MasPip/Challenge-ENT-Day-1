<?php

    session_start();

    include_once("function/helper.php");
    include_once("function/connection.php");

    $page = isset($_GET['page']) ? $_GET['page'] : false;

    $user_id = isset($_SESSION['user_id']) ? $_SESSION['user_id'] : false;
    $nama = isset($_SESSION['nama']) ? $_SESSION['nama'] : false;

?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <link rel="stylesheet" href="style.css">

    <title>Portal Berita</title>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark">
    <div class="container">
        <a class="navbar-brand" href="<?php echo BASE_URL;?>">Portal</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbar" aria-controls="navbar" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse d-lg-flex justify-content-lg-end"  id="navbar">
            <ul class="navbar-nav">
                <?php

                    if($user_id){
                        echo "<li class='nav-item nav-link'>Hi, $nama</li>";
                        echo "<li class='nav-item'><a class='nav-link active' href='index.php?page=my_profile&module=berita&action=list'>My Profile</a></li>";
                        echo "<li class='nav-item'><a class='nav-link' href='logout.php'>Logout</a></li>";
                    }
                    else{
                        echo "<li class='nav-item'><a class='nav-link active' href='index.php?page=login'>Login</a></li>";
                        echo "<li class='nav-item'><a class='nav-link' href='index.php?page=register'>Register</a></li>";
                    }
                ?>

            </ul>
            
        </div>
    </div>
</nav>




    <section id="home">
        <?php

        $filename = "$page.php";
        if(file_exists($filename)){
            include_once($filename);
        }
        else{
            include_once("main.php");
        }

        ?>
    </section>


    <footer class="footer">
        <div class="container">
            <div class="row">
            <div class="col-md-3">
                <h5>About Us</h5>
                <p>Menyajikan berita terhangat serta aktual.</p>
            </div>
            <div class="col-md-3 follow">
                <h5>Follow Us</h5>
                <ul>
                <li ><a href="#" target="_blank" class="text-white"><i class="text-white fa-brands fa-facebook"></i></i></i> Facebook</a></li>
                <li><a href="#" target="_blank" class="text-white"><i class="text-white fab fa-twitter"></i> Twitter</a></li>
                <li><a href="#" target="_blank" class="text-white"><i class="text-white fab fa-instagram"></i> Instagram</a></li>
                </ul>
            </div>
            <div class="row">
            <div class="col-md-12">
                <p>&copy; 2024 News Website. All rights reserved.</p>
            </div>
            </div>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/d28a8ff94b.js" crossorigin="anonymous"></script>

</body>
</html>