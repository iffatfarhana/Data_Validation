<?php  
session_start();
$errors = array();
$db = mysqli_connect('localhost', 'root', '', 'data_validation_db');
// Login button pressed
if(isset($_POST['login'])) {
    $Email= $_POST["email"];
    $Password = $_POST["password"];

    if(empty($Email)) {
        array_push($errors, "Email address required");
    }
    if(empty($Password)) {
        array_push($errors, "Password required");
    }
    if (count($errors) == 0) {
        $query = "SELECT * FROM admin_table WHERE email='$Email' AND password='$Password'";
        $results = mysqli_query($db, $query);   // Retrive data from database
        $flag = mysqli_num_rows($results);

        if ( $flag == 1) { // If the query selects only one row then log in
            header('location: view.php');
        }else {
            array_push($errors, "Your Email or Password is Wrong");
        }
    }
}


?>


<!DOCTYPE html>
<html>
<head>
    <title>Admin</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<!--Nav Bar-->
<nav class="navbar navbar-inverse">
    <div class="container-default">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">Online Registration</a>
        </div>
        <ul class="nav navbar-nav">
            <li class="active"><a href="index.html">Home</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
         <li><a href="admin.php"> Admin</a></li>
            <li><a href="register.php"> Register</a></li>
        </ul>
    </div>
</nav>
<br>
<br>
<!--Form-->
<div class="container">
    <h1>Admin Login Form</h1>
    <br>
    <form method = "post" action="admin.php">
        <div class="form-group">
            <?php include('errors.php') ?>
        </div>        
        <div class="form-group">
            <label for="exampleInputEmail1">Email address</label>
            <input type="email" class="form-control" id="exampleInputEmail1" name="email"aria-describedby="emailHelp" placeholder="Enter email" required>
        </div>
        <div class="form-group">
            <label for="exampleInputPassword1">Password</label>
            <input type="password" class="form-control" name="password" id="exampleInputPassword1" placeholder="Password" required>
        </div>

        <button type="submit" class="btn btn-success"  name="login" >Log In</button>
    </form>
</div>


</body>
</html>
