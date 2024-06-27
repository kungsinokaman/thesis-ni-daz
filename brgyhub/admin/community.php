<?php

include '../components/connect.php';

if(isset($_COOKIE['head_id'])){
   $head_id = $_COOKIE['head_id'];
}else{
   $head_id = '';
   header('location:login.php');
}

if(isset($_POST['delete_image'])){
   $delete_id = $_POST['image_id'];
   $delete_id = filter_var($delete_id, FILTER_SANITIZE_STRING);
   $verify_image = $conn->prepare("SELECT * FROM `content` WHERE id = ? LIMIT 1");
   $verify_image->execute([$delete_id]);
   if($verify_image->rowCount() > 0){
      $delete_image_thumb = $conn->prepare("SELECT * FROM `content` WHERE id = ? LIMIT 1");
      $delete_image_thumb->execute([$delete_id]);
      $fetch_thumb = $delete_image_thumb->fetch(PDO::FETCH_ASSOC);
      unlink('../uploaded_files/'.$fetch_thumb['thumb']);
      $delete_image = $conn->prepare("SELECT * FROM `content` WHERE id = ? LIMIT 1");
      $delete_image->execute([$delete_id]);
      $fetch_image = $delete_image->fetch(PDO::FETCH_ASSOC);
      unlink('../uploaded_files/'.$fetch_image['image']);
      $delete_likes = $conn->prepare("DELETE FROM `likes` WHERE content_id = ?");
      $delete_likes->execute([$delete_id]);
      $delete_comments = $conn->prepare("DELETE FROM `comments` WHERE content_id = ?");
      $delete_comments->execute([$delete_id]);
      $delete_content = $conn->prepare("DELETE FROM `content` WHERE id = ?");
      $delete_content->execute([$delete_id]);
      $message[] = 'image deleted!';
   }else{
      $message[] = 'image already deleted!';
   }

}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Brgy Dashboard</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="../css/admin_style.css">

</head>
<body>

<?php include '../components/admin_header.php'; ?>
   
<section class="contents">

   <h1 class="heading">brgy contents</h1>

   
















<script src="../js/admin_script.js"></script>

</body>
</html>