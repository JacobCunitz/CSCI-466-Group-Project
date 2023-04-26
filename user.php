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

    try {
        $dsn = "mysql:host=localhost;dbname=466GroupProj";
        $username = "root";
        //$password = '';
        $pdo = new PDO($dsn, $username, $password);
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
        echo "<table><tr><th>SongID</th><th>Title</th><th>Description</th><th>FileURL</th></tr>";
        
        // Output rows
        while($row = $stmt->fetch()) {
            echo "<tr><td>".$row["SongID"]."</td><td>".$row["Title"]."</td><td>".$row["Description"]."</td><td>".$row["FileURL"]."</td></tr>";
        }

        echo "</table>";
    } else {
        echo "No songs found in the database.";
    }
    ?>
    </body>
</html>
