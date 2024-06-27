<?php
// Check if head_id cookie exists
$head_id = isset($_COOKIE['head_id']) ? $_COOKIE['head_id'] : '';

// Ensure that connect.php is included only once
if (!defined('CONNECT_INCLUDED')) {
    define('CONNECT_INCLUDED', true);
    include('../components/connect2.php');
}

// Check if the connection is established
if (!isset($conn)) {
    echo "Error: Database connection is not established.";
    exit; // Terminate the script if connection is not established
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Announcement</title>

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">

    <!-- custom css file link -->
    <link rel="stylesheet" href="../css/admin_style.css">

</head>

<body>
    <?php include '../components/admin_header.php'; ?>
    <div class="container">
        <div id="content" align="center">
            <form action="notifyexec.php" method="post">
                <h1>Announcement</h1>
                <hr />
                <p>Message</p>
                <textarea type="text" name="message" class="ed" rows="5"></textarea><br /><br />
                <input type="submit" class="btn btn-primary" value="Send">
            </form>

        </div>
        <hr />

        <div class="message-log">
            <h2 align="center">Message Log</h2>
            <hr />
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Residents</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    // Fetch all rows from noticemsg table specifically for the table
                    $stmt = $conn->query("SELECT * FROM noticemsg");
                    if ($stmt) {
                        // Fetch and display rows
                        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                            echo '<tr><td>' . htmlspecialchars($row['message']) . '</td></tr>';
                        }
                    }
                    ?>
                </tbody>
            </table>
        </div>
    </div>
    <script src="../js/script.js"></script>

</body>

</html>
