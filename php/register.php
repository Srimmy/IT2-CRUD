<?php
require_once 'config.php';
$password_err = $username_err = $err = '';

if(isset($_SESSION['loggedin'])) {
    header('location: profile.php');
}
If(isset($_POST['submitRegister'])) {
    $username = mysqli_real_escape_string($link, $_POST['username'] );
    $password = mysqli_real_escape_string( $link, $_POST['password']);
    $confirmPassword = mysqli_real_escape_string( $link, $_POST['confirmPassword']);
    $description = 'Hey bozo!';

    if($password != $confirmPassword) {
        $password_err = "password does not match";
    } else {
        $stmt = "SELECT * FROM users WHERE USERNAME ='$username'";
        if(mysqli_num_rows($result = mysqli_query($link, $stmt)) > 0) {
            $username_err = "Username alreayd exists";
        } else {
            $hashedPassword = password_hash($password, PASSWORD_DEFAULT);
            $stmt = "INSERT INTO USERS(username, password, description) VALUES('$username', '$hashedPassword', '$description')";
            if ($result = mysqli_query($link, $stmt)) {
                header('location: login.php?Sucess');
            } else {
                $err = "Something went wrong";
            }

        }

    }
}
?>




<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
</head>
<body>

<form action="register.php" Method="POST">
    <input type="text" name="username" placeholder="username">
    <input type="password" name = "password" placeholder="password">
    <input type="password" name = "confirmPassword" placeholder="confirmPassword">
    <input type="submit" name = "submitRegister">
</form>
<p> <?php echo $password_err; echo $username_err; echo $err; ?></p>
    
</body>
</html>