<?php
session_start();
$UserID = $_SESSION['UserID'];
$SongID = $_GET['songid'];

// Connect to the database
$db_host = "localhost";
$db_user = "root";
$db_pass = "";
$db_name = "466GroupProj";
$conn = mysqli_connect($db_host, $db_user, $db_pass, $db_name);

//add song to queue
if (isset($_GET['add'])) {
    $PremiumUser = $_GET['add'];
    $AmountPaid = $PremiumUser == 0 ? 0.00 : 1.99;

    $stmt = $conn->prepare("INSERT INTO queue (UserID, SongID, processing_time, PremiumUser, AmountPaid) VALUES (?, ?, NOW(), ?, ?)");
    $stmt->bind_param("iiid", $UserID, $SongID, $PremiumUser, $AmountPaid);
    $stmt->execute();

    header("Location: user.php");
    exit;
}
?>
