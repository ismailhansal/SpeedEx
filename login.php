<?php

$login = 0;
$invalid = 0;

if ($_SERVER['REQUEST_METHOD'] == "POST" && isset($_POST['submit'])) {
    include('connect.php');

    $username = $_POST['username'];
    $password = $_POST['password'];

    if (!empty($username) && !empty($password)) {
        // Requête SQL pour vérifier l'existence de l'utilisateur dans toutes les tables
        $sql = "SELECT username, password FROM coordinateur WHERE username=? AND password=?";

        $stmt = $conn->prepare($sql);
        $stmt->bind_param("ss", $username, $password); // Comparaison en texte brut
        $stmt->execute();
        $stmt->store_result();

        if ($stmt->num_rows > 0) {
            $login = 1;
            session_start();
            $_SESSION['username'] = $username;
            header('location:index.html');
        } else {
            $invalid = 1;
        }
    }
}

?>





<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SpeedEX login</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body class="bg-gradient-primary">

    <div class="container">

        <!-- Outer Row -->
        <div class="row justify-content-center mt-5">
    
            <div class="col-xl-10 col-lg-12 col-md-9 mt-5">
    
                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body  p-0 text-center"> <!-- Ajoutez la classe text-center ici -->
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col-lg-6 mx-auto"> <!-- Ajoutez la classe mx-auto ici -->
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4">SpeedEx Login</h1>
                                    </div>
                                    <form class="user" action="login.php" method="POST">
                                        <div class="form-group">
                                            <input type="text" class="form-control form-control-user"
                                                id="exampleInputEmail"
                                                placeholder="Enter Username..." name="username">
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control form-control-user"
                                                id="exampleInputPassword" placeholder="Password" name="password">
                                        </div>
                                        <div class="form-group">
                                            <div class="custom-control custom-checkbox small">
                                                <input type="checkbox" class="custom-control-input" id="customCheck">
                                                <label class="custom-control-label" for="customCheck">Remember
                                                    Me</label>
                                            </div>
                                        </div>
                                        <button type="submit" class="btn btn-primary btn-user btn-block" name="submit">
                                            Login
</submit>
                                        
                                       
                                    </form>
                                    
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
    
            </div>
    
        </div>
    
    </div>
    

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

</body>




</html>