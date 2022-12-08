<?php 
session_start();
if (isset($_SESSION['admin_username'])) {
    header("location:homepage.html");
}
include("inc_koneksi.php");
$username = "";
$password = "";
$err = "";
if (isset($_POST['login'])) {
    $username   = $_POST['username'];
    $password   = $_POST['password'];
    if ($username == '' or $password == '') {
        $err .= "<li>Silakan masukkan username dan password</li>";
    }
  }
    if (empty($err)) {
        $sql1 = "select * from admin where username = '$username'";
        $q1 = mysqli_query($koneksi, $sql1);
        $r1 = mysqli_fetch_array($q1);
        if ($r1['password'] != md5($password)) {
            $err .= "<li>Akun tidak ditemukan</li>";
        }
    }
?>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>Login</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />

  </head>
  <body>
    <section>
      <div class="container mt-5 pt-5">
          <div class="row">
          <div class="col-12 col-sm-8 col-md-6 m-auto">
              <div class="card">
                  <div class="card-body">
                    <h1>Login</h1>
                      <form action="" method="post">
                      <?php
                    if($err){
                      echo "<ul>$err</ul>";
                    } 
                    ?>
                          <input type="text" value="<?php echo $username ?>" name="username" id="" class="form-control my-4 py-2" placeholder="username"/>
                          <input type="password" name="password" id="" class="form-control my-4 py-2" placeholder="password"/>
                          <div class="text-center mt-3">
                          <input type="submit" name="login" value="Masuk Ke Sistem" />    
                      </form>
  </section>
          
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  </body>
</html>