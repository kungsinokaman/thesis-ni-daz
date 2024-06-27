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
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User View</title>
    <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">
   <link rel="stylesheet" href="user.css">
    <style>
        .gallery {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 20px;
        }
        .gallery img {
            max-width: 100%;
            height: auto;
        }
    </style>
</head>
<body>
    <?php include 'components/user_header.php'; ?>

    <h1>User View</h1>
    <div class="gallery">
        <?php
// Establish database connection
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "brgyhub";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// SQL query to fetch data
$sql = "SELECT * FROM images";
$result = $conn->query($sql);

// Check if the query was successful
if ($result === false) {
    die("Error executing the query: " . $conn->error);
}

// Check if there are any results
if ($result->num_rows > 0) {
    // Output data of each row
    while($row = $result->fetch_assoc()) {
        echo "<div>";
        echo "<img src='" . $row["image_path"] . "' alt=''>";
        echo "<p>" . $row["description"] . "</p>";
        echo "</div>";
    }
} else {
    echo "0 results";
}

// Close database connection
$conn->close();
?>
<script src="js/script.js"></script>

    </div>
</body>
</html>
