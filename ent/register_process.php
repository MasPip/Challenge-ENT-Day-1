<?php

    include_once("function/helper.php");
    include_once("function/connection.php");

    $nama = $_POST['nama'];
    $email = $_POST['email'];
    $password = $_POST['password'];

    unset($_POST['password']);
    $dataform = http_build_query($_POST);

    $query = mysqli_query($koneksi, "SELECT * FROM user WHERE email='$email'");

    if (empty($nama) || empty($email) || empty($password)) {
        header("location: " . BASE_URL . "index.php?page=register&notif=require&$dataform");
        exit;
    } elseif (mysqli_num_rows($query) == 1) {
        header("location: " . BASE_URL . "index.php?page=register&notif=email&$dataform");
        exit;
    } else {
        $password_hash = password_hash($password, PASSWORD_DEFAULT);

        $statement = $koneksi->prepare("INSERT INTO user (nama, email, password) VALUES (?, ?, ?)");
        $statement->bind_param('sss', $nama, $email, $password_hash);
        $statement->execute();

        if ($statement->affected_rows > 0) {
            header("location: index.php");
            exit;
        } else {
            echo "Error: " . mysqli_error($koneksi);
        }
    }

?>