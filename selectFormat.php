<?php
  include_once 'header.php';
  if (!isset($_SESSION["useruid"])) {
    header("location: index.php");
    die();
  }
?>

<h2>Search for a proposal based on their format.</h2>

<form action="includes/formatResults.inc.php" method="POST">

<select name="format">
  <?php
  $sql = "SELECT formats.FormatName
  FROM formats;";

  $result = mysqli_query($conn, $sql);
  $resultCheck = mysqli_num_rows($result);
  if($resultCheck > 0)
  {
    while ($row = mysqli_fetch_assoc($result))
    {
      echo "<option value='" . $row['FormatName'] . "'>" . $row['FormatName'] . "</option>";
    }
  }
   ?>
</select>

<input type="text" name="score" placeholder="Min Score">

<select name="year">
  <?php
  $sql = "SELECT DISTINCT proposals.Year
  FROM proposals;";

  $result = mysqli_query($conn, $sql);
  $resultCheck = mysqli_num_rows($result);
  if($resultCheck > 0)
  {
    echo "<option value='Any'>Any Year</option>";
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
