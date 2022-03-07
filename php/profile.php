<?php
session_start();
require_once('config.php');
$id = $_SESSION['id'];

if(isset($_POST['logout'])) {
    session_destroy();
    header('location: login.php');
}
if(isset($_POST['submitNewUsername'])) {
    $username = mysqli_real_escape_string($link, $_POST['newUsername']);
    $stmt = "update users set username = '$username' where id = '$id'";
    if($result = mysqli_query($link, $stmt)) {
        $_SESSION['username'] = $username;
    }
}
if(isset($_POST['submitNewDescription'])) {
    $description = mysqli_real_escape_string($link, $_POST['newDescription']);
    $stmt = "update users set description = '$description' where id = '$id'";
    if($result = mysqli_query($link, $stmt)) {
        $_SESSION['description'] = $description;
    }
}
if(isset($_POST['delete'])) {
    $stmt = "DELETE from USERs where ID = '$id'";
    if ($result = mysqli_query($link, $stmt)) {
        session_destroy();
        header('location: register.php');
    }
}


$description = $_SESSION['description'];


?>




<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profil <?php echo $_SESSION['username'];?></title>

    <form action="profile.php" method="POST">
        <input type="text" name="newUsername" value = <?php echo $_SESSION['username']; ?>>
        <input type="submit" name ="submitNewUsername" value="change username">
    </form>

    


    <?php echo "Your description: $description";?>

    <form action="profile.php" method="POST">
        <input type="text" name="newDescription" placeholder ="new description">
        <input type="submit" name ="submitNewDescription">
    </form>
    <?php 
    $stmt = "SELECT * FROM USERS";
    $result = mysqli_query($link, $stmt);
    echo "<table> <tr> <th> username </th> <th> description </th> </tr>";
    while($rad = mysqli_fetch_assoc($result)) {
        $username = $rad['username'];
        $description = $rad['description'];
        echo "<tr> <td> $username </td> <td> $description </td> </tr>";
    }
    echo "</table>";
    ?>
    
    <form action="profile.php" method="POST">
        <input type="submit" name = "logout" value="logout">
    </form>
    <form action="profile.php" method="POST">
        <input type="submit" name = "delete" value="delete user">
    </form>

</head>
<body>
    
</body>
</html>