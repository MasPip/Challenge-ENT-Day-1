<?php

    include_once("function/helper.php");
    include_once("function/connection.php");

    $email = $_POST['email'];
    $password = $_POST['password'];

    $stmt = $koneksi->prepare("SELECT * FROM user WHERE email = ?");
    $stmt->bind_param("s", $email);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows == 0) {
        header("location: ". BASE_URL . "index.php?page=login&notif=true");
    } else {
        $row = $result->fetch_assoc();

        session_start();
        session_regenerate_id();

        $_SESSION['user_id'] = $row['user_id'];
        $_SESSION['nama'] = $row['email'];

        header("location:". BASE_URL. "index.php?page=my_profile&module=berita&action=list");
    }

?>