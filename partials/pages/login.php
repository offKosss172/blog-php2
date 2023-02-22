<?php
if(isset($_POST["submit"])) {
    $login = $_POST['login'];
    $password = $_POST['password'];

    $sql = 
    "SELECT * FROM users WHERE `username`LIKE '$login' AND `pass` LIKE '$password' ";

    $result = $conn->query($sql);

    $user = $result->fetch_assoc();
    // var_dump($result);

    setcookie("user", $user['id'], time()+3600*24, "/");
}

?>

<form method="post">
    <p>
        Login: <br>
        <input type="text" name="login">
    </p>
    <p>
        Password: <br>
        <input type="password" name="password">
    </p>
    <p>
        <input type="submit" name="submit" value="login" >
    </p>

</form>