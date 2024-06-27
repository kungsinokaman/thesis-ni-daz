<?php

include 'components/connect2.php';

if(isset($_COOKIE['user_id'])){
   $user_id = $_COOKIE['user_id'];
}else{
   $user_id = '';
}

?>
<!DOCTYPE html>
<html>
<head>
    <title>Announcement</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css" type="text/css"/>
    <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <?php include 'components/user_header.php'; ?>

    <div id="main" class="container">
        <table class="table table-bordered">
            <h2 align="center">Residents Notice</h2>
            <hr/>
            <tbody>
                <tr>
                    <td>
                        <div id="content">
                            <?php
                            include('components/connect.php');

                            // Use PDO to query the database
                            try {
                                $stmt = $conn->query("SELECT message FROM noticemsg");
                                while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                                    echo '<li>' . htmlspecialchars($row['message']) . '</li>';
                                }
                            } catch (PDOException $e) {
                                // Handle errors gracefully
                                echo "Error: " . $e->getMessage();
                            }
                            ?>
                            <div class="clearfix"></div>
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    <script src="js/script.js"></script>

</body>
</html>
