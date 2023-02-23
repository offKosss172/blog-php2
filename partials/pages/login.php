<?php
if(isset($_POST["submit"])) {
    $login = $_POST['login'];
    $password = $_POST['password'];

    $sql = "SELECT * FROM users WHERE `username`= '$login' ";

    $result = $conn->query($sql);

    $user = $result->fetch_assoc();
    // var_dump($result);
    if(password_verify($password, $user['pass'])){
    setcookie("user", $user['id'], time()+3600*24, "/");
    header("Location: /?p=home");

    }else{
        echo("password or login is wrong");
    }
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