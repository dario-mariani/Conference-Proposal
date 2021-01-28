<?php
  include_once 'header.php';
  if (!isset($_SESSION["useruid"])) {
    header("location: index.php");
    die();
  }
?>

<h2>Display proposals by their title.</h2>
<p1>Search for a proposal in the database by entering it's title.</p1>
<p2>If you don't know the full title try typing only parts of it.</p2>
<form action="includes/proposalResults.inc.php" method="POST">
<input type="text" name="title" placeholder="Title">
<select name="year">
  <?php
  $sql = "SELECT DISTINCT proposals.Year
  FROM proposals;";

  $result = mysqli_query($conn, $sql);
  $resultCheck = mysqli_num_rows($result);
  if($resultCheck > 0)
  {
    echo "<option value='Any'>Any</option>";
    while ($row = mysqli_fetch_assoc($result))
    {
      echo "<option value='" . $row['Year'] . "'>" . $row['Year'] . "</option>";
    }
  }
   ?>
</select>
<button type="submit" name="submit">Run Query</button>
</form>

</body>
</html>
