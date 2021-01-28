<?php
  include_once 'header.php';
  if (!isset($_SESSION["useruid"])) {
    header("location: index.php");
    die();
  }
?>

<h2>Display proposals by presenters.</h2>
<p1>Enter the presenters first and/or last name.</p1>
<p2>If you don't know their full name try typing only parts of it.</p2>
<form action="includes/presenterResults.inc.php" method="POST">
<input type="text" name="first" placeholder="First Name">
<br>
<input type="text" name="last" placeholder="Last Name">
<br>
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
