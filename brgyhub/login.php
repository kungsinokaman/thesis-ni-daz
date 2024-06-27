<?php

include 'components/connect.php';

if(isset($_COOKIE['user_id'])){
   $user_id = $_COOKIE['user_id'];
}else{
   $user_id = '';
}

if(isset($_POST['submit'])){

   $phone = $_POST['phone'];
   $phone = filter_var($phone, FILTER_SANITIZE_STRING);
   $pass = sha1($_POST['pass']);
   $pass = filter_var($pass, FILTER_SANITIZE_STRING);

   $select_user = $conn->prepare("SELECT * FROM `users` WHERE phone = ? AND password = ? LIMIT 1");
   $select_user->execute([$phone, $pass]);
   $row = $select_user->fetch(PDO::FETCH_ASSOC);
   
   if($select_user->rowCount() > 0){
     setcookie('user_id', $row['id'], time() + 60*60*24*30, '/');
     header('location:communities.php');
   }else{
      $message[] = 'incorrect phone number or password!';
   }

}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>BRGY HUB</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>



        <section class="form-container">

   <form action="" method="post" enctype="multipart/form-data" class="login">
      <h3>welcome back!</h3>
      <p>your phone number <span>*</span></p>
      <input type="phone" name="phone" placeholder="enter your phone number" maxlength="20" required class="box">
      <p>your password <span>*</span></p>
      <input type="password" name="pass" placeholder="enter your password" maxlength="20" required class="box">
      <input type="submit" name="submit" value="login now" class="btn">
   </form>

</section>













<!-- custom js file link  -->
<script src="js/script.js"></script>
   
</body>
</html>