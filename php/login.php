<?php
require_once 'config.php';
$login_err = $err = "";
if(isset($_SESSION['loggedin'])) {
    header('location: profile.php');
}
if(isset($_POST['passwordSubmit'])) {
    $username = mysqli_real_escape_string($link, $_POST['username'] );
    $password = mysqli_real_escape_string( $link, $_POST['password']);
    $stmt = "SELECT * FROM USERS WHERE USERNAME = '$username'";
    if (mysqli_num_rows($result = mysqli_query($link, $stmt)) == 1) {
        if($rad = mysqli_fetch_assoc($result)) {  
            if(password_verify($password, $rad['password'])) {
                session_start();
                $_SESSION['username'] = $rad['username'];
                $_SESSION['id'] = $rad['ID'];
                $_SESSION['loggedin'] = true;
                $_SESSION['description'] = $rad['description'];
                header('location: profile.php');
            } else {
                $login_err = "wrong username or password";
            }
        } else {
            $err = "something went worng";
        }
    } else {
        $login_err = "wrong username or password";
    }
        
    
}

?>




<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
</head>
<body>

<form action="login.php" Method="POST">
    <input type="text" name="username" placeholder="username">
    <input type="password" name = "password" placeholder="password">
    <input type="submit" name = "passwordSubmit" >
</form>
<p> <?php echo $login_err; echo $err;?></p>
    
</body>
</html>