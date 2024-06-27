<?php

include 'components/connect.php';

if(isset($_COOKIE['user_id'])){
   $user_id = $_COOKIE['user_id'];
}else{
   $user_id = '';
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>about</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>

<?php include 'components/user_header.php'; ?>

<!-- about section starts  -->

<section class="about">

   <div class="row">

      <div class="image">
         <img src="about-img.svg" alt="">
      </div>

      <form action="" method="post">
      <div class="content">
         <h3>Click the link to access Chats!</h3>
         <a href="../ChatApp/index.php" target="_blank">BrgyHub Chats</a>
      </div>
   </form>

   </div>

<!-- about section ends -->











<!-- custom js file link  -->
<script src="js/script.js"></script>
   
</body>
</html>