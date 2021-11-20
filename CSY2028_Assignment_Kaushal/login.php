
<?php

 require_once ('./includes/dbconnection.php');
 require_once ('./controller/authenticationController.php');
?>
<!DOCTYPE html>
<html>
<head>
	<title>Login-Uon NewsPaper</title>
	<link rel="stylesheet" href="css/login.css"/>
</head>
<body>
<form class="login" action="login.php" method="post">
  <div class="login-box">
  <h1>User-Login | Northampton News</h1>
  <div class="error_container">
  <?php  if(count($php_errors)>0): //if there is any error in in register form then this code get executes.?>
     <?php foreach ($php_errors as $error): ?>
      <li style="color: red; list-style: none;" class="error_list"><?php echo $error; ?></li>
     <?php endforeach; ?>
   
<?php endif; ?>
  <div class="textbox">
    <input id="login" type="email" value="<?php echo $email; ?>" name="email" placeholder="Please Enter Your Email">
  </div>

  <div class="textbox">
    <input type="password" name="password" placeholder="Please Enter Your Password">
  </div>

  <input type="submit" name="sign_in" class="btn" value="Login">
  <p>Not have Account?</p> 
  <a href="register.php">Register Here</a>
</div>
   
</body>
</html>



 