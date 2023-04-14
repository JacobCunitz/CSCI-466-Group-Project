<!-- initialize PDO-->
<?php try {
    $dsn = "mysql:host=localhost;dbname=466GroupProj";
    $username = "root";
    //$password = '';
    $pdo = new PDO($dsn, $username);
} catch (PDOException $e) {
    echo "Connection to database failed: " . $e->getMessage();
} ?>


<!DOCTYPE html>
<html>
<head>
	<title>Database Tables</title>
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
</head>

<body>
	<header>Contributors</header>
	<table>
		<thead>
			<tr>
				<th>ID</th>
				<th>Name</th>
			</tr>
		</thead>
		<tbody>
			<?php
			// fetch all contributors
			$sql = "SELECT * FROM Contributor";
			$stmt = $pdo->prepare($sql);
			$stmt->execute();

			// display contributors in a table
			while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
				echo "<tr>";
				echo "<td>" . $row["ContributorID"] . "</td>";
				echo "<td>" . $row["Name"] . "</td>";
				echo "</tr>";
			}
			?>
		</tbody>
	</table>

	<header>Song Table</header>
	<table>
		<thead>
			<tr>
				<th>Song ID</th>
				<th>Title</th>
				<th>Description</th>
				<th>File URL</th>
			</tr>
		</thead>
		<tbody>
			<?php
			// fetch all songs
			$sql = "SELECT * FROM Song";
			$stmt = $pdo->prepare($sql);
			$stmt->execute();

			// display songs in a table
			while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
				echo "<tr>";
				echo "<td>" . $row["SongID"] . "</td>";
				echo "<td>" . $row["Title"] . "</td>";
				echo "<td>" . $row["Description"] . "</td>";
				echo "<td>" . $row["FileURL"] . "</td>";
				echo "</tr>";
			}
			?>
		</tbody>
	</table>

	<header>Users Table</header>
	<table>
		<thead>
			<tr>
				<th>User ID</th>
				<th>Name</th>
			</tr>
		</thead>
		<tbody>
			<?php
			// fetch all users
			$sql = "SELECT * FROM User";
			$stmt = $pdo->prepare($sql);
			$stmt->execute();

			// display users in a table
			while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
				echo "<tr>";
				echo "<td>" . $row["UserID"] . "</td>";
				echo "<td>" . $row["Name"] . "</td>";
				echo "</tr>";
			}
			?>
		</tbody>
	</table>

	<header>Song Contribution Table</header>
	<table>
		<thead>
			<tr>
				<th>ContributorID</th>
				<th>SongID</th>
				<th>Role</th>
			</tr>
		</thead>
		<tbody>
			<?php
			// fetch all song contributions
			$sql = "SELECT * FROM SongContribution";
			$stmt = $pdo->prepare($sql);
			$stmt->execute();

			// display song contributions in a table
			while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
				echo "<tr>";
				echo "<td>" . $row["ContributorID"] . "</td>";
				echo "<td>" . $row["SongID"] . "</td>";
				echo "<td>" . $row["Role"] . "</td>";
				echo "</tr>";
			}
			?>
		</tbody>
	</table>

	<header>Queue Table</header>
	<table>
		<thead>
			<tr>
				<th>UserID</th>
				<th>SongID</th>
				<th>processing_time</th>
				<th>PremiumUser</th>
				<th>AmountPaid</th>
			</tr>
		</thead>
		<tbody>
			<?php
			// fetch all queue entries
			$sql = "SELECT * FROM Queue";
			$stmt = $pdo->prepare($sql);
			$stmt->execute();

			// display queue entries in a table
			while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
				echo "<tr>";
				echo "<td>" . $row["UserID"] . "</td>";
				echo "<td>" . $row["SongID"] . "</td>";
				echo "<td>" . $row["processing_time"] . "</td>";
				echo "<td>" . ($row["PremiumUser"] ? "Yes" : "No") . "</td>";
				echo "<td>" . $row["AmountPaid"] . "</td>";
				echo "</tr>";
			}
			?>
		</tbody>
	</table>
</body>
</html>
