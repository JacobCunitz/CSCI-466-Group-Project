<?php try {
   $dsn = "myspl:host=localhost;dbname=466GroupProj";
   $username = "root";
   $pdo = new PDO($dsn, $username);
} catch (PDOException $e) {
	echo "Connection to database failed: " . $e->getMessage();
}
?>

<body>
      <table border=1 cellspacing=1>
	   <thead>
		  <tr>
                      <th> Name </th>
                      <th> Song </th>
                  </tr>
	   </thead>
	   <tbody>
                 <?php
$sql = "SELECT Name, Title, Description FROM Song, User, Queue WHERE Queue.PremiumUser = 1 AND Song.SongID = Queue.SongID AND User.UserID = Queue.UserID;";
$stmt = $sql->pdo->prepare($sql);
$stmt->execute();

while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
	echo "<tr>";
	echo "<td>" . $row["Name"] . "</td>";
	echo "<td>" . $row["Song"] . "</td>";
	echo "</tr>";
}
                 ?>
           </tbody>
      </table>
</body>
