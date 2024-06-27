<header class="header">

   <section class="flex">

      <a href="community.php" class="logo">BRGY HUB</a>

      <div class="icons">
         <div id="menu-btn" class="fas fa-bars"></div>
         <div id="search-btn" class="fas fa-search"></div>
         <div id="user-btn" class="fas fa-user"></div>
         <div id="toggle-btn" class="fas fa-sun"></div>
      </div>

      <div class="profile">
         <?php
            $select_profile = $conn->prepare("SELECT * FROM `users` WHERE id = ?");
            $select_profile->execute([$user_id]);
            if($select_profile->rowCount() > 0){
            $fetch_profile = $select_profile->fetch(PDO::FETCH_ASSOC);
         ?>
         <img src="uploaded_files/<?= $fetch_profile['image']; ?>" alt="">
         <h3><?= $fetch_profile['name']; ?></h3>
         <span>student</span>
         <a href="components/user_logout.php" onclick="return confirm('logout from this website?');" class="delete-btn">logout</a>
         <?php
            }
         ?>
      </div>

   </section>

</header>

<!-- header section ends -->

<!-- side bar section starts  -->

<div class="side-bar">

   <div class="close-side-bar">
      <i class="fas fa-times"></i>
   </div>

   <div class="profile">
         <?php
            $select_profile = $conn->prepare("SELECT * FROM `users` WHERE id = ?");
            $select_profile->execute([$user_id]);
            if($select_profile->rowCount() > 0){
            $fetch_profile = $select_profile->fetch(PDO::FETCH_ASSOC);
         ?>
         <img src="uploaded_files/<?= $fetch_profile['image']; ?>" alt="">
         <h3><?= $fetch_profile['name']; ?></h3>
         <span>residents</span>
         <?php
            }
         ?>
      </div>

   <nav class="navbar">
      <a href="communities.php"><i class="fas fa-home"></i><span>COMMUNITY</span></a>
      <a href="residents.php"><i class="fas fa-exclamation"></i><span>ANNOUNCEMENT</span></a>
      <a href="files.php"><i class="fas fa-book"></i><span>FILE</span></a>
      <a href="../brgyhubchat/login.php" target="_blank"><i class="fas fa-headset"></i><span>CHATS</span></a>
      <a href="about.php"><i class="fa fa-question
      "></i><span>ABOUT US</span></a>
   </nav>

</div>

<!-- side bar section ends -->