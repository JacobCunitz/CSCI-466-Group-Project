<html>
    <head><title>USER PAGE</title></head>
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
    <body>
    <?php
    session_start();

    try {
        $dsn = "mysql:host=localhost;dbname=466GroupProj";
        $username = "root";
        //$password = '';
        $pdo = new PDO($dsn, $username);
    } catch (PDOException $e) {
        echo "Connection to database failed: " . $e->getMessage();
    } 
    
    // Check if a sorting option has been selected
    $sortOption = isset($_GET['sort']) ? $_GET['sort'] : '';
        
    // Construct the SQL query based on the sorting option
    $sql = "SELECT * FROM Song";
    if ($sortOption == 'title') {
        $sql .= " ORDER BY Title";
    } elseif ($sortOption == 'description') {
        $sql .= " ORDER BY Description";
    }
    
    // Execute the query
    $stmt = $pdo->query($sql);
    
    // Check if the query was successful
    if ($stmt->rowCount() > 0) {
        // sorting form
        echo '<form method="get">';
        echo '<select id="sort" name="sort">';
        echo '<option value="">ID</option>';
        echo '<option value="title" ' . ($sortOption == 'title' ? 'selected' : '') . '>Title</option>';
        echo '<option value="description" ' . ($sortOption == 'description' ? 'selected' : '') . '>Description</option>';
        echo '</select>';
        echo '<input type="submit" value="Sort">';
        echo '</form>';
        
        //table header
        echo "<table><tr><th>SongID</th><th>Title</th><th>Description</th><th>FileURL</th><th>FREE</th><th>Premium($1.99)</th></tr>";

        // Output rows
        while($row = $stmt->fetch()) {
            $_SESSION['SongID'] = $row['SongID'];

            echo "<tr><td>".$row["SongID"]."</td><td>".$row["Title"]."</td><td>".$row["Description"]."</td><td>".$row["FileURL"]."</td>";
            echo "<td><a href='add_song.php?add=0'>Add</a></td>";
            echo "<td><a href='add_song.php?add=1'>Add</a></td></tr>";
        }
        

        echo "</table>";
    } else {
        echo "No songs found in the database.";
    }
    echo "<br/>";
    echo "<br/>";

    echo '<html><head></head><body><p>
            Pick a Title to search for
            </p>
          <form method="GET">
          <input type="text" name="Search" value="Search"/> <br/>
          <input type="submit" name="submit" value="SUBMIT" />
          </form>';

     $rs1 = $pdo->prepare("SELECT DISTINCT SongID, Title, FileURL
                                    FROM Song WHERE Title = :cvalue ;");
     $rs1->execute(array(":cvalue" => $_GET['Search']));
     if(!$rs1) {echo "error in query"; die(); }

     $R_out = $rs1->fetchALL(PDO::FETCH_ASSOC);
     echo "<table border=1 cellspacing=1>";
     foreach ($R_out as $res)  {
        echo "<tr>";
        foreach ($res as $row)  {
            echo "<td>$row</td>";
          }
        echo "<tr>";
      }
     echo "</table>";    
    ?>
    </body>
</html>

