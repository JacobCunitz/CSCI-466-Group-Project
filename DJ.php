<html><head>DJ PAGE</head>

        <title>DJ HomePage</title>
        <style>
        table, th, td {
            border: 1px solid black;
            border-collapse: collapse;
            padding: 5px;
        }
        th {
            background-color: #ccc;
            font-weight: bold;
        }
        header {
                        font-size: 24px;
                        font-weight: bold;
                }
    </style>
<?php
   $username='';
   $password='';
   try{
       $dsn = "mysql:host=courses;dbname= ";
       $pdo = new PDO($dsn, $username, $password);
       $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

   } catch (PDOException $e) {
       echo "Connection to database failed: " . $e->getMessage();
   }

   echo"</br> </br>";
   echo"Priority Queue";
?>
<table>
<thead>
   <tr>
        <th>Title</th>
        <th>Performer</th>
        <th>UserName</th>
        <th>URL</th>
   </tr>
</thead>

<?php
   $rs = $pdo->query("SELECT Title, Role, Name, FileURL FROM Queue, User, Song, SongContribution WHERE PremiumUser = 1 AND Queue.SongID = Song.SongID AND User.UserID = Queue.UserID AND Queue.SongID = SongContribution.SongID AND SongContribution.Role = 'artist' ORDER BY AmountPaid DESC;");
   $rows = $rs->fetchAll(PDO::FETCH_ASSOC);

   foreach($rows as $row)
   {
      echo"<tr>";
      echo"<td>" . $row["Title"] . "</td>";
      echo"<td>" . $row["Role"] . "</td>";
      echo"<td>" . $row["Name"] . "</td>";
      echo"<td>" . $row["FileURL"] . "</td>";
      echo"</tr>";

   }

?>

</table>



<?php
   echo"</br> </br>";
   echo"Non-Priority Queue";

?>

<table>
<thead>
   <tr>
        <th>Title</th>
        <th>Performer</th>
        <th>UserName</th>
        <th>URL</th>
   </tr>
</thead>

<?php
   $rs = $pdo->query("SELECT Title, Role, Name, FileURL FROM Queue, User, Song, SongContribution WHERE PremiumUser = 0 AND Queue.SongID = Song.SongID AND User.UserID = Queue.UserID AND Queue.SongID = SongContribution.SongID AND SongContribution.Role = 'artist' ORDER BY processing_time ASC;");
   $rows = $rs->fetchAll(PDO::FETCH_ASSOC);

   foreach($rows as $row)
   {
      echo"<tr>";
      echo"<td>" . $row["Title"] . "</td>";
      echo"<td>" . $row["Role"] . "</td>";
      echo"<td>" . $row["Name"] . "</td>";
      echo"<td>" . $row["FileURL"] . "</td>";
      echo"</tr>";

   }
?>
</table>

<form method="POST">
    Select Queue to play next:
    <input type="radio" name="radio1" value="Priority"/>Priority Queue
    <input type="radio" name="radio1" value="Non-Priority"/>Non-Priority Queue
    <input type="submit" name="submit"/>
    <input type="reset" value="reset"/>

</form>
<?php
   $q=$_POST['radio1'];

   if($q == "Non-Priority")
   {
       $update = $pdo->prepare("DELETE FROM Queue WHERE PremiumUser=0 ORDER BY processing_time ASC >
       $update->execute();
   }
   else if($q == "Priority")
   {
       $update = $pdo->prepare("DELETE FROM Queue WHERE PremiumUser=1 ORDER BY AmountPaid DESC LIMI>
       $update->execute();
   }


?>


</html>

