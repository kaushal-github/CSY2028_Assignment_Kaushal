<?php 

session_start();
// ob_start();
///if the logout.php page executed the following wiil be executed if thes session is login
if (isset($_SESSION['login'])) {
     session_destroy();//session willl destroyed
     unset($_SESSION['login']);//unsetting session login
     unset($_SESSION['user_id']);//unsetting session user id
     unset($_SESSION['user_name']);//unsetting session user name
     unset($_SESSION['user_role']);//unsetting session user role
     
     header("Location: index.php");//and redirecting to hame page
}

 ?>