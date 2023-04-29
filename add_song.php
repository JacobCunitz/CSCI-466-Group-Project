<?php
session_start();
$UserID = $_SESSION['UserID'];
$SongID = $_SESSION['SongID'];

// Connect to the database
$db_host = "localhost";
$db_user = "root";
$db_pass = "";
$db_name = "466GroupProj";
$conn = mysqli_connect($db_host, $db_user, $db_pass, $db_name);

if (isset($_GET['add'])) {
    $PremiumUser = $_GET['add'];

    $stmt = $conn->prepare("INSERT INTO queue (UserID, SongID, processing_time, PremiumUser, AmountPaid) VALUES (?, ?, NOW(), ?, 1.99)");
    $stmt->bind_param("iii", $UserID, $SongID, $PremiumUser);
    $stmt->execute();
    
    header("Location: user.php");
    exit;
}
?>
