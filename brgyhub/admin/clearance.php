<?php
session_start();

include("../components/connect.php");
if(isset($_COOKIE['head_id'])){
   $head_id = $_COOKIE['head_id'];
}else{
   $head_id = '';
}

// Retrieve users from the database
$sql = "SELECT * FROM clearance";
$result = $conn->query($sql);

// Close the database connection by setting it to null
// Comment out or remove this line, as it's closing the connection before executing the query
// $conn = null;
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Clearance</title>
    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="../css/userstyle.css">
    <link rel="stylesheet" href="../css/admin_style.css">
</head>

<body>
    <?php include '../components/admin_header.php'; ?>


    <div id="content">
        <h2>Clearance Dashboard</h2>

        <div class="table-container">
            <table>
                <thead>
                    <tr>
                        <th>Fullname</th>
                        <th>Age</th>
                        <th>Clearance</th>
                        <!-- Add more table headings if needed -->
                    </tr>
                </thead>
                <tbody>
                    <?php
                    if ($result->rowCount() > 0) {
                        while ($row = $result->fetch(PDO::FETCH_ASSOC)) {
                            echo "<tr>";
                            echo "<td>" . $row["fullname"] . "</td>";
                            echo "<td>" . $row["age"] . "</td>";
                            echo "<td>" . $row["clearance"] . "</td>";
                            // Add more table cells if needed
                            echo "</tr>";
                        }
                    } else {
                        echo "<tr><td colspan='3'>No users found</td></tr>";
                    }
                    ?>
                </tbody>
            </table>
        </div>
    </div>

</body>
<script src="js/script.js"></script>
</html>
