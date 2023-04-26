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
   $rs = $pdo->query("SELECT Title, Role, UserName, FileURL FROM Queue, User, Song, SongContribution WHE>
   $rows = $rs->fetchAll(PDO::FETCH_ASSOC);

   foreach($rows as $row)
   {
      echo"<tr>";
      echo"<td>" . $row["Title"] . "</td>";
      echo"<td>" . $row["Role"] . "</td>";
      echo"<td>" . $row["UserName"] . "</td>";
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
   $rs = $pdo->query("SELECT Title, Role, UserName, FileURL FROM Queue, User, Song, SongContribution WHE>
   $rows = $rs->fetchAll(PDO::FETCH_ASSOC);

   foreach($rows as $row)
   {
      echo"<tr>";
      echo"<td>" . $row["Title"] . "</td>";
      echo"<td>" . $row["Role"] . "</td>";
      echo"<td>" . $row["UserName"] . "</td>";
      echo"<td>" . $row["FileURL"] . "</td>";
      echo"</tr>";

   }
?>
</table>

<form method="POST">
    Select Queue to play next:
    <select size=2 name="Queuetype">
       <option value="PR">PriorityQueue</option>
       <option value="NP">Non-PriorityQueue</option>
    </select>
    <input type="submit" name="submit"/>

</form>
<?php
   $q=$_POST['Queuetype'];

   if($q == "NP")
   {
       $update = $pdo->prepare("DELETE FROM Queue WHERE PremiumUser=0 LIMIT 1;");
       $update->execute();
   }
  else if($q == "PR")
   {
       $update = $pdo->prepare("DELETE FROM Queue WHERE PremiumUser=1 LIMIT 1;");
       $update->execute();
   }


?>

</html>

