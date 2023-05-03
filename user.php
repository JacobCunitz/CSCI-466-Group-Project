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
        .button {
            position: fixed;
            top: 10;
            right: 10;
            display: inline-block;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            text-align: center;
            text-decoration: none;
            font-size: 16px;
            border-radius: 4px;
        }
    </style>
    <body>
    <?php

    //sign out button
    session_start();
   

    echo '<h2><a href="login.php" class="button">Sign Out</a></h2>';

    //db connection
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

    // Check if a search term has been entered
    $searchTerm = isset($_GET['search']) ? $_GET['search'] : '';

    // Construct the SQL query based on the sorting option and search term
    $sql = "SELECT Song.*, Contributor.Name AS Artist FROM Song LEFT JOIN SongContribution ON Song.SongID = SongContribution.SongID LEFT JOIN Contributor ON SongContribution.ContributorID = Contributor.ContributorID";
    if (!empty($searchTerm)) {
        $sql .= " WHERE Song.Title LIKE '%$searchTerm%' OR Song.Description LIKE '%$searchTerm%' OR Contributor.Name LIKE '%$searchTerm%'";
    }
    if ($sortOption == 'title') {
        $sql .= " ORDER BY Song.Title";
    } elseif ($sortOption == 'description') {
        $sql .= " ORDER BY Song.Description";
    } elseif ($sortOption == 'artist') {
        $sql .= " ORDER BY Contributor.Name";
    }

    // Execute the query
    $stmt = $pdo->query($sql);

    // Check if the query was successful
    if ($stmt->rowCount() > 0) {
        // Output the search form
        echo '<form method="get">';
        echo '<label for="search">Search:</label>';
        echo '<input type="text" id="search" name="search" value="' . htmlentities($searchTerm) . '">';
        echo '<select id="sort" name="sort">';
        echo '<option value="">ID</option>';
        echo '<option value="title" ' . ($sortOption == 'title' ? 'selected' : '') . '>Title</option>';
        echo '<option value="description" ' . ($sortOption == 'description' ? 'selected' : '') . '>Description</option>';
        echo '<option value="artist" ' . ($sortOption == 'artist' ? 'selected' : '') . '>Artist</option>';
        echo '</select>';
        echo '<input type="submit" value="Filter">';
        echo '</form>';

        // Output the table header
        echo "<table><tr><th>SongID</th><th>Title</th><th>Description</th><th>URL</th><th>Artist</th><th>FREE</th><th>Premium($1.99)</th></tr>";

        // Output the table rows
        while($row = $stmt->fetch()) {
            $_SESSION['SongID'] = $row['SongID'];

            echo "<tr><td>".$row["SongID"]."</td><td>".$row["Title"]."</td><td>".$row["Description"]."</td><td>".$row["FileURL"]."</td><td>".$row["Artist"]."</td>";
            

            echo "<td><a href='add_song.php?add=0&songid=".$row["SongID"]."'>Add</a></td>";
            echo "<td><a href='add_song.php?add=1&songid=".$row["SongID"]."'>Add</a></td></tr>";
            
            }

        echo "</table>";
    } else {
        echo "No songs found in the database.";
    }
    echo "<br/>";



    ?>
    </body>
</html>
